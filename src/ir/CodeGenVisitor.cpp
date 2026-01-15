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
    // float getfloat()
    {
        std::vector<Type *> params;
        FunctionType *ft = FunctionType::get(Type::getFloatTy(), params);
        Function *f = Function::create(ft, "getfloat", module_);
        addFunction("getfloat", f);
    }
    // void putfloat(float)
    {
        std::vector<Type *> params = {Type::getFloatTy()};
        FunctionType *ft = FunctionType::get(Type::getVoidTy(), params);
        Function *f = Function::create(ft, "putfloat", module_);
        addFunction("putfloat", f);
    }
    // int getfarray(float a[])
    {
        std::vector<Type *> params = {Type::getFloatPtrTy()};
        FunctionType *ft = FunctionType::get(Type::getInt32Ty(), params);
        Function *f = Function::create(ft, "getfarray", module_);
        addFunction("getfarray", f);
    }
    // void putfarray(int n, float a[])
    {
        std::vector<Type *> params = {Type::getInt32Ty(), Type::getFloatPtrTy()};
        FunctionType *ft = FunctionType::get(Type::getVoidTy(), params);
        Function *f = Function::create(ft, "putfarray", module_);
        addFunction("putfarray", f);
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
    if (ctx->funcType()->VOID()) {
        retTy = Type::getVoidTy();
    } else if (ctx->funcType()->FLOAT()) {
        retTy = Type::getFloatTy();
    }

    // Parse function parameters
    std::vector<Type *> paramTypes;
    std::vector<std::string> paramNames;

    if (ctx->funcFParams()) {
        for (auto paramCtx : ctx->funcFParams()->funcFParam()) {
            std::string paramName = paramCtx->IDENT()->getText();
            paramNames.push_back(paramName);

            Type *baseTy = Type::getInt32Ty();
            if (paramCtx->bType()->FLOAT()) {
                baseTy = Type::getFloatTy();
            }

            int ptrDepth = getPointerDepth(paramCtx->pointer());
            Type *paramBase = applyPointerDepth(baseTy, ptrDepth);

            // Check if it's an array parameter (has LBRACK)
            if (!paramCtx->LBRACK().empty() && ptrDepth == 0) {
                // Array parameter: build pointer to remaining dimensions
                std::vector<int> dims = collectDimensions(paramCtx->constExp());
                Type *elemTy = baseTy;
                if (!dims.empty()) {
                    elemTy = buildArrayType(elemTy, dims);
                }
                paramTypes.push_back(PointerType::get(elemTy));
            } else {
                // Regular parameter (int/float/pointer)
                paramTypes.push_back(paramBase);
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
    std::string entryName = getUniqueName("entry");
    BasicBlock *entry = BasicBlock::create(entryName, f);
    builder_.setInsertPoint(entry);
    // used_names_.insert("entry"); // Already inserted by getUniqueName

    // Push new scope for function parameters
    pushScope();

    // Set argument names and add to symbol table
    auto &args = f->getArgs();
    for (size_t i = 0; i < args.size(); ++i) {
        std::string uniqueArgName = getUniqueName(paramNames[i]);
        args[i]->setName(uniqueArgName);
        
        // Register parameter name to avoid conflict with local variables
        // used_names_.insert(paramNames[i]); // Already inserted by getUniqueName

        // Allocate space for parameter and store it
        std::string addrName = getUniqueName(paramNames[i] + ".addr");
        AllocaInst *alloca = createEntryBlockAlloca(paramTypes[i], addrName);
        builder_.createStore(args[i], alloca);
        
        // Add to symbol table
        // Note: For array params (pointers), we might need to handle them differently
        // But for now, treating them as local variables (alloca) storing the pointer seems consistent
        // with SysY spec where array params are decayed to pointers.
        addSymbol(paramNames[i], alloca, paramTypes[i]);
    }

    // Visit function body (block will handle its own scope)
    visitChildren(ctx->block());

    // Pop function scope
    popScope();

    // Ensure function has a terminator
    BasicBlock *currentBB = builder_.GetInsertBlock();
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
    auto *decl = dynamic_cast<SysYParser::VarDeclContext *>(ctx->parent);
    if (decl) {
        if (decl->bType()->FLOAT()) {
            baseTy = Type::getFloatTy();
        } else if (decl->bType()->STRUCT()) {
            std::string stName = decl->bType()->IDENT()->getText();
             if (struct_types_.count(stName)) {
                  baseTy = struct_types_[stName];
             } else {
                  std::cerr << "Undefined struct type: " << stName << std::endl;
             }
        }
    }
    
    int ptrDepth = getPointerDepth(ctx->pointer());
    Type *ptrBase = applyPointerDepth(baseTy, ptrDepth);
    auto dims = collectDimensions(ctx->constExp());
    Type *varTy = dims.empty() ? ptrBase : buildArrayType(ptrBase, dims);
    bool isArray = !dims.empty();
    bool isPointer = ptrDepth > 0;

    if (isGlobalScope()) {
        Constant *init = nullptr;
        if (ctx->initVal()) {
            if (isArray || varTy->isStructTy()) {
                init = buildVarInitializer(varTy, ctx->initVal());
            } else if (ctx->initVal()->exp()) {
                 // For global scalar, must evaluate to constant
                 // But wait, initVal->exp() is meant for run-time init of locals.
                 // For globals, it MUST be const.
                 // SysY spec says globals must be initialized with const.
                 // Use evaluators.
                 Constant *c = evalConstExp(ctx->initVal()->exp());
                 // Cast if needed
                 if (baseTy->isIntegerTy() && c->getType()->isFloatTy()) {
                     c = ConstantInt::get((int)std::dynamic_pointer_cast<ConstantFP>(std::shared_ptr<Constant>(c))->getValue()); // wait, raw pointer
                     c = ConstantInt::get((int)static_cast<ConstantFP*>(c)->getValue());
                 } else if (baseTy->isFloatTy() && c->getType()->isIntegerTy()) {
                     c = ConstantFP::get((float)static_cast<ConstantInt*>(c)->getValue());
                 }
                 init = c;
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
            if (isArray || varTy->isStructTy()) {
                emitLocalInitializer(alloca, varTy, ctx->initVal());
            } else if (ctx->initVal()->exp()) {
                Value *val = std::any_cast<Value *>(visit(ctx->initVal()->exp()));
                if (isPointer) {
                    builder_.createStore(val, alloca);
                } else {
                    val = castTo(val, baseTy, builder_.GetInsertBlock());
                    builder_.createStore(val, alloca);
                }
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
    auto *decl = dynamic_cast<SysYParser::ConstDeclContext *>(ctx->parent);
    if (decl) {
        if (decl->bType()->FLOAT()) {
            baseTy = Type::getFloatTy();
        } else if (decl->bType()->STRUCT()) {
             std::string stName = decl->bType()->IDENT()->getText();
             if (struct_types_.count(stName)) {
                  baseTy = struct_types_[stName];
             } else {
                  std::cerr << "Undefined struct type: " << stName << std::endl;
             }
        }
    }

    int ptrDepth = getPointerDepth(ctx->pointer());
    Type *ptrBase = applyPointerDepth(baseTy, ptrDepth);
    auto dims = collectDimensions(ctx->constExp());
    Type *varTy = dims.empty() ? ptrBase : buildArrayType(ptrBase, dims);
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
    Constant *c = evalConstExp(ctx->addExp());
    return static_cast<Value *>(c);
}

// ==================== Assignment Statement ====================

std::any CodeGenVisitor::visitAssignStmt(SysYParser::AssignStmtContext *ctx) {
    // stmt : lVal ASSIGN exp SEMICOLON
    auto *lval = ctx->lVal();
    if (!lval) {
        return nullptr;
    }

    // Evaluate the expression
    auto val_any = visit(ctx->exp());
    Value *val = std::any_cast<Value *>(val_any);

    Type *elemTy = nullptr;
    Value *addr = getLValAddress(lval, &elemTy);
    if (!addr) {
        std::cerr << "Error: Invalid assignment target (addr is null)" << std::endl;
        return nullptr;
    }
    if (!elemTy) {
         // Should not happen if addr is not null
         if (addr->getType()->isPointerTy()) {
             elemTy = static_cast<PointerType*>(addr->getType())->getElementType();
         } else {
             return nullptr;
         }
    }
    
    if (elemTy->isArrayTy()) {
        std::cerr << "Error: Cannot assign to array" << std::endl;
        return nullptr;
    }

    if (elemTy->isPointerTy()) {
        builder_.createStore(val, addr);
        return nullptr;
    }

    val = castTo(val, elemTy, builder_.GetInsertBlock());
    builder_.createStore(val, addr);
    return nullptr;
}

// ==================== Return Statement ====================

std::any CodeGenVisitor::visitReturnStmt(SysYParser::ReturnStmtContext *ctx) {
    if (ctx->exp()) {
        auto val_any = visit(ctx->exp());
        Value *val = std::any_cast<Value *>(val_any);

        if (current_function_) {
            Type *retTy = current_function_->getFunctionType()->getReturnType();
            val = castTo(val, retTy, builder_.GetInsertBlock());
        }

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
    if (condVal->getType()->isFloatTy()) {
        ConstantFP *zero = ConstantFP::get(0.0f);
        FCmpInst *cmp = new FCmpInst(FCmpInst::UNE, condVal, zero, builder_.GetInsertBlock());
        cmp->setName(genName());
        condVal = cmp;
    } else if (condVal->getType()->isIntegerTy()) {
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
    BasicBlock *currentBB = builder_.GetInsertBlock();
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
        
        currentBB = builder_.GetInsertBlock();
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
    if (condVal->getType()->isFloatTy()) {
        ConstantFP *zero = ConstantFP::get(0.0f);
        FCmpInst *cmp = new FCmpInst(FCmpInst::UNE, condVal, zero, builder_.GetInsertBlock());
        cmp->setName(genName());
        condVal = cmp;
    } else if (condVal->getType()->isIntegerTy()) {
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
    BasicBlock *currentBB = builder_.GetInsertBlock();
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
        
        Type *finalTy = getUpgradedType(lhs->getType(), rhs->getType());
        lhs = castTo(lhs, finalTy, builder_.GetInsertBlock());
        rhs = castTo(rhs, finalTy, builder_.GetInsertBlock());

        Value *cmp = nullptr;
        if (finalTy->isFloatTy()) {
            if (ctx->LT()) cmp = new FCmpInst(FCmpInst::OLT, lhs, rhs, builder_.GetInsertBlock());
            else if (ctx->GT()) cmp = new FCmpInst(FCmpInst::OGT, lhs, rhs, builder_.GetInsertBlock());
            else if (ctx->LE()) cmp = new FCmpInst(FCmpInst::OLE, lhs, rhs, builder_.GetInsertBlock());
            else if (ctx->GE()) cmp = new FCmpInst(FCmpInst::OGE, lhs, rhs, builder_.GetInsertBlock());
        } else {
            if (ctx->LT()) cmp = builder_.createICmpLT(lhs, rhs);
            else if (ctx->GT()) cmp = builder_.createICmpGT(lhs, rhs);
            else if (ctx->LE()) cmp = builder_.createICmpLE(lhs, rhs);
            else if (ctx->GE()) cmp = builder_.createICmpGE(lhs, rhs);
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
        
        Type *finalTy = getUpgradedType(lhs->getType(), rhs->getType());
        lhs = castTo(lhs, finalTy, builder_.GetInsertBlock());
        rhs = castTo(rhs, finalTy, builder_.GetInsertBlock());

        Value *cmp = nullptr;
        if (finalTy->isFloatTy()) {
             if (ctx->EQ()) cmp = new FCmpInst(FCmpInst::OEQ, lhs, rhs, builder_.GetInsertBlock());
             else cmp = new FCmpInst(FCmpInst::ONE, lhs, rhs, builder_.GetInsertBlock());
        } else {
             if (ctx->EQ()) cmp = builder_.createICmpEQ(lhs, rhs);
             else cmp = builder_.createICmpNE(lhs, rhs);
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
        if (lhs->getType()->isFloatTy()) {
             ConstantFP *zero = ConstantFP::get(0.0f);
             FCmpInst *cmp = new FCmpInst(FCmpInst::UNE, lhs, zero, builder_.GetInsertBlock());
             cmp->setName(genName());
             lhsBool = cmp;
        } else if (lhs->getType()->isIntegerTy()) {
             IntegerType *intTy = static_cast<IntegerType *>(lhs->getType());
             if (intTy->getBitWidth() != 1) {
                 ConstantInt *zero = ConstantInt::get(0);
                 ICmpInst *cmp = builder_.createICmpNE(lhs, zero);
                 cmp->setName(genName());
                 lhsBool = cmp;
             }
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
        if (rhs->getType()->isFloatTy()) {
             ConstantFP *zero = ConstantFP::get(0.0f);
             FCmpInst *cmp = new FCmpInst(FCmpInst::UNE, rhs, zero, builder_.GetInsertBlock());
             cmp->setName(genName());
             rhsBool = cmp;
        } else if (rhs->getType()->isIntegerTy()) {
             IntegerType *intTy = static_cast<IntegerType *>(rhs->getType());
             if (intTy->getBitWidth() != 1) {
                 ConstantInt *zero = ConstantInt::get(0);
                 ICmpInst *cmp = builder_.createICmpNE(rhs, zero);
                 cmp->setName(genName());
                 rhsBool = cmp;
             }
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
        if (lhs->getType()->isFloatTy()) {
             ConstantFP *zero = ConstantFP::get(0.0f);
             FCmpInst *cmp = new FCmpInst(FCmpInst::UNE, lhs, zero, builder_.GetInsertBlock());
             cmp->setName(genName());
             lhsBool = cmp;
        } else if (lhs->getType()->isIntegerTy()) {
             IntegerType *intTy = static_cast<IntegerType *>(lhs->getType());
             if (intTy->getBitWidth() != 1) {
                 ConstantInt *zero = ConstantInt::get(0);
                 ICmpInst *cmp = builder_.createICmpNE(lhs, zero);
                 cmp->setName(genName());
                 lhsBool = cmp;
             }
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
        if (rhs->getType()->isFloatTy()) {
             ConstantFP *zero = ConstantFP::get(0.0f);
             FCmpInst *cmp = new FCmpInst(FCmpInst::UNE, rhs, zero, builder_.GetInsertBlock());
             cmp->setName(genName());
             rhsBool = cmp;
        } else if (rhs->getType()->isIntegerTy()) {
             IntegerType *intTy = static_cast<IntegerType *>(rhs->getType());
             if (intTy->getBitWidth() != 1) {
                 ConstantInt *zero = ConstantInt::get(0);
                 ICmpInst *cmp = builder_.createICmpNE(rhs, zero);
                 cmp->setName(genName());
                 rhsBool = cmp;
             }
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

Type *CodeGenVisitor::getUpgradedType(Type *t1, Type *t2) {
    if (t1->isFloatTy() || t2->isFloatTy()) return Type::getFloatTy();
    return Type::getInt32Ty();
}

Value *CodeGenVisitor::castTo(Value *val, Type *targetTy, BasicBlock *currBB) {
    Type *srcTy = val->getType();
    if (srcTy == targetTy) return val;
    
    if (targetTy->isFloatTy()) {
        if (srcTy->isIntegerTy()) {
            SIToFPInst *inst = new SIToFPInst(val, targetTy, currBB);
            inst->setName(genName());
            return inst;
        }
    } else if (targetTy->isIntegerTy()) {
        if (srcTy->isFloatTy()) {
            FPToSIInst *inst = new FPToSIInst(val, targetTy, currBB);
            inst->setName(genName());
            return inst;
        }
    }
    return val;
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

        bool lhsPtr = lhs && lhs->getType()->isPointerTy();
        bool rhsPtr = rhs && rhs->getType()->isPointerTy();
        if ((ctx->PLUS() || ctx->MINUS()) && (lhsPtr || rhsPtr)) {
            bool rhsInt = rhs && rhs->getType()->isIntegerTy();
            bool lhsInt = lhs && lhs->getType()->isIntegerTy();
            if (lhsPtr && rhsInt) {
                Value *gep = createPointerOffset(lhs, rhs, ctx->MINUS() != nullptr);
                if (gep) {
                    gep->setName(genName());
                    return static_cast<Value *>(gep);
                }
            }
            if (rhsPtr && lhsInt && ctx->PLUS()) {
                Value *gep = createPointerOffset(rhs, lhs, false);
                if (gep) {
                    gep->setName(genName());
                    return static_cast<Value *>(gep);
                }
            }
        }
        
        Type *finalTy = getUpgradedType(lhs->getType(), rhs->getType());
        lhs = castTo(lhs, finalTy, builder_.GetInsertBlock());
        rhs = castTo(rhs, finalTy, builder_.GetInsertBlock());
        
        BinaryInst *bin = nullptr;
        if (finalTy->isFloatTy()) {
             if (ctx->PLUS()) bin = builder_.createFAdd(lhs, rhs);
             else bin = builder_.createFSub(lhs, rhs);
        } else {
             if (ctx->PLUS()) bin = builder_.createAdd(lhs, rhs);
             else bin = builder_.createSub(lhs, rhs);
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
        
        Type *finalTy = getUpgradedType(lhs->getType(), rhs->getType());
        // Mod only supports int
        if (ctx->MOD()) {
            // Force int
            lhs = castTo(lhs, Type::getInt32Ty(), builder_.GetInsertBlock());
            rhs = castTo(rhs, Type::getInt32Ty(), builder_.GetInsertBlock());
            BinaryInst *bin = builder_.createSRem(lhs, rhs);
            bin->setName(genName());
            return static_cast<Value *>(bin);
        }

        lhs = castTo(lhs, finalTy, builder_.GetInsertBlock());
        rhs = castTo(rhs, finalTy, builder_.GetInsertBlock());

        BinaryInst *bin = nullptr;
        if (finalTy->isFloatTy()) {
            if (ctx->MUL()) bin = builder_.createFMul(lhs, rhs);
            else if (ctx->DIV()) bin = builder_.createFDiv(lhs, rhs);
        } else {
            if (ctx->MUL()) bin = builder_.createMul(lhs, rhs);
            else if (ctx->DIV()) bin = builder_.createSDiv(lhs, rhs);
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
            if (val->getType()->isFloatTy()) {
                ConstantFP *zero = ConstantFP::get(0.0f);
                BinaryInst *bin = builder_.createFSub(zero, val);
                bin->setName(genName());
                return static_cast<Value *>(bin);
            }
            ConstantInt *zero = ConstantInt::get(0);
            BinaryInst *bin = builder_.createSub(zero, val);
            bin->setName(genName());
            return static_cast<Value *>(bin);
        } else if (op == "!") {
            // logical not: compute icmp eq with zero
            Value *cmp;
            if (val->getType()->isFloatTy()) {
                 cmp = new FCmpInst(FCmpInst::OEQ, val, ConstantFP::get(0.0f), builder_.GetInsertBlock());
            } else {
                 ConstantInt *zero = ConstantInt::get(0);
                 cmp = builder_.createICmpEQ(val, zero);
            }
            cmp->setName(genName());
            // Extend i1 to i32
            ZExtInst *zext = builder_.createZExt(cmp, Type::getInt32Ty());
            zext->setName(genName());
            return static_cast<Value *>(zext);
        } else if (op == "*") {
            if (!val || !val->getType()->isPointerTy()) {
                return static_cast<Value *>(nullptr);
            }
            Type *elemTy = static_cast<PointerType *>(val->getType())->getElementType();
            if (elemTy->isArrayTy()) {
                std::vector<Value *> idx = {ConstantInt::get(Type::getInt64Ty(), 0), ConstantInt::get(Type::getInt64Ty(), 0)};
                Value *decayed = builder_.createGEP(val, idx);
                decayed->setName(genName());
                return static_cast<Value *>(decayed);
            }
            LoadInst *load = builder_.createLoad(elemTy, val);
            load->setName(genName());
            return static_cast<Value *>(load);
        } else if (op == "&") {
            Value *addr = nullptr;
            Type *elemTy = nullptr;
            if (ctx->unaryExp()->primaryExp() && ctx->unaryExp()->primaryExp()->lVal()) {
                addr = getLValAddress(ctx->unaryExp()->primaryExp()->lVal(), &elemTy);
            } else if (ctx->unaryExp()->unaryOp() && ctx->unaryExp()->unaryOp()->getText() == "*") {
                addr = std::any_cast<Value *>(visit(ctx->unaryExp()->unaryExp()));
            }
            return static_cast<Value *>(addr);
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



std::any CodeGenVisitor::visitNumber(SysYParser::NumberContext *ctx) {
    if (ctx->FLOAT_CONST()) {
        float val = std::stof(ctx->FLOAT_CONST()->getText());
        return static_cast<Value *>(ConstantFP::get(val));
    }

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

Constant *CodeGenVisitor::evalConstExp(SysYParser::ConstExpContext *ctx) {
    if (!ctx) return ConstantInt::get(0);
    return evalConstExp(ctx->addExp());
}

Constant *CodeGenVisitor::evalConstExp(SysYParser::ExpContext *ctx) {
    if (!ctx) return ConstantInt::get(0);
    return evalConstExp(ctx->addExp());
}

Constant *CodeGenVisitor::evalConstExp(SysYParser::AddExpContext *ctx) {
    if (ctx->addExp()) {
        Constant *left = evalConstExp(ctx->addExp());
        Constant *right = evalConstMulExp(ctx->mulExp());
        
        bool isFloat = left->getType()->isFloatTy() || right->getType()->isFloatTy();
        float lval = 0, rval = 0;
        int lval_i = 0, rval_i = 0;

        if (auto *lf = dynamic_cast<ConstantFP*>(left)) lval = lf->getValue();
        else if (auto *li = dynamic_cast<ConstantInt*>(left)) lval = (float)li->getValue();
        
        if (auto *rf = dynamic_cast<ConstantFP*>(right)) rval = rf->getValue();
        else if (auto *ri = dynamic_cast<ConstantInt*>(right)) rval = (float)ri->getValue();
        
        if (isFloat) {
             if (ctx->PLUS()) return ConstantFP::get(lval + rval);
             return ConstantFP::get(lval - rval);
        }
        
        lval_i = dynamic_cast<ConstantInt*>(left)->getValue();
        rval_i = dynamic_cast<ConstantInt*>(right)->getValue();
        if (ctx->PLUS()) return ConstantInt::get(lval_i + rval_i);
        return ConstantInt::get(lval_i - rval_i);
    }
    return evalConstMulExp(ctx->mulExp());
}

Constant *CodeGenVisitor::evalConstMulExp(SysYParser::MulExpContext *ctx) {
    if (ctx->mulExp()) {
        Constant *left = evalConstMulExp(ctx->mulExp());
        Constant *right = evalConstUnaryExp(ctx->unaryExp());
        
        bool isFloat = left->getType()->isFloatTy() || right->getType()->isFloatTy();
        float lval = 0, rval = 0;
        int lval_i = 0, rval_i = 0;

        if (auto *lf = dynamic_cast<ConstantFP*>(left)) lval = lf->getValue();
        else if (auto *li = dynamic_cast<ConstantInt*>(left)) lval = (float)li->getValue();
        
        if (auto *rf = dynamic_cast<ConstantFP*>(right)) rval = rf->getValue();
        else if (auto *ri = dynamic_cast<ConstantInt*>(right)) rval = (float)ri->getValue();

        if (isFloat) {
             if (ctx->MUL()) return ConstantFP::get(lval * rval);
             else if (ctx->DIV()) return ConstantFP::get(rval == 0 ? 0 : lval / rval);
             else return ConstantFP::get(0); // Mod not supported for float
        }
        
        lval_i = dynamic_cast<ConstantInt*>(left)->getValue();
        rval_i = dynamic_cast<ConstantInt*>(right)->getValue();
        
        if (ctx->MUL()) return ConstantInt::get(lval_i * rval_i);
        if (ctx->DIV()) return ConstantInt::get(rval_i == 0 ? 0 : lval_i / rval_i);
        // Mod
        int m = 0;
        if (rval_i != 0) {
             m = lval_i % rval_i;
        }
        return ConstantInt::get(m);
    }
    return evalConstUnaryExp(ctx->unaryExp());
}

Constant *CodeGenVisitor::evalConstUnaryExp(SysYParser::UnaryExpContext *ctx) {
    if (ctx->primaryExp()) {
        return evalConstPrimaryExp(ctx->primaryExp());
    }
    if (ctx->unaryOp() && ctx->unaryExp()) {
        Constant *val = evalConstUnaryExp(ctx->unaryExp());
        bool isFloat = val->getType()->isFloatTy();
        
        if (ctx->unaryOp()->PLUS()) {
            return val;
        }
        if (ctx->unaryOp()->MINUS()) {
            if (isFloat) return ConstantFP::get(-dynamic_cast<ConstantFP*>(val)->getValue());
            return ConstantInt::get(-dynamic_cast<ConstantInt*>(val)->getValue());
        }
        if (ctx->unaryOp()->NOT()) {
            if (isFloat) return ConstantInt::get(dynamic_cast<ConstantFP*>(val)->getValue() == 0 ? 1 : 0);
            return ConstantInt::get(dynamic_cast<ConstantInt*>(val)->getValue() == 0 ? 1 : 0);
        }
    }
    return ConstantInt::get(0);
}

Constant *CodeGenVisitor::evalConstPrimaryExp(SysYParser::PrimaryExpContext *ctx) {
    if (ctx->number()) {
        return evalConstNumber(ctx->number());
    } else if (ctx->LPAREN()) {
        return evalConstExp(ctx->exp());
    } else if (ctx->lVal()) {
        return evalConstLVal(ctx->lVal());
    }
    return ConstantInt::get(0);
}

Constant *CodeGenVisitor::evalConstNumber(SysYParser::NumberContext *ctx) {
    if (ctx->FLOAT_CONST()) {
        return ConstantFP::get(std::stof(ctx->FLOAT_CONST()->getText()));
    }
    std::string txt;
    if (ctx->DEC_INT_CONST()) txt = ctx->DEC_INT_CONST()->getText();
    else if (ctx->OCT_INT_CONST()) txt = ctx->OCT_INT_CONST()->getText();
    else if (ctx->HEX_INT_CONST()) txt = ctx->HEX_INT_CONST()->getText();
    else txt = "0";
    
    int val = 0;
    if (!txt.empty() && (txt.rfind("0x", 0) == 0 || txt.rfind("0X", 0) == 0)) {
        val = std::stoi(txt.substr(2), nullptr, 16);
    } else if (!txt.empty() && txt.size() > 1 && txt[0] == '0') {
        val = std::stoi(txt.substr(1), nullptr, 8);
    } else {
        val = std::stoi(txt);
    }
    return ConstantInt::get(val);
}

Constant *CodeGenVisitor::evalConstLVal(SysYParser::LValContext *ctx) {
    if (!ctx) return ConstantInt::get(0);
    
    if (auto *idCtx = dynamic_cast<SysYParser::LValIdContext *>(ctx)) {
        std::string ident = idCtx->IDENT()->getText();
        Constant *constVal = lookupConstValue(ident);
        if (!constVal) {
             // Maybe it is a global variable logic address?
             // But for compile time constant, must be resolvable.
             return ConstantInt::get(0);
        }
        return constVal;
    } else if (auto *arrCtx = dynamic_cast<SysYParser::LValArrayContext *>(ctx)) {
        Constant *base = evalConstLVal(arrCtx->lVal());
        Constant *idxC = evalConstExp(arrCtx->exp());
        int idx = 0;
        if (auto *ci = dynamic_cast<ConstantInt*>(idxC)) idx = ci->getValue();
        else if (auto *cf = dynamic_cast<ConstantFP*>(idxC)) idx = (int)cf->getValue();
        
        if (auto *arr = dynamic_cast<ConstantArray *>(base)) {
            const auto &elems = arr->getElements();
            if (idx < 0 || static_cast<size_t>(idx) >= elems.size()) {
                 return ConstantInt::get(0);
            }
            return elems[idx];
        }
    }
    // Member access not supported in constant expressions for now
    return ConstantInt::get(0);
}

std::vector<int> CodeGenVisitor::collectDimensions(const std::vector<SysYParser::ConstExpContext *> &dimCtxs) {
    std::vector<int> dims;
    dims.reserve(dimCtxs.size());
    for (auto *ctx : dimCtxs) {
        Constant *c = evalConstExp(ctx);
        int val = 0;
        if (auto *ci = dynamic_cast<ConstantInt*>(c)) val = ci->getValue();
        else if (auto *cf = dynamic_cast<ConstantFP*>(c)) val = (int)cf->getValue();
        dims.push_back(val);
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
    if (ty->isFloatTy()) {
        return ConstantFP::get(0.0f);
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
        Constant *val = nullptr;
        if (ctx && ctx->constExp()) {
            val = evalConstExp(ctx->constExp());
        }
        if (!val) return getZeroInitializer(ty);
        
        // Cast
        if (ty->isIntegerTy() && val->getType()->isFloatTy()) {
             return ConstantInt::get((int)dynamic_cast<ConstantFP*>(val)->getValue());
        } else if (ty->isFloatTy() && val->getType()->isIntegerTy()) {
             return ConstantFP::get((float)dynamic_cast<ConstantInt*>(val)->getValue());
        }
        return val;
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
        Constant *leaf = evalConstExp(ctx->constExp());
        Constant *firstVal = nullptr;
        // Cast leaf to element type
        if (arrTy->getElementType()->isIntegerTy() && leaf->getType()->isFloatTy()) 
            firstVal = ConstantInt::get((int)dynamic_cast<ConstantFP*>(leaf)->getValue());
        else if (arrTy->getElementType()->isFloatTy() && leaf->getType()->isIntegerTy())
            firstVal = ConstantFP::get((float)dynamic_cast<ConstantInt*>(leaf)->getValue());
        else firstVal = leaf;
        
        elements.push_back(firstVal);
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
    if (!ty->isArrayTy() && !ty->isStructTy()) {
        Constant *val = nullptr;
        if (ctx && ctx->exp()) {
            val = evalConstExp(ctx->exp());
        }
        
        if (!val) {
            val = getZeroInitializer(ty);
        }
        // No casting needed for Constant? Or do we need to cast?
        // castTo returns Value*. We need Constant*.
        // Implementing cast logic for Constants:
        if (ty->isIntegerTy() && val->getType()->isFloatTy()) {
             float fv = dynamic_cast<ConstantFP*>(val)->getValue();
             return ConstantInt::get((int)fv);
        } else if (ty->isFloatTy() && val->getType()->isIntegerTy()) {
             int iv = dynamic_cast<ConstantInt*>(val)->getValue();
             return ConstantFP::get((float)iv);
        }
        return val;
    }

    if (ty->isStructTy()) {
         auto *stTy = static_cast<StructType *>(ty);
         std::vector<Constant *> elements;
         if (!ctx) {
             for (unsigned i = 0; i < stTy->getNumElements(); ++i) {
                 elements.push_back(getZeroInitializer(stTy->getElementType(i)));
             }
             return ConstantStruct::get(stTy, std::move(elements));
         }
         
         auto subInits = ctx->initVal();
         size_t idx = 0;
         for (unsigned i = 0; i < stTy->getNumElements(); ++i) {
             if (idx < subInits.size()) {
                 elements.push_back(buildVarInitializer(stTy->getElementType(i), subInits[idx]));
                 ++idx;
             } else {
                 elements.push_back(getZeroInitializer(stTy->getElementType(i)));
             }
         }
         return ConstantStruct::get(stTy, std::move(elements));
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
    if (!ty->isArrayTy() && !ty->isStructTy()) {
        Value *val = nullptr;
        if (ctx && ctx->exp()) {
            val = std::any_cast<Value *>(visit(ctx->exp()));
        }
        if (!val) {
            val = getZeroInitializer(ty);
        }
        val = castTo(val, ty, builder_.GetInsertBlock());

        std::vector<Value *> gepIdx;
        auto *ptrTy = dynamic_cast<PointerType *>(ptr->getType());
        
        // For array decay or initial pointer
        if (ptrTy && (ptrTy->getElementType()->isArrayTy() || ptrTy->getElementType()->isStructTy())) {
             gepIdx.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
        }
        
        // Walk down the indices
        Type *currentTy = ptrTy ? ptrTy->getElementType() : nullptr;
        
        for (int idx : indices) {
            if (currentTy && currentTy->isStructTy()) {
                 gepIdx.push_back(ConstantInt::get(Type::getInt32Ty(), idx)); // Struct uses i32
                 currentTy = static_cast<StructType*>(currentTy)->getElementType(idx);
            } else if (currentTy && currentTy->isArrayTy()) {
                 gepIdx.push_back(ConstantInt::get(Type::getInt64Ty(), idx));
                 currentTy = static_cast<ArrayType*>(currentTy)->getElementType();
            } else {
                 // Fallback
                 gepIdx.push_back(ConstantInt::get(Type::getInt64Ty(), idx));
            }
        }

        Value *destPtr = gepIdx.empty() ? ptr : builder_.createGEP(ptr, gepIdx);
        builder_.createStore(val, destPtr);
        return;
    }
    
    if (ty->isStructTy()) {
        auto *stTy = static_cast<StructType *>(ty);
        if (!ctx) {
            for (unsigned i = 0; i < stTy->getNumElements(); ++i) {
                indices.push_back(static_cast<int>(i));
                emitLocalInitRecursive(ptr, stTy->getElementType(i), nullptr, indices);
                indices.pop_back();
            }
            return;
        }
        
        auto subInits = ctx->initVal();
        size_t childIdx = 0;
        // Simple brace handling: 1-to-1 mapping
        for (unsigned i = 0; i < stTy->getNumElements(); ++i) {
            indices.push_back(static_cast<int>(i));
            if (childIdx < subInits.size()) {
                // If member is a struct/array but we have scalar, handle elision?
                // For now assuming explicit braces for simplicity or single scalar recurse
                emitLocalInitRecursive(ptr, stTy->getElementType(i), subInits[childIdx], indices);
                childIdx++;
            } else {
                emitLocalInitRecursive(ptr, stTy->getElementType(i), nullptr, indices);
            }
            indices.pop_back();
        }
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
        Constant *val = init;
        if (!val) {
            val = getZeroInitializer(ty);
        }

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

int CodeGenVisitor::getPointerDepth(SysYParser::PointerContext *ctx) {
    if (!ctx) return 0;
    return static_cast<int>(ctx->MUL().size());
}

Type *CodeGenVisitor::applyPointerDepth(Type *baseTy, int depth) {
    Type *ty = baseTy;
    for (int i = 0; i < depth; ++i) {
        ty = PointerType::get(ty);
    }
    return ty;
}

Value *CodeGenVisitor::createPointerOffset(Value *ptr, Value *idx, bool isSub) {
    if (!ptr || !idx) return ptr;
    Value *offset = promoteToInt64(idx);
    if (!offset) {
        offset = ConstantInt::get(Type::getInt64Ty(), 0);
    }
    if (isSub) {
        Value *zero = ConstantInt::get(Type::getInt64Ty(), 0);
        BinaryInst *sub = builder_.createSub(zero, offset);
        sub->setName(genName());
        offset = sub;
    }
    std::vector<Value *> gepIdx = {offset};
    Value *gep = builder_.createGEP(ptr, gepIdx);
    gep->setName(genName());
    return gep;
}

Value *CodeGenVisitor::getLValAddress(SysYParser::LValContext *ctx, Type **elemTy) {
    if (auto *idCtx = dynamic_cast<SysYParser::LValIdContext *>(ctx)) {
        std::string name = idCtx->IDENT()->getText();
        SymbolInfo *info = lookupSymbolInfo(name);
        if (!info) {
             std::cerr << "Undefined variable (getLValAddress): " << name << std::endl;
             return nullptr;
        }
        if (elemTy) *elemTy = info->type;
        return info->value;
    } 
    else if (auto *arrCtx = dynamic_cast<SysYParser::LValArrayContext *>(ctx)) {
        Type *baseTy = nullptr;
        Value *baseAddr = getLValAddress(arrCtx->lVal(), &baseTy);
        if (!baseAddr || !baseTy) return nullptr;
        
        // Evaluate index
        auto idxAny = visit(arrCtx->exp());
        Value *idxVal = std::any_cast<Value *>(idxAny);
        
        // Pointer arithmetic
        Value *ptr = baseAddr;
        
        if (baseTy->isArrayTy()) {
             std::vector<Value *> idxList;
             idxList.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
             idxList.push_back(idxVal);
             
             if (elemTy) *elemTy = static_cast<ArrayType *>(baseTy)->getElementType();
             Value *gep = builder_.createGEP(ptr, idxList); // ptr is &a
             return gep;
        } else if (baseTy->isPointerTy()) {
            PointerType *ptrTy = static_cast<PointerType *>(baseTy);
             // If base is a pointer variable (e.g., int *p), baseAddr is &p (i32**).
             // baseTy is returned as the type of *content* of lVal.
             // Wait, lookupSymbolInfo returns type of the variable content?
             // If int a[10], info->type is [10 x i32]. 
             // If int *p, info->type is i32*. (Actually Type represents the value type, not the allow type?)
             // No, in my symbol table: "Value *value" is the result of alloca. "Type *type" is the allocated type.
             // If int a[10], type is [10 x i32]. value is [10 x i32]*.
             // If int *p, type is i32*. value is i32**.
             
             // But getLValAddress signature says "Type **elemTy".
             // If I follow recursion:
             // visitLValId returns info->value (address) and info->type (type of content? or type of pointer?)
             // Let's assume info->type is the type of the VARIABLE (content).
             
             // Case 1: int a[10]. lValId returns &a. elemTy = [10 x i32].
             // We want a[i].
             // baseTy = [10 x i32]. BaseAddr = &a.
             // We need &a[i]. GEP(&a, 0, i).
             
             // Case 2: int *p. lValId returns &p. elemTy = i32*.
             // We want p[i].
             // baseTy = i32*. BaseAddr = &p.
             // We need to LOAD p first -> p_val.
             // Then GEP(p_val, i).
             
             if (baseTy->isArrayTy()) {
                 std::vector<Value *> idxList;
                 idxList.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
                 idxList.push_back(idxVal);
                 
                 if (elemTy) *elemTy = static_cast<ArrayType *>(baseTy)->getElementType();
                 Value *gep = builder_.createGEP(ptr, idxList); // ptr is &a
                 gep->setName(genName());
                 return gep;
             } else if (baseTy->isPointerTy()) {
                 // Must load the pointer first!
                 LoadInst *load = builder_.createLoad(baseTy, ptr); // ptr is &p
                 load->setName(genName());
                 Value *loadedPtr = load;
                 
                 std::vector<Value *> idxList;
                 idxList.push_back(idxVal);
                 
                 if (elemTy) *elemTy = static_cast<PointerType *>(baseTy)->getElementType();
                 Value *gep = builder_.createGEP(loadedPtr, idxList);
                 gep->setName(genName());
                 return gep;
             }
        }
    }
    else if (auto *memCtx = dynamic_cast<SysYParser::LValMemberContext *>(ctx)) {
         // lVal DOT IDENT
         Type *baseTy = nullptr;
         Value *baseAddr = getLValAddress(memCtx->lVal(), &baseTy);
         if (!baseAddr || !baseTy) return nullptr;
         
         std::string memberName = memCtx->IDENT()->getText();
         
         // baseTy should be StructType, or pointer to StructType?
         // From LValId logic: returns type of content.
         // If struct S s; -> info->type is S. info->value is S*.
         // So baseTy is StructType.
         
         if (baseTy->isStructTy()) {
             StructType *st = static_cast<StructType *>(baseTy);
             std::string stName = st->getName();
             
             if (struct_member_indices_.count(stName) && struct_member_indices_[stName].count(memberName)) {
                 int idx = struct_member_indices_[stName][memberName];
                 std::vector<Value *> idxList;
                 idxList.push_back(ConstantInt::get(Type::getInt32Ty(), 0));
                 idxList.push_back(ConstantInt::get(Type::getInt32Ty(), idx));
                 
                 if (elemTy) *elemTy = st->getElementType(idx);
                 Value *gep = builder_.createGEP(baseAddr, idxList);
                 gep->setName(genName());
                 return gep;
             } else {
                 std::cerr << "Member " << memberName << " not found in struct " << stName << std::endl;
             }
         } else {
             // What if it is a pointer to struct? arrow -> ? NO. SysY uses dot for both?
             // SysY spec: if p is S*, p.x is valid?
             // The grammar says "lVal DOT IDENT".
             // If p is S*, it's a variable of type S*.
             // baseTy is S*.
             // We need to dereference p to get S.
             // Then access member.
             if (baseTy->isPointerTy() && static_cast<PointerType*>(baseTy)->getElementType()->isStructTy()) {
                  // Implicit dereference?
                  // NOTE: Usually C uses ->. SysY might use . for both?
                  // Or SysY only supports . for structs?
                  // Assuming "lVal DOT IDENT" expects lVal to be a struct.
                  // If lVal is a pointer, it's an error?
                  // But if we support struct parameters, they are pointers?
                  // Let's implement implicit dereference if baseTy is pointer to struct.
                  
                  PointerType *pt = static_cast<PointerType*>(baseTy);
                  StructType *st = static_cast<StructType*>(pt->getElementType());
                  std::string stName = st->getName();
                  
                  // Load the pointer
                  LoadInst *load = builder_.createLoad(baseTy, baseAddr);
                  load->setName(genName());
                  Value *loadedPtr = load;

                  if (struct_member_indices_.count(stName) && struct_member_indices_[stName].count(memberName)) {
                     int idx = struct_member_indices_[stName][memberName];
                     std::vector<Value *> idxList;
                     idxList.push_back(ConstantInt::get(Type::getInt32Ty(), 0)); // GEP on pointer: 0 index first? 
                     // Wait, if I have T* p. GEP(p, 0, idx) gives address of member?
                     // Yes.
                     
                     std::vector<Value *> gidx = { ConstantInt::get(Type::getInt32Ty(), 0), ConstantInt::get(Type::getInt32Ty(), idx) };
                     if (elemTy) *elemTy = st->getElementType(idx);
                     // Wait, GEP on pointer p: GEP(p, idx) -> p + idx.
                     // We want p->member. Equivalent to (*p).member.
                     // GEP(p, 0, memberIdx).
                     Value *gep = builder_.createGEP(loadedPtr, gidx);
                     gep->setName(genName());
                     return gep;
                  }
             }
         }
    }
    else if (auto *derefCtx = dynamic_cast<SysYParser::LValDerefContext *>(ctx)) {
         // *unaryExp
         auto valAny = visit(derefCtx->unaryExp());
         Value *val = std::any_cast<Value *>(valAny);
         if (!val) return nullptr;
         
         // val is the pointer value.
         // Address is val.
         // elemTy is what it points to.
         
         if (val->getType()->isPointerTy()) {
             if (elemTy) *elemTy = static_cast<PointerType *>(val->getType())->getElementType();
             return val;
         }
    }
    return nullptr;
}

// ==================== Helper Methods Definitions ====================

AllocaInst *CodeGenVisitor::createEntryBlockAlloca(Type *type, const std::string &name) {
    Function *func = builder_.GetInsertBlock()->getParent();
    BasicBlock *entryBB = func->getBasicBlocks().front();
    IRBuilder tmpBuilder(entryBB);
    if (!entryBB->getInstructions().empty()) {
        auto &insts = entryBB->getInstructions();
         // We insert at the beginning using instruction list splice if possible, 
         // but IRBuilder appends. 
         // For now, let's assume appending is safe if we don't have terminators yet
         // or if we rely on mem2reg later.
         // Actually, if we have a branch in entry block (e.g. for loop), appending alloca at end is UNREACHABLE.
         // We MUST insert at front.
         // Since IRBuilder doesn't support insert at front easily, we can manually Create Alloca and push_front?
         // But Instruction constructor pushes back.
         // We can pop_back and push_front?
         // Yes:
         // AllocaInst *inst = tmpBuilder.createAlloca(type);
         // inst->setName(name);
         // inst->removeFromParent();
         // insts.push_front(inst); // std::list
         // inst->setParent(entryBB);
         // return inst;
    }
    AllocaInst *inst = tmpBuilder.createAlloca(type);
    inst->setName(name);
    if (!entryBB->getInstructions().empty() && entryBB->getInstructions().back() == inst) {
         // Move to front
         inst->getParent()->getInstructions().pop_back();
         inst->getParent()->getInstructions().push_front(inst);
    }
    return inst;
}

Value *CodeGenVisitor::adjustArgumentToParam(Value *argVal, Type *paramTy) {
    if (!argVal) return nullptr;
    Type *argTy = argVal->getType();
    if (argTy == paramTy) return argVal;
    
    if (argTy->isIntegerTy() && paramTy->isFloatTy()) {
        return builder_.createSIToFP(argVal, paramTy);
    }
    if (argTy->isFloatTy() && paramTy->isIntegerTy()) {
        return builder_.createFPToSI(argVal, paramTy);
    }
    return argVal;
}

// ==================== Missing Visitor Implementations ====================

std::any CodeGenVisitor::visitStructDef(SysYParser::StructDefContext *ctx) {
    std::string name = ctx->IDENT()->getText();
    std::vector<Type *> memberTypes;
    std::map<std::string, int> memberIndices;
    
    int idx = 0;
    for (auto *decl : ctx->decl()) {
        // decl : constDecl | varDecl
        if (decl->constDecl()) {
             auto *cd = decl->constDecl();
             Type *baseTy = nullptr;
             if (cd->bType()->INT()) baseTy = Type::getInt32Ty();
             else if (cd->bType()->FLOAT()) baseTy = Type::getFloatTy();
             else if (cd->bType()->STRUCT()) {
                 std::string stName = cd->bType()->IDENT()->getText();
                 if (struct_types_.count(stName)) baseTy = struct_types_[stName];
                 else std::cerr << "Undefined struct " << stName << std::endl;
             }
             
             for (auto *def : cd->constDef()) {
                 std::string memName = def->IDENT()->getText();
                 Type *memTy = baseTy;
                 for (auto *constExp : def->constExp()) {
                      Constant *dimC = evalConstExp(constExp);
                      int dim = 0;
                      if (auto *ci = dynamic_cast<ConstantInt*>(dimC)) dim = ci->getValue();
                      memTy = ArrayType::get(memTy, dim);
                 }
                 memberTypes.push_back(memTy);
                 memberIndices[memName] = idx++;
             }
        } else if (decl->varDecl()) {
             auto *vd = decl->varDecl();
             Type *baseTy = nullptr;
             if (vd->bType()->INT()) baseTy = Type::getInt32Ty();
             else if (vd->bType()->FLOAT()) baseTy = Type::getFloatTy();
             else if (vd->bType()->STRUCT()) {
                 std::string stName = vd->bType()->IDENT()->getText();
                 if (struct_types_.count(stName)) baseTy = struct_types_[stName];
                 else std::cerr << "Undefined struct " << stName << std::endl;
             }
             
             for (auto *def : vd->varDef()) {
                 std::string memName = def->IDENT()->getText();
                 Type *memTy = baseTy;
                 for (auto *constExp : def->constExp()) {
                      Constant *dimC = evalConstExp(constExp);
                      int dim = 0;
                      if (auto *ci = dynamic_cast<ConstantInt*>(dimC)) dim = ci->getValue();
                      memTy = ArrayType::get(memTy, dim);
                 }
                 memberTypes.push_back(memTy);
                 memberIndices[memName] = idx++;
             }
        }
    }
    
    StructType *st = StructType::create(memberTypes, name);
    struct_types_[name] = st;
    struct_member_indices_[name] = memberIndices;

    module_->addStructDefinition(st);
    
    return std::any();
}

std::any CodeGenVisitor::visitForStmt(SysYParser::ForStmtContext *ctx) {
    Function *func = builder_.GetInsertBlock()->getParent();
    BasicBlock *condBB = BasicBlock::create(genBBName("for_cond"), func);
    BasicBlock *bodyBB = BasicBlock::create(genBBName("for_body"), func);
    BasicBlock *incBB = BasicBlock::create(genBBName("for_inc"), func);
    BasicBlock *endBB = BasicBlock::create(genBBName("for_end"), func);
    
    loop_stack_.push_back({incBB, endBB}); // Continue goes to inc, Break goes to end
    
    // Init
    if (ctx->init) {
        visit(ctx->init);
    }
    builder_.createBr(condBB);
    
    // Cond
    builder_.setInsertPoint(condBB);
    if (ctx->cond()) {
        auto condAny = visit(ctx->cond());
        Value *condVal = std::any_cast<Value *>(condAny);
        if (condVal) {
             if (condVal->getType()->isIntegerTy()) {
                  if (static_cast<IntegerType*>(condVal->getType())->getBitWidth() != 1) {
                       condVal = builder_.createICmpNE(condVal, ConstantInt::get(Type::getInt32Ty(), 0));
                  }
             } else if (condVal->getType()->isFloatTy()) {
                  condVal = builder_.createFCmpONE(condVal, ConstantFP::get(0.0f));
             }
             builder_.createCondBr(condVal, bodyBB, endBB);
        } else {
             builder_.createBr(bodyBB);
        }
    } else {
        builder_.createBr(bodyBB);
    }
    
    // Body
    builder_.setInsertPoint(bodyBB);
    visit(ctx->stmt());
    if (!builder_.GetInsertBlock()->getTerminator()) {
        builder_.createBr(incBB);
    }
    
    // Inc
    builder_.setInsertPoint(incBB);
    if (ctx->step) {
         visit(ctx->step);
    }
    builder_.createBr(condBB);
    
    // End
    builder_.setInsertPoint(endBB);
    loop_stack_.pop_back();
    
    return std::any();
}

std::any CodeGenVisitor::visitForInitAssign(SysYParser::ForInitAssignContext *ctx) {
    Type *elemTy = nullptr;
    Value *addr = getLValAddress(ctx->lVal(), &elemTy);
    
    if (addr) {
        auto valAny = visit(ctx->exp());
        Value *val = std::any_cast<Value *>(valAny);
        if (val) {
             val = castTo(val, elemTy, builder_.GetInsertBlock());
             builder_.createStore(val, addr);
        }
    }
    return std::any();
}

std::any CodeGenVisitor::visitForInitExp(SysYParser::ForInitExpContext *ctx) {
    return visit(ctx->exp());
}

std::any CodeGenVisitor::visitLValId(SysYParser::LValIdContext *ctx) {
    Type *elemTy = nullptr;
    Value *addr = getLValAddress(ctx, &elemTy);
    if (!addr) return std::any();
    
    if (elemTy->isArrayTy()) {
        std::vector<Value *> idxList;
        idxList.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
        idxList.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
        Value *gep = builder_.createGEP(addr, idxList);
        gep->setName(genName());
        return gep;
    } else {
        LoadInst *load = builder_.createLoad(elemTy, addr);
        load->setName(genName());
        return (Value*)load;
    }
}

std::any CodeGenVisitor::visitLValArray(SysYParser::LValArrayContext *ctx) {
    Type *elemTy = nullptr;
    Value *addr = getLValAddress(ctx, &elemTy);
    if (!addr) return std::any();
    
    if (elemTy->isArrayTy()) {
        std::vector<Value *> idxList;
        idxList.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
        idxList.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
        Value *gep = builder_.createGEP(addr, idxList);
        gep->setName(genName());
        return gep;
    } else {
        LoadInst *load = builder_.createLoad(elemTy, addr);
        load->setName(genName());
        return (Value*)load;
    }
}

std::any CodeGenVisitor::visitLValMember(SysYParser::LValMemberContext *ctx) {
    Type *elemTy = nullptr;
    Value *addr = getLValAddress(ctx, &elemTy);
    if (!addr) return std::any();
    
    if (elemTy->isArrayTy()) {
        std::vector<Value *> idxList;
        idxList.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
        idxList.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
        Value *gep = builder_.createGEP(addr, idxList);
        gep->setName(genName());
        return gep;
    } else {
        LoadInst *load = builder_.createLoad(elemTy, addr);
        load->setName(genName());
        return (Value*)load;
    }
}

std::any CodeGenVisitor::visitLValDeref(SysYParser::LValDerefContext *ctx) {
    Type *elemTy = nullptr;
    Value *addr = getLValAddress(ctx, &elemTy);
    if (!addr) return std::any();
    
    if (elemTy->isArrayTy()) {
        std::vector<Value *> idxList;
        idxList.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
        idxList.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
        Value *gep = builder_.createGEP(addr, idxList);
        gep->setName(genName());
        return gep;
    } else {
        LoadInst *load = builder_.createLoad(elemTy, addr);
        load->setName(genName());
        return (Value*)load;
    }
}
