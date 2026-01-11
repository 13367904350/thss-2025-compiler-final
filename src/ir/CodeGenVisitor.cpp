#include "ir/CodeGenVisitor.h"
#include "ir/Constant.h"
#include "ir/Function.h"
#include "ir/BasicBlock.h"

using namespace antlr4;

// Declare SysY library functions
void CodeGenVisitor::declareLibraryFunctions() {
    // int getint()
    {
        std::vector<Type *> params;
        FunctionType *ft = FunctionType::get(Type::getInt32Ty(), params);
        Function *f = Function::create(ft, "getint", module_);
        addFunction("getint", f);
    }
    // int getch()
    {
        std::vector<Type *> params;
        FunctionType *ft = FunctionType::get(Type::getInt32Ty(), params);
        Function *f = Function::create(ft, "getch", module_);
        addFunction("getch", f);
    }
    // int getarray(int a[])
    {
        std::vector<Type *> params = {Type::getInt32PtrTy()};
        FunctionType *ft = FunctionType::get(Type::getInt32Ty(), params);
        Function *f = Function::create(ft, "getarray", module_);
        addFunction("getarray", f);
    }
    // void putint(int)
    {
        std::vector<Type *> params = {Type::getInt32Ty()};
        FunctionType *ft = FunctionType::get(Type::getVoidTy(), params);
        Function *f = Function::create(ft, "putint", module_);
        addFunction("putint", f);
    }
    // void putch(int)
    {
        std::vector<Type *> params = {Type::getInt32Ty()};
        FunctionType *ft = FunctionType::get(Type::getVoidTy(), params);
        Function *f = Function::create(ft, "putch", module_);
        addFunction("putch", f);
    }
    // void putarray(int n, int a[])
    {
        std::vector<Type *> params = {Type::getInt32Ty(), Type::getInt32PtrTy()};
        FunctionType *ft = FunctionType::get(Type::getVoidTy(), params);
        Function *f = Function::create(ft, "putarray", module_);
        addFunction("putarray", f);
    }
}

std::any CodeGenVisitor::visitFuncDef(SysYParser::FuncDefContext *ctx) {
    // Reset counters for each function
    temp_count_ = 0;
    bb_count_ = 0;
    var_name_counter_.clear();

    // Determine function name and return type
    std::string name = ctx->IDENT()->getText();
    Type *retTy = Type::getInt32Ty();
    if (ctx->funcType()->VOID()) retTy = Type::getVoidTy();

    // Parse function parameters
    std::vector<Type *> paramTypes;
    std::vector<std::string> paramNames;

    if (ctx->funcFParams()) {
        for (auto paramCtx : ctx->funcFParams()->funcFParam()) {
            std::string paramName = paramCtx->IDENT()->getText();
            paramNames.push_back(paramName);

            // Check if it's an array parameter (has LBRACK)
            if (!paramCtx->LBRACK().empty()) {
                // Array parameter: treat as pointer
                paramTypes.push_back(Type::getInt32PtrTy());
            } else {
                // Regular int parameter
                paramTypes.push_back(Type::getInt32Ty());
            }
        }
    }

    // Create function type and function
    FunctionType *ft = FunctionType::get(retTy, paramTypes);
    Function *f = Function::create(ft, name, module_);

    // Register function in function table
    addFunction(name, f);

    current_function_ = f;

    // Create entry block
    BasicBlock *entry = BasicBlock::create("entry", f);
    builder_.setInsertPoint(entry);

    // Push new scope for function parameters
    pushScope();

    // Set argument names and add to symbol table
    auto &args = f->getArgs();
    for (size_t i = 0; i < args.size(); ++i) {
        args[i]->setName(paramNames[i]);
        
        // For non-array parameters, create alloca and store the argument
        if (paramTypes[i]->isIntegerTy()) {
            std::string irName = genVarName(paramNames[i] + ".addr");
            AllocaInst *alloca = builder_.createAlloca(Type::getInt32Ty());
            alloca->setName(irName);
            builder_.createStore(args[i], alloca);
            addSymbol(paramNames[i], alloca);
        } else {
            // For array/pointer parameters, use the argument directly
            addSymbol(paramNames[i], args[i]);
        }
    }

    // Visit function body (block will handle its own scope)
    visitChildren(ctx->block());

    // Pop function scope
    popScope();

    // Ensure function has a terminator
    BasicBlock *currentBB = builder_.getInsertPoint();
    if (currentBB) {
        auto &insts = currentBB->getInstructions();
        if (insts.empty() || !insts.back()->isTerminator()) {
            if (retTy->isIntegerTy()) {
                ConstantInt *zero = ConstantInt::get(0);
                builder_.createRet(zero);
            } else {
                builder_.createRetVoid();
            }
        }
    }

    return nullptr;
}

