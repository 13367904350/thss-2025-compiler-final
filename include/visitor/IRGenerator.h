#pragma once
#include "SysYParserBaseVisitor.h"
#include "ir/Module.h"
#include "ir/IRBuilder.h"
#include "symbol/SymbolTable.h"
#include <any>
#include <map>
#include <string>
#include <vector>

class IRGenerator : public SysYParserBaseVisitor {
public:
    IRGenerator(Module *module) : module_(module) {}

    std::any visitCompUnit(SysYParser::CompUnitContext *ctx) override;
    std::any visitFuncDef(SysYParser::FuncDefContext *ctx) override;
    std::any visitConstDecl(SysYParser::ConstDeclContext *ctx) override;
    std::any visitExp(SysYParser::ExpContext *ctx) override;
    std::any visitConstExp(SysYParser::ConstExpContext *ctx) override;
    std::any visitPrimaryExp(SysYParser::PrimaryExpContext *ctx) override;
    std::any visitUnaryExp(SysYParser::UnaryExpContext *ctx) override;
    std::any visitMulExp(SysYParser::MulExpContext *ctx) override;
    std::any visitAddExp(SysYParser::AddExpContext *ctx) override;
    std::any visitDecl(SysYParser::DeclContext *ctx) override;
    std::any visitBlock(SysYParser::BlockContext *ctx) override;
    std::any visitBlockItem(SysYParser::BlockItemContext *ctx) override;
    std::any visitAssignStmt(SysYParser::AssignStmtContext *ctx) override;
    std::any visitBlockStmt(SysYParser::BlockStmtContext *ctx) override;
    std::any visitReturnStmt(SysYParser::ReturnStmtContext *ctx) override;
    std::any visitExpStmt(SysYParser::ExpStmtContext *ctx) override;

private:
    struct LValueInfo {
        Value *addr = nullptr;
        Type *type = nullptr;
        Symbol *symbol = nullptr;
    };

    // Helpers for constant evaluation
    int evalConstExp(SysYParser::ConstExpContext *ctx);
    int evalExpAsConst(SysYParser::ExpContext *ctx);
    int evalAdd(SysYParser::AddExpContext *ctx);
    int evalMul(SysYParser::MulExpContext *ctx);
    int evalUnary(SysYParser::UnaryExpContext *ctx);
    int evalPrimary(SysYParser::PrimaryExpContext *ctx);
    int evalNumber(SysYParser::NumberContext *ctx);
    int evalConstLVal(SysYParser::LValContext *ctx);

    // Helpers for type construction and constants
    std::vector<int> collectDimensions(const std::vector<SysYParser::ConstExpContext *> &dim_ctxs);
    Type *buildArrayType(Type *base, const std::vector<int> &dims);
    Constant *getZeroInitializer(Type *ty);
    Constant *buildConstInitializer(Type *ty, SysYParser::ConstInitValContext *ctx);
    Constant *buildVarInitializer(Type *ty, SysYParser::InitValContext *ctx);
    void emitLocalInitializer(Value *ptr, Type *ty, SysYParser::InitValContext *ctx);
    void emitLocalInitRecursive(Value *ptr, Type *ty, SysYParser::InitValContext *ctx, std::vector<int> &indices);
    void emitConstInitializer(Value *ptr, Type *ty, Constant *init);
    void emitConstInitRecursive(Value *ptr, Type *ty, Constant *init, std::vector<int> &indices);
    LValueInfo getLValueInfo(SysYParser::LValContext *ctx);
    Value *promoteToInt32(Value *val);

    Module *module_;
    Function *current_func_ = nullptr;
    IRBuilder builder_;
    SymbolTable symbol_table_;
};