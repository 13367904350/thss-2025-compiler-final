#pragma once

#include "antlr4-runtime.h"
#include "SysYParserBaseVisitor.h"
#include "ir/Module.h"
#include "ir/IRBuilder.h"

class CodeGenVisitor : public SysYParserBaseVisitor {
public:
    explicit CodeGenVisitor(Module *m) : module_(m), current_function_(nullptr), temp_count_(0) {}

    // Function and block
    virtual std::any visitFuncDef(SysYParser::FuncDefContext *ctx) override;
    virtual std::any visitBlock(SysYParser::BlockContext *ctx) override;

    // Expressions
    virtual std::any visitExp(SysYParser::ExpContext *ctx) override;
    virtual std::any visitAddExp(SysYParser::AddExpContext *ctx) override;
    virtual std::any visitMulExp(SysYParser::MulExpContext *ctx) override;
    virtual std::any visitUnaryExp(SysYParser::UnaryExpContext *ctx) override;
    virtual std::any visitPrimaryExp(SysYParser::PrimaryExpContext *ctx) override;
    virtual std::any visitNumber(SysYParser::NumberContext *ctx) override;

private:
    Module *module_;
    Function *current_function_;
    IRBuilder builder_{nullptr};
    int temp_count_;

    std::string genName() { return std::to_string(++temp_count_); }
};