std::any CodeGenVisitor::visitBlock(SysYParser::BlockContext *ctx) {
    // Push a new scope for the block (nested blocks get their own scope)
    pushScope();
    auto result = visitChildren(ctx);
    popScope();
    return result;
}

// ==================== Variable Declaration ====================

std::any CodeGenVisitor::visitVarDecl(SysYParser::VarDeclContext *ctx) {
    // varDecl : bType varDef (COMMA varDef)* SEMICOLON
    for (auto varDefCtx : ctx->varDef()) {
        visit(varDefCtx);
    }
    return nullptr;
}

std::any CodeGenVisitor::visitVarDef(SysYParser::VarDefContext *ctx) {
    // varDef : IDENT (LBRACK constExp RBRACK)* (ASSIGN initVal)?
    std::string varName = ctx->IDENT()->getText();
    
    // Check if it's an array (has LBRACK)
    if (!ctx->LBRACK().empty()) {
        // Array variable - will be implemented in array translation phase
        // For now, just create a simple int variable
        return nullptr;
    }
    
    if (isGlobalScope()) {
        // Global variable
        int initVal = 0;
        if (ctx->initVal() && ctx->initVal()->exp()) {
            // Global variable initialization must be constant expression
            initVal = evalConstExp(ctx->initVal()->exp()->addExp());
        }
        ConstantInt *init = ConstantInt::get(initVal);
        GlobalVariable *gv = new GlobalVariable(varName, module_, Type::getInt32Ty(), false, init);
        addSymbol(varName, gv);
    } else {
        // Local variable - use unique IR name
        std::string irName = genVarName(varName);
        AllocaInst *alloca = builder_.createAlloca(Type::getInt32Ty());
        alloca->setName(irName);
        addSymbol(varName, alloca);
        
        // If has initialization
        if (ctx->initVal()) {
            // initVal : exp | LBRACE (initVal (COMMA initVal)*)? RBRACE
            auto initValCtx = ctx->initVal();
            if (initValCtx->exp()) {
                auto val_any = visit(initValCtx->exp());
                Value *val = std::any_cast<Value *>(val_any);
                builder_.createStore(val, alloca);
            }
        }
    }
    
    return nullptr;
}

std::any CodeGenVisitor::visitConstDecl(SysYParser::ConstDeclContext *ctx) {
    // constDecl : CONST bType constDef (COMMA constDef)* SEMICOLON
    for (auto constDefCtx : ctx->constDef()) {
        visit(constDefCtx);
    }
    return nullptr;
}

