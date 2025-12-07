#include "ir/CodeGenVisitor.h"
#include "ir/Constant.h"
#include "ir/Function.h"
#include "ir/BasicBlock.h"

using namespace antlr4;

std::any CodeGenVisitor::visitFuncDef(SysYParser::FuncDefContext *ctx) {
    // Only handle functions without parameters for now (like main)
    // Determine function name and type
    std::string name = ctx->IDENT()->getText();

    // Assume return type is int if funcType contains INT, otherwise void
    Type *retTy = Type::getInt32Ty();
    if (ctx->funcType()->VOID()) retTy = Type::getVoidTy();

    std::vector<Type *> params; // currently empty
    FunctionType *ft = FunctionType::get(retTy, params);
    Function *f = Function::create(ft, name, module_);

    current_function_ = f;
    // create entry block
    BasicBlock *entry = BasicBlock::create("entry", f);
    builder_.setInsertPoint(entry);

    // visit function body
    visit(ctx->block());

    // If last inst is not terminator, insert a default return
    auto &insts = entry->getInstructions();
    if (insts.empty() || !insts.back()->isTerminator()) {
        if (retTy->isIntegerTy()) {
            ConstantInt *zero = ConstantInt::get(0);
            ReturnInst *ret = builder_.createRet(zero);
            ret->setName(genName());
        } else {
            builder_.createRetVoid();
        }
    }

    return nullptr;
}

std::any CodeGenVisitor::visitBlock(SysYParser::BlockContext *ctx) {
    // Default visit children (decls and stmts). We rely on visit methods for stmts/exp
    return visitChildren(ctx);
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
        return bin;
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
        return bin;
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
            return bin;
        } else if (op == "!") {
            // logical not: compute icmp eq with zero
            ConstantInt *zero = ConstantInt::get(0);
            ICmpInst *cmp = builder_.createICmpEQ(val, zero);
            cmp->setName(genName());
            return cmp;
        }
    }
    return nullptr;
}

std::any CodeGenVisitor::visitPrimaryExp(SysYParser::PrimaryExpContext *ctx) {
    if (ctx->number()) {
        return visit(ctx->number());
    } else if (ctx->exp()) {
        return visit(ctx->exp());
    } else if (ctx->lVal()) {
        // LVal handling (variables/arrays) not implemented in this minimal example.
        return nullptr;
    }
    return nullptr;
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
    return c;
}
