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
    if (a.type() == typeid(ConstantFP *)) {
        return std::any_cast<ConstantFP *>(a);
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

static float parseFloatLiteral(const std::string &text) {
    return std::stof(text);
}

int IRGenerator::evalConstExpAsInt(SysYParser::ConstExpContext *ctx) {
    Constant *c = evalConstExp(ctx);
    if (!c) return 0;
    if (auto *ci = dynamic_cast<ConstantInt*>(c)) return ci->getValue();
    if (auto *cf = dynamic_cast<ConstantFP*>(c)) return static_cast<int>(cf->getValue());
    return 0;
}

Constant *IRGenerator::evalConstExp(SysYParser::ConstExpContext *ctx) {
    if (!ctx) return ConstantInt::get(0);
    return evalAdd(ctx->addExp());
}

Constant *IRGenerator::evalExpAsConst(SysYParser::ExpContext *ctx) {
    if (!ctx) return ConstantInt::get(0);
    return evalAdd(ctx->addExp());
}

Constant *IRGenerator::evalAdd(SysYParser::AddExpContext *ctx) {
    if (!ctx) return ConstantInt::get(0);
    if (!ctx->addExp()) {
        return evalMul(ctx->mulExp());
    }
    Constant *lhs = evalAdd(ctx->addExp());
    Constant *rhs = evalMul(ctx->mulExp());
    
    bool is_float = lhs->getType()->isFloatTy() || rhs->getType()->isFloatTy();
    
    if (is_float) {
        float lval = 0, rval = 0;
        if (auto *ci = dynamic_cast<ConstantInt*>(lhs)) lval = (float)ci->getValue();
        else if (auto *cf = dynamic_cast<ConstantFP*>(lhs)) lval = cf->getValue();
        
        if (auto *ci = dynamic_cast<ConstantInt*>(rhs)) rval = (float)ci->getValue();
        else if (auto *cf = dynamic_cast<ConstantFP*>(rhs)) rval = cf->getValue();

        float res = 0;
        if (ctx->PLUS()) res = lval + rval;
        else res = lval - rval;
        return ConstantFP::get(res);
    } else {
        int lval = dynamic_cast<ConstantInt*>(lhs)->getValue();
        int rval = dynamic_cast<ConstantInt*>(rhs)->getValue();
        int res = 0;
        if (ctx->PLUS()) res = lval + rval;
        else res = lval - rval;
        return ConstantInt::get(res);
    }
}

Constant *IRGenerator::evalMul(SysYParser::MulExpContext *ctx) {
    if (!ctx) return ConstantInt::get(0);
    if (!ctx->mulExp()) {
        return evalUnary(ctx->unaryExp());
    }
    Constant *lhs = evalMul(ctx->mulExp());
    Constant *rhs = evalUnary(ctx->unaryExp());
    
    bool is_float = lhs->getType()->isFloatTy() || rhs->getType()->isFloatTy();

    if (is_float) {
        float lval = 0, rval = 0;
        if (auto *ci = dynamic_cast<ConstantInt*>(lhs)) lval = (float)ci->getValue();
        else if (auto *cf = dynamic_cast<ConstantFP*>(lhs)) lval = cf->getValue();
        
        if (auto *ci = dynamic_cast<ConstantInt*>(rhs)) rval = (float)ci->getValue();
        else if (auto *cf = dynamic_cast<ConstantFP*>(rhs)) rval = cf->getValue();

        float res = 0;
        if (ctx->MUL()) res = lval * rval;
        else if (ctx->DIV()) res = (rval == 0 ? 0 : lval / rval);
        else res = 0; // Mod not supported for float
        return ConstantFP::get(res);
    } else {
        int lval = dynamic_cast<ConstantInt*>(lhs)->getValue();
        int rval = dynamic_cast<ConstantInt*>(rhs)->getValue();
        int res = 0;
        if (ctx->MUL()) res = lval * rval;
        else if (ctx->DIV()) res = (rval == 0 ? 0 : lval / rval);
        else {
            if (rval == 0) res = 0;
            else res = lval % rval;
        }
        return ConstantInt::get(res);
    }
}

Constant *IRGenerator::evalUnary(SysYParser::UnaryExpContext *ctx) {
    if (!ctx) return ConstantInt::get(0);
    if (ctx->primaryExp()) {
        return evalPrimary(ctx->primaryExp());
    }
    if (ctx->unaryOp() && ctx->unaryExp()) {
        Constant *val = evalUnary(ctx->unaryExp());
        bool is_float = val->getType()->isFloatTy();
        
        if (ctx->unaryOp()->PLUS()) {
            return val;
        }
        if (ctx->unaryOp()->MINUS()) {
            if (is_float) {
                float fv = dynamic_cast<ConstantFP*>(val)->getValue();
                return ConstantFP::get(-fv);
            } else {
                int iv = dynamic_cast<ConstantInt*>(val)->getValue();
                return ConstantInt::get(-iv);
            }
        }
        if (ctx->unaryOp()->NOT()) {
            // !float? C rules say !val means val == 0
            bool true_val = false;
            if (is_float) true_val = (dynamic_cast<ConstantFP*>(val)->getValue() == 0.0f);
            else true_val = (dynamic_cast<ConstantInt*>(val)->getValue() == 0);
            return ConstantInt::get(true_val ? 1 : 0);
        }
    }
    return ConstantInt::get(0);
}

Constant *IRGenerator::evalPrimary(SysYParser::PrimaryExpContext *ctx) {
    if (!ctx) return ConstantInt::get(0);
    if (ctx->number()) {
        return evalNumber(ctx->number());
    }
    if (ctx->LPAREN()) {
        return evalExpAsConst(ctx->exp());
    }
    if (ctx->lVal()) {
        return evalConstLVal(ctx->lVal());
    }
    return ConstantInt::get(0);
}

Constant *IRGenerator::evalNumber(SysYParser::NumberContext *ctx) {
    if (!ctx) return ConstantInt::get(0);
    if (ctx->FLOAT_CONST()) {
         return ConstantFP::get(parseFloatLiteral(ctx->FLOAT_CONST()->getText()));
    }
    return ConstantInt::get(parseIntLiteral(ctx->getText()));
}

Constant *IRGenerator::evalConstLVal(SysYParser::LValContext *ctx) {
    if (!ctx) return ConstantInt::get(0);
    std::string ident = ctx->IDENT()->getText();
    Symbol *sym = symbol_table_.lookup(ident);
    if (!sym || !sym->is_const || sym->const_value == nullptr) {
        return ConstantInt::get(0);
    }
    Constant *c = sym->const_value;
    if (ctx->exp().empty()) {
        return c; // Could be ConstantInt or ConstantFP
    }
    // Array access
    // Indices must be integers
    std::vector<int> indices;
    indices.reserve(ctx->exp().size());
    for (auto *exp_ctx : ctx->exp()) {
        // evalExpAsConst currently returns Constant*
        Constant *idx_c = evalExpAsConst(exp_ctx);
        int idx = 0;
        if (auto *ci = dynamic_cast<ConstantInt*>(idx_c)) idx = ci->getValue();
        else if (auto *cf = dynamic_cast<ConstantFP*>(idx_c)) idx = (int)cf->getValue();
        indices.push_back(idx);
    }

    Constant *current = c;
    for (size_t i = 0; i < indices.size(); ++i) {
        if (auto *arr = dynamic_cast<ConstantArray *>(current)) {
            int idx = indices[i];
            if (idx < 0 || static_cast<size_t>(idx) >= arr->getElements().size()) {
                return ConstantInt::get(0); // OOB
            }
            current = arr->getElements()[idx];
        } else {
            return ConstantInt::get(0);
        }
    }
    return current;
}

std::vector<int> IRGenerator::collectDimensions(const std::vector<SysYParser::ConstExpContext *> &dim_ctxs) {
    std::vector<int> dims;
    dims.reserve(dim_ctxs.size());
    for (auto *c : dim_ctxs) {
        dims.push_back(evalConstExpAsInt(c));
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
    if (ty->isFloatTy()) {
        return ConstantFP::get(0.0f);
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
        Constant *val = nullptr; // Default 0
        if (ctx && ctx->constExp()) {
            val = evalConstExp(ctx->constExp());
        }
        if (!val) return getZeroInitializer(ty);
        
        // Cast if needed
        if (ty->isIntegerTy() && val->getType()->isFloatTy()) {
             return ConstantInt::get((int)dynamic_cast<ConstantFP*>(val)->getValue());
        }
        if (ty->isFloatTy() && val->getType()->isIntegerTy()) {
             return ConstantFP::get((float)dynamic_cast<ConstantInt*>(val)->getValue());
        }
        return val;
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
        Constant *firstVal = evalConstExp(ctx->constExp());
        // Cast single value to array element type if needed?
        // Wait, standard SysY: `int a[2] = {1, 2}` or `int a[2] = 1` (error?)
        // parser grammar: constInitVal -> constExp | LBRACE (constInitVal (COMMA constInitVal)*)? RBRACE
        // If it matches constExp, it's a single value. But if ty is array, this might be invalid or only for first element?
        // Actually the code I'm replacing did recursive call: buildConstInitializer(arr_ty->getElementType(), ctx)
        // Check old code: `if (ctx->constExp()) { Constant *first = buildConstInitializer(arr_ty->getElementType(), ctx); ... }`
        // Wait, ctx->constExp() implies it's a scalar init. If target is array, maybe specific handling like `int a[] = {1, 2}` vs `int a = 1`.
        // If type is array but init is scalar, it treats scalar as first element and zero init rest?
        // Let's stick to previous logic structure but fix types.
        
        Constant *first = nullptr;
        // logic from previous: re-invoke buildConstInitializer with element type
        // But wait, `ctx` is ConstInitValContext. If `ctx->constExp()` is true, it is a leaf.
        // So we can just evaluate it and cast.
        Constant *c = evalConstExp(ctx->constExp());
        if (arr_ty->getElementType()->isIntegerTy() && c->getType()->isFloatTy()) {
             first = ConstantInt::get((int)dynamic_cast<ConstantFP*>(c)->getValue());
        } else if (arr_ty->getElementType()->isFloatTy() && c->getType()->isIntegerTy()) {
             first = ConstantFP::get((float)dynamic_cast<ConstantInt*>(c)->getValue());
        } else {
             first = c;
        }
        
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
        Constant *val = nullptr;
        if (ctx && ctx->exp()) {
            val = evalExpAsConst(ctx->exp());
        }
        if (!val) return getZeroInitializer(ty);

        if (ty->isIntegerTy() && val->getType()->isFloatTy()) {
             return ConstantInt::get((int)dynamic_cast<ConstantFP*>(val)->getValue());
        }
        if (ty->isFloatTy() && val->getType()->isIntegerTy()) {
             return ConstantFP::get((float)dynamic_cast<ConstantInt*>(val)->getValue());
        }
        return val;
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
         Constant *c = evalExpAsConst(ctx->exp());
         Constant *first;
         if (arr_ty->getElementType()->isIntegerTy() && c->getType()->isFloatTy()) {
             first = ConstantInt::get((int)dynamic_cast<ConstantFP*>(c)->getValue());
         } else if (arr_ty->getElementType()->isFloatTy() && c->getType()->isIntegerTy()) {
             first = ConstantFP::get((float)dynamic_cast<ConstantInt*>(c)->getValue());
         } else {
             first = c;
         }
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
        val = castTo(val, ty, builder_.GetInsertBlock());

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


Type *IRGenerator::getUpgradedType(Type *t1, Type *t2) {
    if (t1->isFloatTy() || t2->isFloatTy()) return Type::getFloatTy();
    return Type::getInt32Ty();
}

Value *IRGenerator::castTo(Value *val, Type *target_ty, BasicBlock *bb) {
    Type *src_ty = val->getType();
    if (src_ty == target_ty) return val;

    if (target_ty->isIntegerTy()) {
        if (src_ty->isFloatTy()) {
            return new FPToSIInst(val, target_ty, bb);
        }
        if (src_ty->isIntegerTy()) {
            auto *src_int = static_cast<IntegerType*>(src_ty);
            auto *dst_int = static_cast<IntegerType*>(target_ty);
            if (src_int->getBitWidth() < dst_int->getBitWidth()) {
                if (src_int->getBitWidth() == 1) return new ZExtInst(val, target_ty, bb);
                return new SExtInst(val, target_ty, bb);
            }
        }
    } else if (target_ty->isFloatTy()) {
        if (src_ty->isIntegerTy()) {
            return new SIToFPInst(val, target_ty, bb);
        }
    }
    return val;
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
        auto *operand = asValue(visit(ctx->unaryExp()));
        if (!operand) return nullptr;

        if (ctx->unaryOp()->MINUS()) {
            if (operand->getType()->isFloatTy()) {
                return builder_.createFSub(ConstantFP::get(0.0f), operand);
            }
            return builder_.createSub(ConstantInt::get(0), operand);
        } else if (ctx->unaryOp()->PLUS()) {
            return operand;
        } else if (ctx->unaryOp()->NOT()) {
            Value *cond;
            if (operand->getType()->isFloatTy()) {
                 cond = new FCmpInst(FCmpInst::OEQ, operand, ConstantFP::get(0.0f), builder_.GetInsertBlock());
            } else {
                 cond = new ICmpInst(ICmpInst::EQ, operand, ConstantInt::get(0), builder_.GetInsertBlock());
            }
            return new ZExtInst(cond, Type::getInt32Ty(), builder_.GetInsertBlock());
        }
    }
    return nullptr; // TODO support function call
}

std::any IRGenerator::visitAddExp(SysYParser::AddExpContext *ctx) {
    if (!ctx->addExp()) {
        return visit(ctx->mulExp());
    }

    Value *lhs = asValue(visit(ctx->addExp()));
    Value *rhs = asValue(visit(ctx->mulExp()));
    if (!lhs || !rhs) return nullptr;

    Type *finalTy = getUpgradedType(lhs->getType(), rhs->getType());
    lhs = castTo(lhs, finalTy, builder_.GetInsertBlock());
    rhs = castTo(rhs, finalTy, builder_.GetInsertBlock());
    
    if (finalTy->isFloatTy()) {
        if (ctx->PLUS()) return builder_.createFAdd(lhs, rhs);
        return builder_.createFSub(lhs, rhs);
    }

    if (ctx->PLUS()) {
        return builder_.createAdd(lhs, rhs);
    } else {
        return builder_.createSub(lhs, rhs);
    }
}

std::any IRGenerator::visitMulExp(SysYParser::MulExpContext *ctx) {
    if (!ctx->mulExp()) {
        return visit(ctx->unaryExp());
    }

    Value *lhs = asValue(visit(ctx->mulExp()));
    Value *rhs = asValue(visit(ctx->unaryExp()));
    if (!lhs || !rhs) return nullptr;

    Type *finalTy = getUpgradedType(lhs->getType(), rhs->getType());
    // Rem only int
    if (ctx->MOD()) {
       // SysY Spec says operands for % must be int.
       // However, we should cast if needed (though parser might catch, or we assume logic).
       // Just cast to int.
       lhs = castTo(lhs, Type::getInt32Ty(), builder_.GetInsertBlock());
       rhs = castTo(rhs, Type::getInt32Ty(), builder_.GetInsertBlock());
       return builder_.createSRem(lhs, rhs);
    }

    lhs = castTo(lhs, finalTy, builder_.GetInsertBlock());
    rhs = castTo(rhs, finalTy, builder_.GetInsertBlock());
    
    if (finalTy->isFloatTy()) {
        if (ctx->MUL()) return builder_.createFMul(lhs, rhs);
        if (ctx->DIV()) return builder_.createFDiv(lhs, rhs);
    }

    if (ctx->MUL()) {
        return builder_.createMul(lhs, rhs);
    } else if (ctx->DIV()) {
        return builder_.createSDiv(lhs, rhs);
    }
    return nullptr;
}

std::any IRGenerator::visitPrimaryExp(SysYParser::PrimaryExpContext *ctx) {
    if (ctx->number()) {
        Constant *c = evalNumber(ctx->number());
        return c; // Returns Value* compatible
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
    if (ctx->varDecl()->bType()->FLOAT()) base_ty = Type::getFloatTy();

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
                    if (!init_val) {
                        init_val = ConstantInt::get(0);
                    }
                    init_val = castTo(init_val, var_ty, builder_.GetInsertBlock());
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
    if (ctx->bType()->FLOAT()) base_ty = Type::getFloatTy();

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
    if (!rhs) return nullptr;
    rhs = castTo(rhs, info.type, builder_.GetInsertBlock());

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
            Type *retTy = current_func_->getFunctionType()->getReturnType();
            val = castTo(val, retTy, builder_.GetInsertBlock());
            builder_.createRet(val);
        } else {
            // 求值失败，返回 0
            builder_.createRet(ConstantInt::get(0));
        }
    } else {
        Type *retTy = current_func_->getFunctionType()->getReturnType();
        if (retTy->isFloatTy()) builder_.createRet(ConstantFP::get(0.0));
        else builder_.createRet(ConstantInt::get(0));
    }
    return nullptr;
}

std::any IRGenerator::visitExpStmt(SysYParser::ExpStmtContext *ctx) {
    if (ctx->exp()) visit(ctx->exp());
    return nullptr;
}