std::any CodeGenVisitor::visitConstDef(SysYParser::ConstDefContext *ctx) {
    // constDef : IDENT (LBRACK constExp RBRACK)* ASSIGN constInitVal
    std::string varName = ctx->IDENT()->getText();
    
    // Check if it's an array
    if (!ctx->LBRACK().empty()) {
        // Const array - will be implemented in array translation phase
        return nullptr;
    }
    
    // Simple const int - evaluate at compile time
    auto constInitValCtx = ctx->constInitVal();
    if (constInitValCtx->constExp()) {
        int val = evalConstExp(constInitValCtx->constExp()->addExp());
        addConst(varName, val);
        
        if (isGlobalScope()) {
            // Global const variable
            ConstantInt *init = ConstantInt::get(val);
            GlobalVariable *gv = new GlobalVariable(varName, module_, Type::getInt32Ty(), true, init);
            addSymbol(varName, gv);
        } else {
            // Local const variable - create alloca with unique IR name
            std::string irName = genVarName(varName);
            AllocaInst *alloca = builder_.createAlloca(Type::getInt32Ty());
            alloca->setName(irName);
            addSymbol(varName, alloca);
            ConstantInt *constVal = ConstantInt::get(val);
            builder_.createStore(constVal, alloca);
        }
    }
    
    return nullptr;
}

std::any CodeGenVisitor::visitConstExp(SysYParser::ConstExpContext *ctx) {
    // constExp : addExp
    int val = evalConstExp(ctx->addExp());
    return ConstantInt::get(val);
}

// ==================== Assignment Statement ====================

std::any CodeGenVisitor::visitAssignStmt(SysYParser::AssignStmtContext *ctx) {
    // stmt : lVal ASSIGN exp SEMICOLON
    std::string varName = ctx->lVal()->IDENT()->getText();
    Value *addr = lookupSymbol(varName);
    
    if (!addr) {
        std::cerr << "Error: Undefined variable '" << varName << "'" << std::endl;
        return nullptr;
    }
    
    // Evaluate the expression
    auto val_any = visit(ctx->exp());
    Value *val = std::any_cast<Value *>(val_any);
    
    // Check for array indexing
    if (!ctx->lVal()->LBRACK().empty()) {
        // Array assignment - will be implemented in array translation phase
        return nullptr;
    }
    
    // Simple variable assignment
    builder_.createStore(val, addr);
    return nullptr;
}

// ==================== Return Statement ====================

std::any CodeGenVisitor::visitReturnStmt(SysYParser::ReturnStmtContext *ctx) {
    if (ctx->exp()) {
        auto val_any = visit(ctx->exp());
        Value *val = std::any_cast<Value *>(val_any);
        builder_.createRet(val);
    } else {
        builder_.createRetVoid();
    }
    return nullptr;
}

// ==================== Control Flow Statements ====================

std::any CodeGenVisitor::visitIfStmt(SysYParser::IfStmtContext *ctx) {
    // IF LPAREN cond RPAREN stmt (ELSE stmt)?
    bool hasElse = ctx->ELSE() != nullptr;
    
    // Create basic blocks
    BasicBlock *thenBB = BasicBlock::create(genBBName("if.then"), current_function_);
    BasicBlock *elseBB = hasElse ? BasicBlock::create(genBBName("if.else"), current_function_) : nullptr;
    BasicBlock *endBB = BasicBlock::create(genBBName("if.end"), current_function_);
    
    // Evaluate condition
    auto cond_any = visit(ctx->cond());
    Value *condVal = std::any_cast<Value *>(cond_any);
    
    // Convert to i1 if necessary (non-zero = true)
    // Check if it's i32 (not i1) by checking bit width
    if (condVal->getType()->isIntegerTy()) {
        IntegerType *intTy = static_cast<IntegerType *>(condVal->getType());
        if (intTy->getBitWidth() != 1) {
            ConstantInt *zero = ConstantInt::get(0);
            ICmpInst *cmp = builder_.createICmpNE(condVal, zero);
            cmp->setName(genName());
            condVal = cmp;
        }
    }
    
    // Create conditional branch
    if (hasElse) {
        builder_.createCondBr(condVal, thenBB, elseBB);
    } else {
        builder_.createCondBr(condVal, thenBB, endBB);
    }
    
    // Generate code for then block
    builder_.setInsertPoint(thenBB);
    visit(ctx->stmt(0));
    
    // If current block doesn't have terminator, branch to end
    BasicBlock *currentBB = builder_.getInsertPoint();
    if (currentBB) {
        auto &insts = currentBB->getInstructions();
        if (insts.empty() || !insts.back()->isTerminator()) {
            builder_.createBr(endBB);
        }
    }
    
    // Generate code for else block if exists
    if (hasElse) {
        builder_.setInsertPoint(elseBB);
        visit(ctx->stmt(1));
        
        currentBB = builder_.getInsertPoint();
        if (currentBB) {
            auto &insts = currentBB->getInstructions();
            if (insts.empty() || !insts.back()->isTerminator()) {
                builder_.createBr(endBB);
            }
        }
    }
    
    // Continue at end block
    builder_.setInsertPoint(endBB);
    return nullptr;
}

