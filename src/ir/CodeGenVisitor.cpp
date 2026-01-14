#include "ir/CodeGenVisitor.h"
#include "ir/Constant.h"
#include "ir/Function.h"
#include "ir/BasicBlock.h"
#include "ir/Instruction.h"
#include <cctype>
#include <vector>

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
    used_names_.clear();

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
                // Array parameter: build pointer to remaining dimensions
                std::vector<int> dims = collectDimensions(paramCtx->constExp());
                Type *elemTy = Type::getInt32Ty();
                if (!dims.empty()) {
                    elemTy = buildArrayType(elemTy, dims);
                }
                paramTypes.push_back(PointerType::get(elemTy));
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
    used_names_.insert("entry");

    // Push new scope for function parameters
    pushScope();

    // Set argument names and add to symbol table
    auto &args = f->getArgs();
    for (size_t i = 0; i < args.size(); ++i) {
        args[i]->setName(paramNames[i]);
        
        // Register parameter name to avoid conflict with local variables
        used_names_.insert(paramNames[i]);

        if (paramTypes[i]->isIntegerTy()) {
            std::string addrName = getUniqueName(paramNames[i] + ".addr");
            AllocaInst *alloca = createEntryBlockAlloca(Type::getInt32Ty(), addrName);
            builder_.createStore(args[i], alloca);
            addSymbol(paramNames[i], alloca, Type::getInt32Ty());
        } else {
            addSymbol(paramNames[i], args[i], paramTypes[i]);
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

    current_function_ = nullptr;
    builder_.setInsertPoint(nullptr);
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

    Type *baseTy = Type::getInt32Ty();
    auto dims = collectDimensions(ctx->constExp());
    Type *varTy = dims.empty() ? baseTy : buildArrayType(baseTy, dims);
    bool isArray = !dims.empty();

    if (isGlobalScope()) {
        Constant *init = nullptr;
        if (ctx->initVal()) {
            if (isArray) {
                init = buildVarInitializer(varTy, ctx->initVal());
            } else if (ctx->initVal()->exp()) {
                int initVal = evalConstExp(ctx->initVal()->exp());
                init = ConstantInt::get(varTy, initVal);
            }
        }
        if (!init) {
            init = getZeroInitializer(varTy);
        }
        auto *gv = new GlobalVariable(varName, module_, varTy, false, init);
        addSymbol(varName, gv, varTy);
    } else {
        AllocaInst *alloca = createEntryBlockAlloca(varTy, getUniqueName(varName));
        addSymbol(varName, alloca, varTy);

        if (ctx->initVal()) {
            if (isArray) {
                emitLocalInitializer(alloca, varTy, ctx->initVal());
            } else if (ctx->initVal()->exp()) {
                Value *val = std::any_cast<Value *>(visit(ctx->initVal()->exp()));
                val = promoteToInt32(val);
                if (!val) {
                    val = ConstantInt::get(0);
                }
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

    Type *baseTy = Type::getInt32Ty();
    auto dims = collectDimensions(ctx->constExp());
    Type *varTy = dims.empty() ? baseTy : buildArrayType(baseTy, dims);
    Constant *constInit = buildConstInitializer(varTy, ctx->constInitVal());

    if (isGlobalScope()) {
        auto *gv = new GlobalVariable(varName, module_, varTy, true, constInit);
        addSymbol(varName, gv, varTy, true, constInit);
    } else {
        AllocaInst *alloca = createEntryBlockAlloca(varTy, getUniqueName(varName));
        addSymbol(varName, alloca, varTy, true, constInit);
        emitConstInitializer(alloca, varTy, constInit);
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
    auto *info = lookupSymbolInfo(varName);
    if (!info || !info->value) {
        std::cerr << "Error: Undefined variable '" << varName << "'" << std::endl;
        return nullptr;
    }

    if (info->isConst) {
        std::cerr << "Error: Assignment to const variable '" << varName << "'" << std::endl;
        return nullptr;
    }
    
    // Evaluate the expression
    auto val_any = visit(ctx->exp());
    Value *val = std::any_cast<Value *>(val_any);
    val = promoteToInt32(val);

    if (ctx->lVal()->LBRACK().empty()) {
        if (!info->value->getType()->isPointerTy() || (info->type && (info->type->isArrayTy() || info->type->isPointerTy()))) {
            std::cerr << "Error: Invalid assignment target '" << varName << "'" << std::endl;
            return nullptr;
        }
        builder_.createStore(val, info->value);
        return nullptr;
    }

    Type *elemTy = nullptr;
    Value *elemPtr = getArrayElementPtr(*info, ctx->lVal(), &elemTy);
    if (!elemPtr || (elemTy && elemTy->isArrayTy())) {
        std::cerr << "Error: Invalid array assignment for '" << varName << "'" << std::endl;
        return nullptr;
    }

    builder_.createStore(val, elemPtr);
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
        AllocaInst *resultVar = createEntryBlockAlloca(Type::getInt32Ty(), genName());
        
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
        AllocaInst *resultVar = createEntryBlockAlloca(Type::getInt32Ty(), genName());
        
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

        // Collect and adjust arguments to match parameter types
        std::vector<Value *> args;
        if (ctx->funcRParams()) {
            auto paramExprs = ctx->funcRParams()->exp();
            auto *funcTy = callee->getFunctionType();
            for (size_t i = 0; i < paramExprs.size(); ++i) {
                auto arg_any = visit(paramExprs[i]);
                Value *arg = std::any_cast<Value *>(arg_any);
                if (arg) {
                    if (funcTy && i < funcTy->getNumParams()) {
                        arg = adjustArgumentToParam(arg, funcTy->getParamType(i));
                    }
                }
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
    auto *info = lookupSymbolInfo(varName);

    if (!info || !info->value) {
        std::cerr << "Error: Undefined variable '" << varName << "'" << std::endl;
        return static_cast<Value *>(nullptr);
    }

    // For simple variable (no array indexing), load the value
    if (ctx->LBRACK().empty()) {
        if (info->isConst && info->constValue) {
             return static_cast<Value *>(info->constValue);
        }

        if (info->type && info->type->isArrayTy()) {
            std::vector<Value *> idx = {ConstantInt::get(Type::getInt64Ty(), 0), ConstantInt::get(Type::getInt64Ty(), 0)};
            Value *ptr = builder_.createGEP(info->value, idx);
            ptr->setName(genName());
            return ptr;
        }
        if (info->type && info->type->isPointerTy()) {
            return info->value;
        }
        if (info->value->getType()->isPointerTy()) {
            LoadInst *load = builder_.createLoad(info->type ? info->type : Type::getInt32Ty(), info->value);
            load->setName(genName());
            return static_cast<Value *>(load);
        }
        return info->value;
    }

    Type *elemTy = nullptr;
    Value *addr = getArrayElementPtr(*info, ctx, &elemTy);
    if (!addr) {
        return static_cast<Value *>(nullptr);
    }
    if (elemTy && elemTy->isArrayTy()) {
        std::vector<Value *> decayIdx = {ConstantInt::get(0), ConstantInt::get(0)};
        Value *decayed = builder_.createGEP(addr, decayIdx);
        decayed->setName(genName());
        return decayed;
    }
    LoadInst *load = builder_.createLoad(elemTy ? elemTy : Type::getInt32Ty(), addr);
    load->setName(genName());
    return static_cast<Value *>(load);
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

static int parseIntLiteral(const std::string &text) {
    if (text.size() > 2 && text[0] == '0' && (text[1] == 'x' || text[1] == 'X')) {
        return static_cast<int>(std::stoll(text.substr(2), nullptr, 16));
    }
    if (text.size() > 2 && text[0] == '0' && (text[1] == 'o' || text[1] == 'O')) {
        return static_cast<int>(std::stoll(text.substr(2), nullptr, 8));
    }
    if (text.size() > 1 && text[0] == '0' && std::isdigit(static_cast<unsigned char>(text[1]))) {
        return static_cast<int>(std::stoll(text.substr(1), nullptr, 8));
    }
    return static_cast<int>(std::stoll(text, nullptr, 10));
}

int CodeGenVisitor::evalConstExp(SysYParser::ConstExpContext *ctx) {
    if (!ctx) return 0;
    return evalConstExp(ctx->addExp());
}

int CodeGenVisitor::evalConstExp(SysYParser::ExpContext *ctx) {
    if (!ctx) return 0;
    return evalConstExp(ctx->addExp());
}

int CodeGenVisitor::evalConstExp(SysYParser::AddExpContext *ctx) {
    if (ctx->addExp()) {
        int left = evalConstExp(ctx->addExp());
        int right = evalConstMulExp(ctx->mulExp());
        if (ctx->PLUS()) {
            return left + right;
        }
        return left - right;
    }
    return evalConstMulExp(ctx->mulExp());
}

int CodeGenVisitor::evalConstMulExp(SysYParser::MulExpContext *ctx) {
    if (ctx->mulExp()) {
        int left = evalConstMulExp(ctx->mulExp());
        int right = evalConstUnaryExp(ctx->unaryExp());
        if (ctx->MUL()) {
            return left * right;
        }
        if (ctx->DIV()) {
            if (right == 0) return 0;
            return left / right;
        }
        if (right == 0) return 0;
        int mod = left % right;
        if ((mod != 0) && ((mod < 0) != (right < 0))) {
            mod += right;
        }
        return mod;
    }
    return evalConstUnaryExp(ctx->unaryExp());
}

int CodeGenVisitor::evalConstUnaryExp(SysYParser::UnaryExpContext *ctx) {
    if (ctx->primaryExp()) {
        return evalConstPrimaryExp(ctx->primaryExp());
    }
    if (ctx->unaryOp() && ctx->unaryExp()) {
        int val = evalConstUnaryExp(ctx->unaryExp());
        if (ctx->unaryOp()->PLUS()) {
            return val;
        }
        if (ctx->unaryOp()->MINUS()) {
            return -val;
        }
        if (ctx->unaryOp()->NOT()) {
            return val == 0 ? 1 : 0;
        }
    }
    return 0;
}

int CodeGenVisitor::evalConstPrimaryExp(SysYParser::PrimaryExpContext *ctx) {
    if (ctx->number()) {
        return evalConstNumber(ctx->number());
    }
    if (ctx->LPAREN()) {
        return evalConstExp(ctx->exp());
    }
    if (ctx->lVal()) {
        return evalConstLVal(ctx->lVal());
    }
    return 0;
}

int CodeGenVisitor::evalConstNumber(SysYParser::NumberContext *ctx) {
    std::string txt;
    if (ctx->DEC_INT_CONST()) txt = ctx->DEC_INT_CONST()->getText();
    else if (ctx->OCT_INT_CONST()) txt = ctx->OCT_INT_CONST()->getText();
    else if (ctx->HEX_INT_CONST()) txt = ctx->HEX_INT_CONST()->getText();
    else txt = "0";
    return parseIntLiteral(txt);
}

int CodeGenVisitor::evalConstLVal(SysYParser::LValContext *ctx) {
    if (!ctx) return 0;
    std::string ident = ctx->IDENT()->getText();
    Constant *constVal = lookupConstValue(ident);
    if (!constVal) {
        std::cerr << "Error: Non-constant variable '" << ident << "' in constant expression" << std::endl;
        return 0;
    }

    Constant *current = constVal;
    if (ctx->exp().empty()) {
        if (auto *ci = dynamic_cast<ConstantInt *>(current)) {
            return ci->getValue();
        }
        std::cerr << "Error: Array constant '" << ident << "' used without index" << std::endl;
        return 0;
    }

    for (auto *expCtx : ctx->exp()) {
        int idx = evalConstExp(expCtx);
        if (auto *arr = dynamic_cast<ConstantArray *>(current)) {
            const auto &elems = arr->getElements();
            if (idx < 0 || static_cast<size_t>(idx) >= elems.size()) {
                std::cerr << "Error: Array index out of bounds in const expression" << std::endl;
                return 0;
            }
            current = elems[idx];
        } else {
            std::cerr << "Error: Too many indices in const expression for '" << ident << "'" << std::endl;
            return 0;
        }
    }

    if (auto *ci = dynamic_cast<ConstantInt *>(current)) {
        return ci->getValue();
    }
    std::cerr << "Error: Non-scalar constant encountered in expression" << std::endl;
    return 0;
}

std::vector<int> CodeGenVisitor::collectDimensions(const std::vector<SysYParser::ConstExpContext *> &dimCtxs) {
    std::vector<int> dims;
    dims.reserve(dimCtxs.size());
    for (auto *ctx : dimCtxs) {
        dims.push_back(evalConstExp(ctx));
    }
    return dims;
}

Type *CodeGenVisitor::buildArrayType(Type *base, const std::vector<int> &dims) {
    Type *ty = base;
    for (auto it = dims.rbegin(); it != dims.rend(); ++it) {
        ty = ArrayType::get(ty, *it);
    }
    return ty;
}

Constant *CodeGenVisitor::getZeroInitializer(Type *ty) {
    if (ty->isIntegerTy()) {
        return ConstantInt::get(ty, 0);
    }
    if (ty->isArrayTy()) {
        auto *arrTy = static_cast<ArrayType *>(ty);
        std::vector<Constant *> elems;
        elems.reserve(arrTy->getNumElements());
        for (unsigned i = 0; i < arrTy->getNumElements(); ++i) {
            elems.push_back(getZeroInitializer(arrTy->getElementType()));
        }
        return ConstantArray::get(arrTy, std::move(elems));
    }
    return ConstantInt::get(0);
}

Constant *CodeGenVisitor::buildConstInitializer(Type *ty, SysYParser::ConstInitValContext *ctx) {
    if (!ty->isArrayTy()) {
        int val = 0;
        if (ctx && ctx->constExp()) {
            val = evalConstExp(ctx->constExp());
        }
        return ConstantInt::get(ty, val);
    }

    auto *arrTy = static_cast<ArrayType *>(ty);
    std::vector<Constant *> elements;
    elements.reserve(arrTy->getNumElements());

    if (!ctx) {
        for (unsigned i = 0; i < arrTy->getNumElements(); ++i) {
            elements.push_back(getZeroInitializer(arrTy->getElementType()));
        }
        return ConstantArray::get(arrTy, std::move(elements));
    }

    if (ctx->constExp()) {
        Constant *first = buildConstInitializer(arrTy->getElementType(), ctx);
        elements.push_back(first);
        for (unsigned i = 1; i < arrTy->getNumElements(); ++i) {
            elements.push_back(getZeroInitializer(arrTy->getElementType()));
        }
        return ConstantArray::get(arrTy, std::move(elements));
    }

    auto subInits = ctx->constInitVal();
    size_t idx = 0;
    for (unsigned i = 0; i < arrTy->getNumElements(); ++i) {
        if (idx < subInits.size()) {
            auto *subCtx = subInits[idx];
            if (arrTy->getElementType()->isArrayTy() && subCtx && subCtx->constExp()) {
                elements.push_back(buildConstArrayFromScalars(arrTy->getElementType(), subInits, idx));
            } else {
                elements.push_back(buildConstInitializer(arrTy->getElementType(), subCtx));
                ++idx;
            }
        } else {
            elements.push_back(getZeroInitializer(arrTy->getElementType()));
        }
    }
    return ConstantArray::get(arrTy, std::move(elements));
}

Constant *CodeGenVisitor::buildConstArrayFromScalars(Type *ty, const std::vector<SysYParser::ConstInitValContext *> &subInits, size_t &cursor) {
    if (!ty->isArrayTy()) {
        SysYParser::ConstInitValContext *ctx = nullptr;
        if (cursor < subInits.size()) {
            ctx = subInits[cursor++];
        }
        return buildConstInitializer(ty, ctx);
    }

    auto *arrTy = static_cast<ArrayType *>(ty);
    std::vector<Constant *> elems;
    elems.reserve(arrTy->getNumElements());
    for (unsigned i = 0; i < arrTy->getNumElements(); ++i) {
        elems.push_back(buildConstArrayFromScalars(arrTy->getElementType(), subInits, cursor));
    }
    return ConstantArray::get(arrTy, std::move(elems));
}

Constant *CodeGenVisitor::buildVarInitializer(Type *ty, SysYParser::InitValContext *ctx) {
    if (!ty->isArrayTy()) {
        int val = 0;
        if (ctx && ctx->exp()) {
            val = evalConstExp(ctx->exp());
        }
        return ConstantInt::get(ty, val);
    }

    auto *arrTy = static_cast<ArrayType *>(ty);
    std::vector<Constant *> elements;
    elements.reserve(arrTy->getNumElements());

    if (!ctx) {
        for (unsigned i = 0; i < arrTy->getNumElements(); ++i) {
            elements.push_back(getZeroInitializer(arrTy->getElementType()));
        }
        return ConstantArray::get(arrTy, std::move(elements));
    }

    if (ctx->exp()) {
        Constant *first = buildVarInitializer(arrTy->getElementType(), ctx);
        elements.push_back(first);
        for (unsigned i = 1; i < arrTy->getNumElements(); ++i) {
            elements.push_back(getZeroInitializer(arrTy->getElementType()));
        }
        return ConstantArray::get(arrTy, std::move(elements));
    }

    auto subInits = ctx->initVal();
    size_t idx = 0;
    for (unsigned i = 0; i < arrTy->getNumElements(); ++i) {
        if (idx < subInits.size()) {
            auto *subCtx = subInits[idx];
            if (arrTy->getElementType()->isArrayTy() && subCtx && subCtx->exp()) {
                elements.push_back(buildVarArrayFromScalars(arrTy->getElementType(), subInits, idx));
            } else {
                elements.push_back(buildVarInitializer(arrTy->getElementType(), subCtx));
                ++idx;
            }
        } else {
            elements.push_back(getZeroInitializer(arrTy->getElementType()));
        }
    }
    return ConstantArray::get(arrTy, std::move(elements));
}

Constant *CodeGenVisitor::buildVarArrayFromScalars(Type *ty, const std::vector<SysYParser::InitValContext *> &subInits, size_t &cursor) {
    if (!ty->isArrayTy()) {
        SysYParser::InitValContext *ctx = nullptr;
        if (cursor < subInits.size()) {
            ctx = subInits[cursor++];
        }
        return buildVarInitializer(ty, ctx);
    }

    auto *arrTy = static_cast<ArrayType *>(ty);
    std::vector<Constant *> elems;
    elems.reserve(arrTy->getNumElements());
    for (unsigned i = 0; i < arrTy->getNumElements(); ++i) {
        elems.push_back(buildVarArrayFromScalars(arrTy->getElementType(), subInits, cursor));
    }
    return ConstantArray::get(arrTy, std::move(elems));
}

void CodeGenVisitor::emitLocalInitializer(Value *ptr, Type *ty, SysYParser::InitValContext *ctx) {
    std::vector<int> indices;
    emitLocalInitRecursive(ptr, ty, ctx, indices);
}

void CodeGenVisitor::emitLocalInitRecursive(Value *ptr, Type *ty, SysYParser::InitValContext *ctx, std::vector<int> &indices) {
    if (!ty->isArrayTy()) {
        Value *val = nullptr;
        if (ctx && ctx->exp()) {
            val = std::any_cast<Value *>(visit(ctx->exp()));
        }
        if (!val) {
            val = ConstantInt::get(0);
        }
        val = promoteToInt32(val);

        std::vector<Value *> gepIdx;
        auto *ptrTy = dynamic_cast<PointerType *>(ptr->getType());
        if (ptrTy && ptrTy->getElementType()->isArrayTy()) {
            gepIdx.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
        }
        for (int idx : indices) {
            gepIdx.push_back(ConstantInt::get(Type::getInt64Ty(), idx));
        }

        Value *destPtr = gepIdx.empty() ? ptr : builder_.createGEP(ptr, gepIdx);
        builder_.createStore(val, destPtr);
        return;
    }

    auto *arrTy = static_cast<ArrayType *>(ty);
    if (!ctx) {
        for (unsigned i = 0; i < arrTy->getNumElements(); ++i) {
            indices.push_back(static_cast<int>(i));
            emitLocalInitRecursive(ptr, arrTy->getElementType(), nullptr, indices);
            indices.pop_back();
        }
        return;
    }

    if (ctx->exp()) {
        indices.push_back(0);
        emitLocalInitRecursive(ptr, arrTy->getElementType(), ctx, indices);
        indices.pop_back();
        for (unsigned i = 1; i < arrTy->getNumElements(); ++i) {
            indices.push_back(static_cast<int>(i));
            emitLocalInitRecursive(ptr, arrTy->getElementType(), nullptr, indices);
            indices.pop_back();
        }
        return;
    }

    auto subInits = ctx->initVal();
    size_t childIdx = 0;
    for (unsigned i = 0; i < arrTy->getNumElements(); ++i) {
        indices.push_back(static_cast<int>(i));
        if (childIdx < subInits.size()) {
            SysYParser::InitValContext *subCtx = subInits[childIdx];
            if (arrTy->getElementType()->isArrayTy() && subCtx && subCtx->exp()) {
                fillArrayInitFromScalars(ptr, arrTy->getElementType(), subInits, childIdx, indices);
            } else {
                emitLocalInitRecursive(ptr, arrTy->getElementType(), subCtx, indices);
                ++childIdx;
            }
        } else {
            emitLocalInitRecursive(ptr, arrTy->getElementType(), nullptr, indices);
        }
        indices.pop_back();
    }
}

void CodeGenVisitor::fillArrayInitFromScalars(Value *ptr, Type *ty, const std::vector<SysYParser::InitValContext *> &subInits, size_t &cursor, std::vector<int> &indices) {
    if (!ty->isArrayTy()) {
        SysYParser::InitValContext *scalarCtx = nullptr;
        if (cursor < subInits.size()) {
            scalarCtx = subInits[cursor++];
        }
        emitLocalInitRecursive(ptr, ty, scalarCtx, indices);
        return;
    }

    auto *arrTy = static_cast<ArrayType *>(ty);
    for (unsigned i = 0; i < arrTy->getNumElements(); ++i) {
        indices.push_back(static_cast<int>(i));
        fillArrayInitFromScalars(ptr, arrTy->getElementType(), subInits, cursor, indices);
        indices.pop_back();
    }
}

void CodeGenVisitor::emitConstInitializer(Value *ptr, Type *ty, Constant *init) {
    std::vector<int> indices;
    emitConstInitRecursive(ptr, ty, init, indices);
}

void CodeGenVisitor::emitConstInitRecursive(Value *ptr, Type *ty, Constant *init, std::vector<int> &indices) {
    if (!ty->isArrayTy()) {
        Constant *val = init ? init : ConstantInt::get(ty, 0);

        std::vector<Value *> gepIdx;
        auto *ptrTy = dynamic_cast<PointerType *>(ptr->getType());
        if (ptrTy && ptrTy->getElementType()->isArrayTy()) {
            gepIdx.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
        }
        for (int idx : indices) {
            gepIdx.push_back(ConstantInt::get(Type::getInt64Ty(), idx));
        }

        Value *destPtr = gepIdx.empty() ? ptr : builder_.createGEP(ptr, gepIdx);
        builder_.createStore(val, destPtr);
        return;
    }

    auto *arrTy = static_cast<ArrayType *>(ty);
    const std::vector<Constant *> *elems = nullptr;
    if (auto *arrConst = dynamic_cast<ConstantArray *>(init)) {
        elems = &arrConst->getElements();
    }

    for (unsigned i = 0; i < arrTy->getNumElements(); ++i) {
        Constant *subInit = nullptr;
        if (elems && i < elems->size()) {
            subInit = (*elems)[i];
        }
        indices.push_back(static_cast<int>(i));
        emitConstInitRecursive(ptr, arrTy->getElementType(), subInit, indices);
        indices.pop_back();
    }
}

Value *CodeGenVisitor::promoteToInt32(Value *val) {
    if (!val) return nullptr;
    if (val->getType()->isIntegerTy()) {
        auto *intTy = static_cast<IntegerType *>(val->getType());
        if (intTy->getBitWidth() == 1) {
            Value *zext = builder_.createZExt(val, Type::getInt32Ty());
            zext->setName(genName());
            return zext;
        }
    }
    return val;
}

Value *CodeGenVisitor::promoteToInt64(Value *val) {
    if (!val) return nullptr;
    Type *ty = val->getType();
    if (ty->isIntegerTy()) {
        auto *int_ty = static_cast<IntegerType *>(ty);
        if (int_ty->getBitWidth() == 64) {
            return val;
        }
        if (int_ty->getBitWidth() == 32) {
             return builder_.createSExt(val, Type::getInt64Ty());
        }
        if (int_ty->getBitWidth() == 1) {
             return builder_.createZExt(val, Type::getInt64Ty()); 
        }
    }
    return val;
}

Value *CodeGenVisitor::getArrayElementPtr(const SymbolInfo &info, SysYParser::LValContext *ctx, Type **elemTy) {
    Value *basePtr = info.value;
    if (!basePtr) {
        return nullptr;
    }

    std::vector<Value *> indices;

    Type *symbolTy = info.type;
    Type *currentTy = nullptr;
    if (symbolTy) {
        if (symbolTy->isArrayTy()) {
            currentTy = symbolTy;
        } else if (symbolTy->isPointerTy()) {
            currentTy = static_cast<PointerType *>(symbolTy)->getElementType();
        } else {
            currentTy = symbolTy;
        }
    } else if (auto *ptrTy = dynamic_cast<PointerType *>(basePtr->getType())) {
        currentTy = ptrTy->getElementType();
    }

    bool originatesFromAggregate = dynamic_cast<AllocaInst *>(basePtr) != nullptr || dynamic_cast<GlobalVariable *>(basePtr) != nullptr;
    bool isPointerSymbol = symbolTy && symbolTy->isPointerTy() && !originatesFromAggregate;

    if ((!isPointerSymbol) && currentTy && currentTy->isArrayTy()) {
        indices.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
    }

    for (auto *expCtx : ctx->exp()) {
        Value *idxVal = std::any_cast<Value *>(visit(expCtx));
        idxVal = promoteToInt64(idxVal);
        if (!idxVal) {
            idxVal = ConstantInt::get(Type::getInt64Ty(), 0);
        }
        indices.push_back(idxVal);

        if (currentTy) {
            if (currentTy->isArrayTy()) {
                currentTy = static_cast<ArrayType *>(currentTy)->getElementType();
            } else if (currentTy->isPointerTy()) {
                currentTy = static_cast<PointerType *>(currentTy)->getElementType();
            }
        }
    }

    if (elemTy) {
        *elemTy = currentTy;
    }

    if (indices.empty()) {
        return basePtr;
    }

    return builder_.createGEP(basePtr, indices);
}

Value *CodeGenVisitor::adjustArgumentToParam(Value *arg, Type *paramTy) {
    if (!arg || !paramTy) {
        return arg;
    }

    if (arg->getType() == paramTy) {
        return arg;
    }

    if (!paramTy->isPointerTy()) {
        return arg;
    }

    auto *paramPtrTy = static_cast<PointerType *>(paramTy);
    Type *expectedElem = paramPtrTy->getElementType();

    auto *argPtrTy = dynamic_cast<PointerType *>(arg->getType());
    if (!argPtrTy) {
        return arg;
    }

    Type *argElem = argPtrTy->getElementType();
    if (argElem == expectedElem) {
        return arg;
    }

    if (!argElem || !argElem->isArrayTy()) {
        return arg;
    }

    std::vector<Value *> gepIdx;
    Type *current = argElem;
    while (current && current->isArrayTy()) {
        gepIdx.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
        current = static_cast<ArrayType *>(current)->getElementType();

        if (current == expectedElem) {
            if (expectedElem->isArrayTy()) {
                return builder_.createGEP(arg, gepIdx);
            }
            gepIdx.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
            return builder_.createGEP(arg, gepIdx);
        }
    }

    return arg;
}

AllocaInst *CodeGenVisitor::createEntryBlockAlloca(Type *ty, const std::string &name) {
    if (!current_function_) return nullptr;
    auto &blocks = current_function_->getBasicBlocks();
    if (blocks.empty()) {
        BasicBlock *entry = BasicBlock::create("entry", current_function_);
    }
    BasicBlock *entry = blocks.front();
    AllocaInst *alloc = new AllocaInst(ty, entry);
    // Move to front of block to ensure it dominates all uses and doesn't grow stack in loops
    auto &insts = entry->getInstructions();
    if (insts.size() > 1) {
        insts.pop_back();
        insts.push_front(alloc);
    }
    
    // Ensure name uniqueness in the entry block
    std::string finalName = name;
    if (finalName.length() > 50) {
        finalName = finalName.substr(0, 50);
    }
    if (!finalName.empty()) {
        int suffix = 1;
        bool exists;
        do {
            exists = false;
            for (auto *i : insts) {
                if (i != alloc && i->getName() == finalName) {
                    exists = true;
                    break;
                }
            }
            if (exists) {
                finalName = name + "." + std::to_string(suffix++);
            }
        } while (exists);
        alloc->setName(finalName);
    }
    return alloc;
}
