#include "visitor/IRGenerator.h"
#include "SysYParser.h"
#include "ir/Constant.h"
#include "ir/Function.h"
#include "ir/BasicBlock.h"
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
    if (ctx->number()) { // 常量
        int val = std::stoi(ctx->number()->getText());
        return ConstantInt::get(val);
    } else if (ctx->LPAREN() && ctx->RPAREN()) { // 括号表达式
        return visit(ctx->exp());
    } else if (ctx->lVal()) { // 变量引用
        auto ident = ctx->lVal()->IDENT()->getText();
        Symbol *sym = symbol_table_.lookup(ident);
        if (!sym) {
            return nullptr;
        }
        return builder_.createLoad(sym->type, sym->value);
    }
    return nullptr;
}

std::any IRGenerator::visitDecl(SysYParser::DeclContext *ctx) {
    // 处理变量声明或常量声明
    if (ctx->constDecl()) {
        return visitConstDecl(ctx->constDecl());
    } else if (ctx->varDecl()) {
        auto *var_decl = ctx->varDecl();
        if (var_decl->varDef().empty()) return nullptr;

        auto var_ty = Type::getInt32Ty(); 

        // 处理所有变量定义
        for (auto *var_def : var_decl->varDef()) {
            auto ident = var_def->IDENT()->getText();

            // 获取初始化表达式并求值
            ConstantInt *init_val = nullptr;
            if (var_def->initVal() && var_def->initVal()->exp()) {
                // 全局变量
                auto exp_result = visit(var_def->initVal()->exp());
                auto *val = asValue(exp_result);
                if (val) {
                    if (auto *ci = dynamic_cast<ConstantInt*>(val)) {
                        init_val = ci;
                    } else {
                        // 尝试从文本解析
                        try {
                            int int_val = std::stoi(var_def->initVal()->exp()->getText());
                            init_val = ConstantInt::get(int_val);
                        } catch (...) {
                            init_val = ConstantInt::get(0);
                        }
                    }
                } else {
                    //求值失败，尝试文本解析
                    try {
                        int int_val = std::stoi(var_def->initVal()->exp()->getText());
                        init_val = ConstantInt::get(int_val);
                    } catch (...) {
                        init_val = ConstantInt::get(0);
                    }
                }
            }

            auto global = new GlobalVariable(
                ident, module_, var_ty,
                false, // 非 const
                init_val
            );

            symbol_table_.insert(ident, Symbol(ident, var_ty, global, true));
        }
        return nullptr;
    }
    return nullptr;
}

std::any IRGenerator::visitConstDecl(SysYParser::ConstDeclContext *ctx) {
    // 处理形如const int a = <exp>的常量声明
    if (!ctx->constDef().empty()) {
        auto var_ty = Type::getInt32Ty(); 

        // 处理所有常量定义
        for (auto *const_def : ctx->constDef()) {
            auto ident = const_def->IDENT()->getText();

            // 获取初始化表达式并求值
            ConstantInt *init_val = nullptr;
            if (const_def->constInitVal() && const_def->constInitVal()->constExp()) {
                // 文本解析
                try {
                    int int_val = std::stoi(const_def->constInitVal()->constExp()->getText());
                    init_val = ConstantInt::get(int_val);
                } catch (...) {
                    init_val = ConstantInt::get(0);
                }
            }

            auto global = new GlobalVariable(
                ident, module_, var_ty,
                true, // const
                init_val
            );

            symbol_table_.insert(ident, Symbol(ident, var_ty, global, true));
        }
    }
    return nullptr;
}

std::any IRGenerator::visitBlockItem(SysYParser::BlockItemContext *ctx) {
    if (ctx->decl()) { // 局部变量声明或常量声明
        if (ctx->decl()->constDecl()) {
            // 处理局部常量声明
            auto *const_decl = ctx->decl()->constDecl();
            if (!const_decl->constDef().empty()) {
                auto var_ty = Type::getInt32Ty();

                // 处理所有常量定义
                for (auto *const_def : const_decl->constDef()) {
                    auto ident = const_def->IDENT()->getText();

                    auto alloca = builder_.createAlloca(var_ty);

                    // 获取初始化表达式并求值
                    ConstantInt *init_val = nullptr;
                    if (const_def->constInitVal() && const_def->constInitVal()->constExp()) {
                        // 文本解析
                        try {
                            int int_val = std::stoi(const_def->constInitVal()->constExp()->getText());
                            init_val = ConstantInt::get(int_val);
                        } catch (...) {
                            init_val = ConstantInt::get(0);
                        }
                    }

                    if (init_val) {
                        builder_.createStore(init_val, alloca);
                    }

                    symbol_table_.insert(ident, Symbol(ident, var_ty, alloca, false));
                }
            }
        } else if (ctx->decl()->varDecl()) {
            // 局部变量
            auto *var_decl = ctx->decl()->varDecl();
            if (!var_decl) return nullptr;

            auto var_ty = Type::getInt32Ty();
            for (auto def : var_decl->varDef()) {
                auto ident = def->IDENT()->getText();

                auto alloca = builder_.createAlloca(var_ty);

                if (def->initVal() && def->initVal()->exp()) {
                    auto *init_val = asValue(visit(def->initVal()->exp()));
                    if (init_val) {
                        builder_.createStore(init_val, alloca);
                    }
                }

                symbol_table_.insert(ident, Symbol(ident, var_ty, alloca, false));
            }
        }
    } else if (ctx->stmt()) {
        visit(ctx->stmt());
    }
    return nullptr;
}

std::any IRGenerator::visitAssignStmt(SysYParser::AssignStmtContext *ctx) {
    auto ident = ctx->lVal()->IDENT()->getText();
    Symbol *sym = symbol_table_.lookup(ident);
    if (!sym) return nullptr;

    Value *rhs = asValue(visit(ctx->exp()));
    if (rhs) {
        builder_.createStore(rhs, sym->value);
    }
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