std::any CodeGenVisitor::visitWhileStmt(SysYParser::WhileStmtContext *ctx) {
    // WHILE LPAREN cond RPAREN stmt
    
    // Create basic blocks
    BasicBlock *condBB = BasicBlock::create(genBBName("while.cond"), current_function_);
    BasicBlock *bodyBB = BasicBlock::create(genBBName("while.body"), current_function_);
    BasicBlock *endBB = BasicBlock::create(genBBName("while.end"), current_function_);
    
    // Branch to condition block
    builder_.createBr(condBB);
    
    // Evaluate condition
    builder_.setInsertPoint(condBB);
    auto cond_any = visit(ctx->cond());
    Value *condVal = std::any_cast<Value *>(cond_any);
    
    // Convert to i1 if necessary
    if (condVal->getType()->isIntegerTy()) {
        IntegerType *intTy = static_cast<IntegerType *>(condVal->getType());
        if (intTy->getBitWidth() != 1) {
            ConstantInt *zero = ConstantInt::get(0);
            ICmpInst *cmp = builder_.createICmpNE(condVal, zero);
            cmp->setName(genName());
            condVal = cmp;
        }
    }
    
    // Conditional branch
    builder_.createCondBr(condVal, bodyBB, endBB);
    
    // Push loop context for break/continue
    loop_stack_.push_back({condBB, endBB});
    
    // Generate code for loop body
    builder_.setInsertPoint(bodyBB);
    visit(ctx->stmt());
    
    // Pop loop context
    loop_stack_.pop_back();
    
    // If current block doesn't have terminator, branch back to condition
    BasicBlock *currentBB = builder_.getInsertPoint();
    if (currentBB) {
        auto &insts = currentBB->getInstructions();
        if (insts.empty() || !insts.back()->isTerminator()) {
            builder_.createBr(condBB);
        }
    }
    
    // Continue at end block
    builder_.setInsertPoint(endBB);
    return nullptr;
}

std::any CodeGenVisitor::visitBreakStmt(SysYParser::BreakStmtContext *ctx) {
    if (loop_stack_.empty()) {
        std::cerr << "Error: break statement outside loop" << std::endl;
        return nullptr;
    }
    
    // Branch to loop exit block
    BasicBlock *exitBB = loop_stack_.back().second;
    builder_.createBr(exitBB);
    
    return nullptr;
}

std::any CodeGenVisitor::visitContinueStmt(SysYParser::ContinueStmtContext *ctx) {
    if (loop_stack_.empty()) {
        std::cerr << "Error: continue statement outside loop" << std::endl;
        return nullptr;
    }
    
    // Branch to loop condition block
    BasicBlock *condBB = loop_stack_.back().first;
    builder_.createBr(condBB);
    
    return nullptr;
}

// ==================== Condition Expressions ====================

std::any CodeGenVisitor::visitCond(SysYParser::CondContext *ctx) {
    // cond : lOrExp
    return visit(ctx->lOrExp());
}

