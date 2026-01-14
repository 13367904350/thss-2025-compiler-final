#include "visitor/IRGenerator.h"
#include "SysYParser.h"
#include "ir/Constant.h"
#include "ir/Function.h"
#include "ir/BasicBlock.h"
#include <cctype>
#include <typeinfo>

// 提取表达式返回的 Value*
static inline Value *asValue(const std::any &a) {
    if (!a.has_value()) return nullptr;
    if (a.type() == typeid(Value *)) {
        return std::any_cast<Value *>(a);
    }
    if (a.type() == typeid(ConstantInt *)) {
        return std::any_cast<ConstantInt *>(a);
    }
    if (a.type() == typeid(AllocaInst *)) {
        return std::any_cast<AllocaInst *>(a);
    }
    if (a.type() == typeid(LoadInst *)) {
        return std::any_cast<LoadInst *>(a);
    }
    if (a.type() == typeid(BinaryInst *)) {
        return std::any_cast<BinaryInst *>(a);
    }
    return nullptr;
}

static int parseIntLiteral(const std::string &text) {
    if (text.size() > 2 && (text[0] == '0') && (text[1] == 'x' || text[1] == 'X')) {
        return static_cast<int>(std::stoll(text, nullptr, 16));
    }
    if (text.size() > 1 && text[0] == '0' && (text[1] == 'o' || text[1] == 'O')) { // rare format 0o?
        return static_cast<int>(std::stoll(text.substr(2), nullptr, 8));
    }
    if (text.size() > 1 && text[0] == '0' && std::isdigit(text[1])) {
        return static_cast<int>(std::stoll(text, nullptr, 8));
    }
    return static_cast<int>(std::stoll(text, nullptr, 10));
}

int IRGenerator::evalConstExp(SysYParser::ConstExpContext *ctx) {
    if (!ctx) return 0;
    return evalAdd(ctx->addExp());
}

int IRGenerator::evalExpAsConst(SysYParser::ExpContext *ctx) {
    if (!ctx) return 0;
    return evalAdd(ctx->addExp());
}

int IRGenerator::evalAdd(SysYParser::AddExpContext *ctx) {
    if (!ctx) return 0;
    if (!ctx->addExp()) {
        return evalMul(ctx->mulExp());
    }
    int lhs = evalAdd(ctx->addExp());
    int rhs = evalMul(ctx->mulExp());
    if (ctx->PLUS()) {
        return lhs + rhs;
    }
    return lhs - rhs;
}

int IRGenerator::evalMul(SysYParser::MulExpContext *ctx) {
    if (!ctx) return 0;
    if (!ctx->mulExp()) {
        return evalUnary(ctx->unaryExp());
    }
    int lhs = evalMul(ctx->mulExp());
    int rhs = evalUnary(ctx->unaryExp());
    if (ctx->MUL()) {
        return lhs * rhs;
    }
    if (ctx->DIV()) {
        if (rhs == 0) return 0;
        return lhs / rhs;
    }
    if (rhs == 0) return 0;
    int mod = lhs % rhs;
    if ((mod != 0) && ((mod < 0) != (rhs < 0))) {
        mod += rhs;
    }
    return mod;
}