std::any CodeGenVisitor::visitRelExp(SysYParser::RelExpContext *ctx) {
    // relExp : addExp | relExp (LT | GT | LE | GE) addExp
    if (ctx->relExp()) {
        auto left_any = visit(ctx->relExp());
        auto right_any = visit(ctx->addExp());
        Value *lhs = std::any_cast<Value *>(left_any);
        Value *rhs = std::any_cast<Value *>(right_any);
        
        ICmpInst *cmp = nullptr;
        if (ctx->LT()) {
            cmp = builder_.createICmpLT(lhs, rhs);
        } else if (ctx->GT()) {
            cmp = builder_.createICmpGT(lhs, rhs);
        } else if (ctx->LE()) {
            cmp = builder_.createICmpLE(lhs, rhs);
        } else if (ctx->GE()) {
            cmp = builder_.createICmpGE(lhs, rhs);
        }
        cmp->setName(genName());
        
        // Extend i1 to i32 for consistency
        ZExtInst *zext = builder_.createZExt(cmp, Type::getInt32Ty());
        zext->setName(genName());
        return static_cast<Value *>(zext);
    }
    return visit(ctx->addExp());
}

std::any CodeGenVisitor::visitEqExp(SysYParser::EqExpContext *ctx) {
    // eqExp : relExp | eqExp (EQ | NEQ) relExp
    if (ctx->eqExp()) {
        auto left_any = visit(ctx->eqExp());
        auto right_any = visit(ctx->relExp());
        Value *lhs = std::any_cast<Value *>(left_any);
        Value *rhs = std::any_cast<Value *>(right_any);
        
        ICmpInst *cmp = nullptr;
        if (ctx->EQ()) {
            cmp = builder_.createICmpEQ(lhs, rhs);
        } else {
            cmp = builder_.createICmpNE(lhs, rhs);
        }
        cmp->setName(genName());
        
        // Extend i1 to i32 for consistency
        ZExtInst *zext = builder_.createZExt(cmp, Type::getInt32Ty());
        zext->setName(genName());
        return static_cast<Value *>(zext);
    }
    return visit(ctx->relExp());
}

std::any CodeGenVisitor::visitLAndExp(SysYParser::LAndExpContext *ctx) {
    // lAndExp : eqExp | lAndExp AND eqExp
    // Short-circuit evaluation: if left is false, skip right
    if (ctx->lAndExp()) {
        // Create result variable at function entry (before any branches)
        AllocaInst *resultVar = builder_.createAlloca(Type::getInt32Ty());
        resultVar->setName(genName());
        
        // Initialize to 0 (false case)
        ConstantInt *zero = ConstantInt::get(0);
        builder_.createStore(zero, resultVar);
        
        // Evaluate left operand
        auto left_any = visit(ctx->lAndExp());
        Value *lhs = std::any_cast<Value *>(left_any);
        
        // Convert to i1 if necessary
        Value *lhsBool = lhs;
        if (lhs->getType()->isIntegerTy() && !isInt1Type(lhs->getType())) {
            ICmpInst *cmp = builder_.createICmpNE(lhs, zero);
            cmp->setName(genName());
            lhsBool = cmp;
        }
        
        // Create blocks for short-circuit evaluation
        BasicBlock *rhsBB = BasicBlock::create(genBBName("land.rhs"), current_function_);
        BasicBlock *endBB = BasicBlock::create(genBBName("land.end"), current_function_);
        
        // If lhs is false, result is 0; otherwise evaluate rhs
        builder_.createCondBr(lhsBool, rhsBB, endBB);
        
        // Evaluate right operand
        builder_.setInsertPoint(rhsBB);
        auto right_any = visit(ctx->eqExp());
        Value *rhs = std::any_cast<Value *>(right_any);
        
        // Convert rhs to bool and then to i32
        Value *rhsBool = rhs;
        if (rhs->getType()->isIntegerTy() && !isInt1Type(rhs->getType())) {
            ICmpInst *cmp = builder_.createICmpNE(rhs, zero);
            cmp->setName(genName());
            rhsBool = cmp;
        }
        
        // Extend to i32 and store
        ZExtInst *rhsExt = builder_.createZExt(rhsBool, Type::getInt32Ty());
        rhsExt->setName(genName());
        builder_.createStore(rhsExt, resultVar);
        
        builder_.createBr(endBB);
        
        // End block - load the result
        builder_.setInsertPoint(endBB);
        LoadInst *result = builder_.createLoad(Type::getInt32Ty(), resultVar);
        result->setName(genName());
        
        return static_cast<Value *>(result);
    }
    return visit(ctx->eqExp());
}

std::any CodeGenVisitor::visitLOrExp(SysYParser::LOrExpContext *ctx) {
    // lOrExp : lAndExp | lOrExp OR lAndExp
    // Short-circuit evaluation: if left is true, skip right
    if (ctx->lOrExp()) {
        // Create result variable
        AllocaInst *resultVar = builder_.createAlloca(Type::getInt32Ty());
        resultVar->setName(genName());
        
        // Initialize to 1 (true case)
        ConstantInt *one = ConstantInt::get(1);
        ConstantInt *zero = ConstantInt::get(0);
        builder_.createStore(one, resultVar);
        
        // Evaluate left operand
        auto left_any = visit(ctx->lOrExp());
        Value *lhs = std::any_cast<Value *>(left_any);
        
        // Convert to i1 if necessary
        Value *lhsBool = lhs;
        if (lhs->getType()->isIntegerTy() && !isInt1Type(lhs->getType())) {
            ICmpInst *cmp = builder_.createICmpNE(lhs, zero);
            cmp->setName(genName());
            lhsBool = cmp;
        }
        
        // Create blocks for short-circuit evaluation
        BasicBlock *rhsBB = BasicBlock::create(genBBName("lor.rhs"), current_function_);
        BasicBlock *endBB = BasicBlock::create(genBBName("lor.end"), current_function_);
        
        // If lhs is true, result is 1; otherwise evaluate rhs
        builder_.createCondBr(lhsBool, endBB, rhsBB);
        
        // Evaluate right operand
        builder_.setInsertPoint(rhsBB);
        auto right_any = visit(ctx->lAndExp());
        Value *rhs = std::any_cast<Value *>(right_any);
        
        // Convert rhs to bool and then to i32
        Value *rhsBool = rhs;
        if (rhs->getType()->isIntegerTy() && !isInt1Type(rhs->getType())) {
            ICmpInst *cmp = builder_.createICmpNE(rhs, zero);
            cmp->setName(genName());
            rhsBool = cmp;
        }
        
        // Extend to i32 and store
        ZExtInst *rhsExt = builder_.createZExt(rhsBool, Type::getInt32Ty());
        rhsExt->setName(genName());
        builder_.createStore(rhsExt, resultVar);
        
        builder_.createBr(endBB);
        
        // End block - load the result
        builder_.setInsertPoint(endBB);
        LoadInst *result = builder_.createLoad(Type::getInt32Ty(), resultVar);
        result->setName(genName());
        
        return static_cast<Value *>(result);
    }
    return visit(ctx->lAndExp());
}

std::any CodeGenVisitor::visitExp(SysYParser::ExpContext *ctx) {
    return visit(ctx->addExp());
}

std::any CodeGenVisitor::visitAddExp(SysYParser::AddExpContext *ctx) {
    // addExp : mulExp ( (PLUS|MINUS) mulExp )*
    if (ctx->addExp()) {
        auto left_any = visit(ctx->addExp());
        auto right_any = visit(ctx->mulExp());
        Value *lhs = std::any_cast<Value *>(left_any);
        Value *rhs = std::any_cast<Value *>(right_any);
        BinaryInst *bin = nullptr;
        if (ctx->PLUS()) {
            bin = builder_.createAdd(lhs, rhs);
        } else {
            bin = builder_.createSub(lhs, rhs);
        }
        bin->setName(genName());
        return static_cast<Value *>(bin);
    } else {
        return visit(ctx->mulExp());
    }
}