int IRGenerator::evalUnary(SysYParser::UnaryExpContext *ctx) {
    if (!ctx) return 0;
    if (ctx->primaryExp()) {
        return evalPrimary(ctx->primaryExp());
    }
    if (ctx->unaryOp() && ctx->unaryExp()) {
        int val = evalUnary(ctx->unaryExp());
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

int IRGenerator::evalPrimary(SysYParser::PrimaryExpContext *ctx) {
    if (!ctx) return 0;
    if (ctx->number()) {
        return evalNumber(ctx->number());
    }
    if (ctx->LPAREN()) {
        return evalExpAsConst(ctx->exp());
    }
    if (ctx->lVal()) {
        return evalConstLVal(ctx->lVal());
    }
    return 0;
}

int IRGenerator::evalNumber(SysYParser::NumberContext *ctx) {
    if (!ctx) return 0;
    return parseIntLiteral(ctx->getText());
}

int IRGenerator::evalConstLVal(SysYParser::LValContext *ctx) {
    if (!ctx) return 0;
    std::string ident = ctx->IDENT()->getText();
    Symbol *sym = symbol_table_.lookup(ident);
    if (!sym || !sym->is_const || sym->const_value == nullptr) {
        return 0;
    }
    Constant *c = sym->const_value;
    if (ctx->exp().empty()) {
        if (auto *ci = dynamic_cast<ConstantInt *>(c)) {
            return ci->getValue();
        }
        return 0;
    }
    std::vector<int> indices;
    indices.reserve(ctx->exp().size());
    for (auto *exp_ctx : ctx->exp()) {
        indices.push_back(evalExpAsConst(exp_ctx));
    }

    Constant *current = c;
    for (size_t i = 0; i < indices.size(); ++i) {
        if (auto *arr = dynamic_cast<ConstantArray *>(current)) {
            int idx = indices[i];
            if (idx < 0 || static_cast<size_t>(idx) >= arr->getElements().size()) {
                return 0;
            }
            current = arr->getElements()[idx];
        } else {
            return 0;
        }
    }
    if (auto *ci = dynamic_cast<ConstantInt *>(current)) {
        return ci->getValue();
    }
    return 0;
}

std::vector<int> IRGenerator::collectDimensions(const std::vector<SysYParser::ConstExpContext *> &dim_ctxs) {
    std::vector<int> dims;
    dims.reserve(dim_ctxs.size());
    for (auto *c : dim_ctxs) {
        dims.push_back(evalConstExp(c));
    }
    return dims;
}

Type *IRGenerator::buildArrayType(Type *base, const std::vector<int> &dims) {
    Type *ty = base;
    for (auto it = dims.rbegin(); it != dims.rend(); ++it) {
        ty = ArrayType::get(ty, *it);
    }
    return ty;
}

Constant *IRGenerator::getZeroInitializer(Type *ty) {
    if (ty->isIntegerTy()) {
        return ConstantInt::get(ty, 0);
    }
    if (ty->isArrayTy()) {
        auto *arr_ty = static_cast<ArrayType *>(ty);
        std::vector<Constant *> elems;
        elems.reserve(arr_ty->getNumElements());
        for (unsigned i = 0; i < arr_ty->getNumElements(); ++i) {
            elems.push_back(getZeroInitializer(arr_ty->getElementType()));
        }
        return ConstantArray::get(arr_ty, std::move(elems));
    }
    return nullptr;
}

Constant *IRGenerator::buildConstInitializer(Type *ty, SysYParser::ConstInitValContext *ctx) {
    if (!ty->isArrayTy()) {
        int val = 0;
        if (ctx && ctx->constExp()) {
            val = evalConstExp(ctx->constExp());
        }
        return ConstantInt::get(ty, val);
    }

    auto *arr_ty = static_cast<ArrayType *>(ty);
    std::vector<Constant *> elements;
    elements.reserve(arr_ty->getNumElements());

    if (!ctx) {
        for (unsigned i = 0; i < arr_ty->getNumElements(); ++i) {
            elements.push_back(getZeroInitializer(arr_ty->getElementType()));
        }
        return ConstantArray::get(arr_ty, std::move(elements));
    }

    if (ctx->constExp()) {
        Constant *first = buildConstInitializer(arr_ty->getElementType(), ctx);
        elements.push_back(first);
        for (unsigned i = 1; i < arr_ty->getNumElements(); ++i) {
            elements.push_back(getZeroInitializer(arr_ty->getElementType()));
        }
        return ConstantArray::get(arr_ty, std::move(elements));
    }

    auto sub_inits = ctx->constInitVal();
    size_t idx = 0;
    for (unsigned i = 0; i < arr_ty->getNumElements(); ++i) {
        SysYParser::ConstInitValContext *sub_ctx = nullptr;
        if (idx < sub_inits.size()) {
            sub_ctx = sub_inits[idx++];
        }
        if (!sub_ctx) {
            elements.push_back(getZeroInitializer(arr_ty->getElementType()));
        } else {
            elements.push_back(buildConstInitializer(arr_ty->getElementType(), sub_ctx));
        }
    }
    return ConstantArray::get(arr_ty, std::move(elements));
}

Constant *IRGenerator::buildVarInitializer(Type *ty, SysYParser::InitValContext *ctx) {
    if (!ty->isArrayTy()) {
        int val = 0;
        if (ctx && ctx->exp()) {
            val = evalExpAsConst(ctx->exp());
        }
        return ConstantInt::get(ty, val);
    }

    auto *arr_ty = static_cast<ArrayType *>(ty);
    std::vector<Constant *> elements;
    elements.reserve(arr_ty->getNumElements());

    if (!ctx) {
        for (unsigned i = 0; i < arr_ty->getNumElements(); ++i) {
            elements.push_back(getZeroInitializer(arr_ty->getElementType()));
        }
        return ConstantArray::get(arr_ty, std::move(elements));
    }

    if (ctx->exp()) {
        Constant *first = buildVarInitializer(arr_ty->getElementType(), ctx);
        elements.push_back(first);
        for (unsigned i = 1; i < arr_ty->getNumElements(); ++i) {
            elements.push_back(getZeroInitializer(arr_ty->getElementType()));
        }
        return ConstantArray::get(arr_ty, std::move(elements));
    }

    auto sub_inits = ctx->initVal();
    size_t idx = 0;
    for (unsigned i = 0; i < arr_ty->getNumElements(); ++i) {
        SysYParser::InitValContext *sub_ctx = nullptr;
        if (idx < sub_inits.size()) {
            sub_ctx = sub_inits[idx++];
        }
        if (!sub_ctx) {
            elements.push_back(getZeroInitializer(arr_ty->getElementType()));
        } else {
            elements.push_back(buildVarInitializer(arr_ty->getElementType(), sub_ctx));
        }
    }
    return ConstantArray::get(arr_ty, std::move(elements));
}

void IRGenerator::emitLocalInitializer(Value *ptr, Type *ty, SysYParser::InitValContext *ctx) {
    std::vector<int> indices;
    emitLocalInitRecursive(ptr, ty, ctx, indices);
}

void IRGenerator::emitLocalInitRecursive(Value *ptr, Type *ty, SysYParser::InitValContext *ctx, std::vector<int> &indices) {
    if (!ty->isArrayTy()) {
        Value *val = nullptr;
        if (ctx && ctx->exp()) {
            val = asValue(visit(ctx->exp()));
        }
        if (!val) {
            val = ConstantInt::get(0);
        }
        val = promoteToInt32(val);

        std::vector<Value *> gep_indices;
        auto *ptr_ty = dynamic_cast<PointerType *>(ptr->getType());
        if (ptr_ty && ptr_ty->getElementType()->isArrayTy()) {
            gep_indices.push_back(ConstantInt::get(0));
        }
        for (int idx : indices) {
            gep_indices.push_back(ConstantInt::get(idx));
        }

        Value *dest_ptr = gep_indices.empty() ? ptr : builder_.createGEP(ptr, gep_indices);
        builder_.createStore(val, dest_ptr);
        return;
    }

    auto *arr_ty = static_cast<ArrayType *>(ty);
    if (!ctx) {
        for (unsigned i = 0; i < arr_ty->getNumElements(); ++i) {
            indices.push_back(static_cast<int>(i));
            emitLocalInitRecursive(ptr, arr_ty->getElementType(), nullptr, indices);
            indices.pop_back();
        }
        return;
    }

    if (ctx->exp()) {
        indices.push_back(0);
        emitLocalInitRecursive(ptr, arr_ty->getElementType(), ctx, indices);
        indices.pop_back();
        for (unsigned i = 1; i < arr_ty->getNumElements(); ++i) {
            indices.push_back(static_cast<int>(i));
            emitLocalInitRecursive(ptr, arr_ty->getElementType(), nullptr, indices);
            indices.pop_back();
        }
        return;
    }

    auto sub_inits = ctx ? ctx->initVal() : std::vector<SysYParser::InitValContext *>();
    size_t child_idx = 0;
    for (unsigned i = 0; i < arr_ty->getNumElements(); ++i) {
        SysYParser::InitValContext *sub_ctx = nullptr;
        if (child_idx < sub_inits.size()) {
            sub_ctx = sub_inits[child_idx++];
        }
        indices.push_back(static_cast<int>(i));
        emitLocalInitRecursive(ptr, arr_ty->getElementType(), sub_ctx, indices);
        indices.pop_back();
    }
}

IRGenerator::LValueInfo IRGenerator::getLValueInfo(SysYParser::LValContext *ctx) {
    LValueInfo info;
    if (!ctx) return info;

    std::string ident = ctx->IDENT()->getText();
    Symbol *sym = symbol_table_.lookup(ident);
    if (!sym) {
        return info;
    }

    info.symbol = sym;
    info.type = sym->type;
    Value *base_ptr = sym->value;

    std::vector<Value *> indices;
    Type *current_ty = sym->type;

    if (current_ty && current_ty->isArrayTy()) {
        indices.push_back(ConstantInt::get(Type::getInt64Ty(), 0));
    }

    for (auto *exp_ctx : ctx->exp()) {
        Value *idx_val = asValue(visit(exp_ctx));
        idx_val = promoteToInt64(idx_val);
        if (!idx_val) {
            idx_val = ConstantInt::get(Type::getInt64Ty(), 0);
        }
        indices.push_back(idx_val);

        if (current_ty) {
            if (current_ty->isArrayTy()) {
                current_ty = static_cast<ArrayType *>(current_ty)->getElementType();
            } else if (current_ty->isPointerTy()) {
                current_ty = static_cast<PointerType *>(current_ty)->getElementType();
            }
        }
    }

    if (!indices.empty()) {
        info.addr = builder_.createGEP(base_ptr, indices);
        info.type = current_ty;
    } else {
        info.addr = base_ptr;
    }

    return info;
}

Value *IRGenerator::promoteToInt32(Value *val) {
    if (!val) return nullptr;
    if (val->getType()->isIntegerTy()) {
        auto *int_ty = static_cast<IntegerType *>(val->getType());
        if (int_ty->getBitWidth() == 1) {
            return builder_.createZExt(val, Type::getInt32Ty());
        }
    }
    return val;
}

Value *IRGenerator::promoteToInt64(Value *val) {
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

void IRGenerator::emitConstInitializer(Value *ptr, Type *ty, Constant *init) {
    std::vector<int> indices;
    emitConstInitRecursive(ptr, ty, init, indices);
}

void IRGenerator::emitConstInitRecursive(Value *ptr, Type *ty, Constant *init, std::vector<int> &indices) {
    if (!ty->isArrayTy()) {
        Constant *val_const = init;
        if (!val_const) {
            val_const = ConstantInt::get(ty, 0);
        }

        std::vector<Value *> gep_indices;
        auto *ptr_ty = dynamic_cast<PointerType *>(ptr->getType());
        if (ptr_ty && ptr_ty->getElementType()->isArrayTy()) {
            gep_indices.push_back(ConstantInt::get(0));
        }
        for (int idx : indices) {
            gep_indices.push_back(ConstantInt::get(idx));
        }

        Value *dest_ptr = gep_indices.empty() ? ptr : builder_.createGEP(ptr, gep_indices);
        builder_.createStore(val_const, dest_ptr);
        return;
    }

    auto *arr_ty = static_cast<ArrayType *>(ty);
    const std::vector<Constant *> *elems = nullptr;
    if (auto *arr_const = dynamic_cast<ConstantArray *>(init)) {
        elems = &arr_const->getElements();
    }
    for (unsigned i = 0; i < arr_ty->getNumElements(); ++i) {
        Constant *sub_init = nullptr;
        if (elems && i < elems->size()) {
            sub_init = (*elems)[i];
        }
        indices.push_back(static_cast<int>(i));
        emitConstInitRecursive(ptr, arr_ty->getElementType(), sub_init, indices);
        indices.pop_back();
    }
}

std::any IRGenerator::visitCompUnit(SysYParser::CompUnitContext *ctx) {
    // 处理全局变量声明
    for (auto def : ctx->decl()) {
        visitDecl(def);
    }
    // 处理函数定义
    for (auto def : ctx->funcDef()) {
        visitFuncDef(def);
    }
    return nullptr;
}

std::any IRGenerator::visitFuncDef(SysYParser::FuncDefContext *ctx) {
    // 仅处理 main 函数
    if (ctx->funcType()->getText() != "int" || ctx->IDENT()->getText() != "main") {
        return nullptr;
    }

    // 创建main函数类型和函数实例
    std::vector<Type *> params;
    FunctionType *func_ty = FunctionType::get(Type::getInt32Ty(), params);
    current_func_ = Function::create(func_ty, "main", module_);
    BasicBlock *entry_bb = BasicBlock::create("entry", current_func_);
    builder_.setInsertPoint(entry_bb);

    // 处理函数体
    visit(ctx->block());

    // 若未显式返回，添加默认返回0
    if (!entry_bb->getTerminator()) {
        builder_.createRet(ConstantInt::get(0));
    }
    return nullptr;
}

std::any IRGenerator::visitExp(SysYParser::ExpContext *ctx) {
    return visit(ctx->addExp());
}

std::any IRGenerator::visitConstExp(SysYParser::ConstExpContext *ctx) {
    return visit(ctx->addExp());
}

std::any IRGenerator::visitUnaryExp(SysYParser::UnaryExpContext *ctx) {
    if (ctx->primaryExp()) {
        return visit(ctx->primaryExp());
    } else if (ctx->unaryOp() && ctx->unaryExp()) {
        // 处理一元运算
        auto *operand = asValue(visit(ctx->unaryExp()));
        if (!operand) return nullptr;

        if (ctx->unaryOp()->MINUS()) {
            // 负号运算返回0 - 操作数
            return builder_.createSub(ConstantInt::get(0), operand);
        } else if (ctx->unaryOp()->PLUS()) {
            // 正号运算直接返回操作数
            return operand;
        }
        // TODO: 支持其他一元运算符
    }
    // TODO: 支持函数调用
    return nullptr;
}

std::any IRGenerator::visitAddExp(SysYParser::AddExpContext *ctx) {
    // 叶子节点仅包含 MulExp
    if (!ctx->addExp()) {
        return visit(ctx->mulExp());
    }

    // 递归处理左右操作数
    Value *lhs = asValue(visit(ctx->addExp()));
    Value *rhs = asValue(visit(ctx->mulExp()));
    if (!lhs || !rhs) return nullptr;
    
    // 根据运算符生成指令
    if (ctx->PLUS()) {
        return builder_.createAdd(lhs, rhs);
    } else { // 减法
        return builder_.createSub(lhs, rhs);
    }
}

std::any IRGenerator::visitMulExp(SysYParser::MulExpContext *ctx) {
    if (!ctx->mulExp()) { // 叶子节点
        return visit(ctx->unaryExp());
    }

    Value *lhs = asValue(visit(ctx->mulExp()));
    Value *rhs = asValue(visit(ctx->unaryExp()));
    if (!lhs || !rhs) return nullptr;
    
    if (ctx->MUL()) {
        return builder_.createMul(lhs, rhs);
    } else if (ctx->DIV()) {
        return builder_.createSDiv(lhs, rhs);
    } else { // 取模
        return builder_.createSRem(lhs, rhs);
    }
}

std::any IRGenerator::visitPrimaryExp(SysYParser::PrimaryExpContext *ctx) {
    if (ctx->number()) {
        int val = evalNumber(ctx->number());
        return ConstantInt::get(val);
    }
    if (ctx->LPAREN()) {
        return visit(ctx->exp());
    }
    if (ctx->lVal()) {
        auto info = getLValueInfo(ctx->lVal());
        if (!info.addr || !info.type) {
            return nullptr;
        }
        if (info.type->isArrayTy()) {
            auto *ptr_ty = dynamic_cast<PointerType *>(info.addr->getType());
            if (ptr_ty && ptr_ty->getElementType()->isArrayTy()) {
                std::vector<Value *> idx = {ConstantInt::get(0), ConstantInt::get(0)};
                return builder_.createGEP(info.addr, idx);
            }
            return info.addr;
        }
        Value *loaded = builder_.createLoad(info.type, info.addr);
        return loaded;
    }
    return nullptr;
}

std::any IRGenerator::visitDecl(SysYParser::DeclContext *ctx) {
    if (ctx->constDecl()) {
        visitConstDecl(ctx->constDecl());
        return nullptr;
    }
    if (!ctx->varDecl()) {
        return nullptr;
    }

    bool is_global = current_func_ == nullptr;
    Type *base_ty = Type::getInt32Ty();

    for (auto *var_def : ctx->varDecl()->varDef()) {
        std::string ident = var_def->IDENT()->getText();
        auto dims = collectDimensions(var_def->constExp());
        Type *var_ty = dims.empty() ? base_ty : buildArrayType(base_ty, dims);

        if (is_global) {
            Constant *init = nullptr;
            if (var_def->initVal()) {
                init = buildVarInitializer(var_ty, var_def->initVal());
            }
            auto *global = new GlobalVariable(ident, module_, var_ty, false, init);
            symbol_table_.insert(ident, Symbol(ident, var_ty, global, true));
        } else {
            Value *alloca = builder_.createAlloca(var_ty);
            if (var_ty->isArrayTy()) {
                if (var_def->initVal()) {
                    emitLocalInitializer(alloca, var_ty, var_def->initVal());
                }
            } else {
                if (var_def->initVal() && var_def->initVal()->exp()) {
                    Value *init_val = asValue(visit(var_def->initVal()->exp()));
                    init_val = promoteToInt32(init_val);
                    if (!init_val) {
                        init_val = ConstantInt::get(0);
                    }
                    builder_.createStore(init_val, alloca);
                }
            }
            symbol_table_.insert(ident, Symbol(ident, var_ty, alloca, false));
        }
    }
    return nullptr;
}

std::any IRGenerator::visitConstDecl(SysYParser::ConstDeclContext *ctx) {
    bool is_global = current_func_ == nullptr;
    Type *base_ty = Type::getInt32Ty();

    for (auto *const_def : ctx->constDef()) {
        std::string ident = const_def->IDENT()->getText();
        auto dims = collectDimensions(const_def->constExp());
        Type *var_ty = dims.empty() ? base_ty : buildArrayType(base_ty, dims);
        Constant *init = buildConstInitializer(var_ty, const_def->constInitVal());

        if (is_global) {
            auto *global = new GlobalVariable(ident, module_, var_ty, true, init);
            symbol_table_.insert(ident, Symbol(ident, var_ty, global, true, true, init));
        } else {
            Value *alloca = builder_.createAlloca(var_ty);
            emitConstInitializer(alloca, var_ty, init);
            symbol_table_.insert(ident, Symbol(ident, var_ty, alloca, false, true, init));
        }
    }
    return nullptr;
}

std::any IRGenerator::visitBlockItem(SysYParser::BlockItemContext *ctx) {
    if (ctx->decl()) {
        visitDecl(ctx->decl());
    } else if (ctx->stmt()) {
        visit(ctx->stmt());
    }
    return nullptr;
}

std::any IRGenerator::visitAssignStmt(SysYParser::AssignStmtContext *ctx) {
    auto info = getLValueInfo(ctx->lVal());
    if (!info.addr || (info.symbol && info.symbol->is_const)) {
        return nullptr;
    }

    Value *rhs = asValue(visit(ctx->exp()));
    rhs = promoteToInt32(rhs);
    if (!rhs || (info.type && info.type->isArrayTy())) {
        return nullptr;
    }

    builder_.createStore(rhs, info.addr);
    return nullptr;
}

std::any IRGenerator::visitBlock(SysYParser::BlockContext *ctx) {
    // 进入新作用域
    symbol_table_.enterScope();
    
    // 处理块中所有项
    for (auto item : ctx->blockItem()) {
        visitBlockItem(item);
    }
    
    // 退出作用域
    symbol_table_.exitScope();
    return nullptr;
}

std::any IRGenerator::visitBlockStmt(SysYParser::BlockStmtContext *ctx) {
    return visit(ctx->block());
}

std::any IRGenerator::visitReturnStmt(SysYParser::ReturnStmtContext *ctx) {
    if (ctx->exp()) {
        auto *val = asValue(visit(ctx->exp()));
        if (val) {
            builder_.createRet(val);
        } else {
            // 求值失败，返回 0
            builder_.createRet(ConstantInt::get(0));
        }
    } else {
        builder_.createRet(ConstantInt::get(0));
    }
    return nullptr;
}

std::any IRGenerator::visitExpStmt(SysYParser::ExpStmtContext *ctx) {
    if (ctx->exp()) visit(ctx->exp());
    return nullptr;
}