std::any CodeGenVisitor::visitMulExp(SysYParser::MulExpContext *ctx) {
    if (ctx->mulExp()) {
        auto left_any = visit(ctx->mulExp());
        auto right_any = visit(ctx->unaryExp());
        Value *lhs = std::any_cast<Value *>(left_any);
        Value *rhs = std::any_cast<Value *>(right_any);
        BinaryInst *bin = nullptr;
        if (ctx->MUL()) {
            bin = builder_.createMul(lhs, rhs);
        } else if (ctx->DIV()) {
            bin = builder_.createSDiv(lhs, rhs);
        } else {
            bin = builder_.createSRem(lhs, rhs);
        }
        bin->setName(genName());
        return static_cast<Value *>(bin);
    } else {
        return visit(ctx->unaryExp());
    }
}

std::any CodeGenVisitor::visitUnaryExp(SysYParser::UnaryExpContext *ctx) {
    if (ctx->primaryExp()) {
        return visit(ctx->primaryExp());
    } else if (ctx->unaryOp()) {
        // unaryOp unaryExp
        auto val_any = visit(ctx->unaryExp());
        Value *val = std::any_cast<Value *>(val_any);
        std::string op = ctx->unaryOp()->getText();
        if (op == "+") {
            return val;
        } else if (op == "-") {
            ConstantInt *zero = ConstantInt::get(0);
            BinaryInst *bin = builder_.createSub(zero, val);
            bin->setName(genName());
            return static_cast<Value *>(bin);
        } else if (op == "!") {
            // logical not: compute icmp eq with zero
            ConstantInt *zero = ConstantInt::get(0);
            ICmpInst *cmp = builder_.createICmpEQ(val, zero);
            cmp->setName(genName());
            // Extend i1 to i32
            ZExtInst *zext = builder_.createZExt(cmp, Type::getInt32Ty());
            zext->setName(genName());
            return static_cast<Value *>(zext);
        }
    } else if (ctx->IDENT()) {
        // Function call: IDENT LPAREN (funcRParams)? RPAREN
        std::string funcName = ctx->IDENT()->getText();
        Function *callee = lookupFunction(funcName);
        
        if (!callee) {
            std::cerr << "Error: Undefined function '" << funcName << "'" << std::endl;
            return static_cast<Value *>(nullptr);
        }

        // Collect arguments
        std::vector<Value *> args;
        if (ctx->funcRParams()) {
            for (auto expCtx : ctx->funcRParams()->exp()) {
                auto arg_any = visit(expCtx);
                Value *arg = std::any_cast<Value *>(arg_any);
                args.push_back(arg);
            }
        }

        // Create call instruction
        CallInst *call = builder_.createCall(callee, args);
        
        // If function returns non-void, give it a name
        if (!callee->getFunctionType()->getReturnType()->isVoidTy()) {
            call->setName(genName());
        }
        
        return static_cast<Value *>(call);
    }
    return static_cast<Value *>(nullptr);
}

std::any CodeGenVisitor::visitPrimaryExp(SysYParser::PrimaryExpContext *ctx) {
    if (ctx->number()) {
        return visit(ctx->number());
    } else if (ctx->exp()) {
        return visit(ctx->exp());
    } else if (ctx->lVal()) {
        return visit(ctx->lVal());
    }
    return static_cast<Value *>(nullptr);
}

std::any CodeGenVisitor::visitLVal(SysYParser::LValContext *ctx) {
    std::string varName = ctx->IDENT()->getText();
    Value *addr = lookupSymbol(varName);
    
    if (!addr) {
        std::cerr << "Error: Undefined variable '" << varName << "'" << std::endl;
        return static_cast<Value *>(nullptr);
    }

    // For simple variable (no array indexing), load the value
    if (ctx->LBRACK().empty()) {
        // Check if it's a pointer to int (local variable) or just an argument
        if (addr->getType()->isPointerTy()) {
            LoadInst *load = builder_.createLoad(Type::getInt32Ty(), addr);
            load->setName(genName());
            return static_cast<Value *>(load);
        } else {
            // It's an argument passed by value, return directly
            return addr;
        }
    }
    
    // Array indexing - will be implemented in array translation phase
    return static_cast<Value *>(nullptr);
}

std::any CodeGenVisitor::visitNumber(SysYParser::NumberContext *ctx) {
    std::string txt;
    if (ctx->DEC_INT_CONST()) txt = ctx->DEC_INT_CONST()->getText();
    else if (ctx->OCT_INT_CONST()) txt = ctx->OCT_INT_CONST()->getText();
    else if (ctx->HEX_INT_CONST()) txt = ctx->HEX_INT_CONST()->getText();
    else txt = "0";

    int val = 0;
    if (!txt.empty() && (txt.rfind("0x", 0) == 0 || txt.rfind("0X", 0) == 0)) {
        val = std::stoi(txt.substr(2), nullptr, 16);
    } else if (!txt.empty() && txt.size() > 1 && txt[0] == '0') {
        // octal
        val = std::stoi(txt.substr(1), nullptr, 8);
    } else {
        val = std::stoi(txt);
    }
    ConstantInt *c = ConstantInt::get(val);
    return static_cast<Value *>(c);
}

// ==================== Constant Expression Evaluation ====================

int CodeGenVisitor::evalConstExp(SysYParser::AddExpContext *ctx) {
    if (ctx->addExp()) {
        int left = evalConstExp(ctx->addExp());
        int right = evalConstMulExp(ctx->mulExp());
        if (ctx->PLUS()) {
            return left + right;
        } else {
            return left - right;
        }
    } else {
        return evalConstMulExp(ctx->mulExp());
    }
}

int CodeGenVisitor::evalConstMulExp(SysYParser::MulExpContext *ctx) {
    if (ctx->mulExp()) {
        int left = evalConstMulExp(ctx->mulExp());
        int right = evalConstUnaryExp(ctx->unaryExp());
        if (ctx->MUL()) {
            return left * right;
        } else if (ctx->DIV()) {
            return left / right;
        } else {
            return left % right;
        }
    } else {
        return evalConstUnaryExp(ctx->unaryExp());
    }
}

int CodeGenVisitor::evalConstUnaryExp(SysYParser::UnaryExpContext *ctx) {
    if (ctx->primaryExp()) {
        return evalConstPrimaryExp(ctx->primaryExp());
    } else if (ctx->unaryOp()) {
        int val = evalConstUnaryExp(ctx->unaryExp());
        std::string op = ctx->unaryOp()->getText();
        if (op == "+") {
            return val;
        } else if (op == "-") {
            return -val;
        } else if (op == "!") {
            return val == 0 ? 1 : 0;
        }
    }
    return 0;
}

int CodeGenVisitor::evalConstPrimaryExp(SysYParser::PrimaryExpContext *ctx) {
    if (ctx->number()) {
        return evalConstNumber(ctx->number());
    } else if (ctx->exp()) {
        return evalConstExp(ctx->exp()->addExp());
    } else if (ctx->lVal()) {
        // Try to look up const value
        std::string varName = ctx->lVal()->IDENT()->getText();
        int val = 0;
        if (lookupConst(varName, val)) {
            return val;
        }
        std::cerr << "Error: Non-constant variable '" << varName << "' in constant expression" << std::endl;
        return 0;
    }
    return 0;
}

int CodeGenVisitor::evalConstNumber(SysYParser::NumberContext *ctx) {
    std::string txt;
    if (ctx->DEC_INT_CONST()) txt = ctx->DEC_INT_CONST()->getText();
    else if (ctx->OCT_INT_CONST()) txt = ctx->OCT_INT_CONST()->getText();
    else if (ctx->HEX_INT_CONST()) txt = ctx->HEX_INT_CONST()->getText();
    else txt = "0";

    int val = 0;
    if (!txt.empty() && (txt.rfind("0x", 0) == 0 || txt.rfind("0X", 0) == 0)) {
        val = std::stoi(txt.substr(2), nullptr, 16);
    } else if (!txt.empty() && txt.size() > 1 && txt[0] == '0') {
        // octal
        val = std::stoi(txt.substr(1), nullptr, 8);
    } else {
        val = std::stoi(txt);
    }
    return val;
}
