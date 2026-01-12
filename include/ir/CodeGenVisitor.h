#pragma once

#include "antlr4-runtime.h"
#include "SysYParserBaseVisitor.h"
#include "ir/Module.h"
#include "ir/IRBuilder.h"
#include "ir/Type.h"
#include <map>
#include <vector>
#include <string>

class CodeGenVisitor : public SysYParserBaseVisitor {
public:
    explicit CodeGenVisitor(Module *m) : module_(m), current_function_(nullptr), temp_count_(0) {
        declareLibraryFunctions();
    }

    // Function and block
    virtual std::any visitFuncDef(SysYParser::FuncDefContext *ctx) override;
    virtual std::any visitBlock(SysYParser::BlockContext *ctx) override;

    // Declarations
    virtual std::any visitVarDecl(SysYParser::VarDeclContext *ctx) override;
    virtual std::any visitVarDef(SysYParser::VarDefContext *ctx) override;
    virtual std::any visitConstDecl(SysYParser::ConstDeclContext *ctx) override;
    virtual std::any visitConstDef(SysYParser::ConstDefContext *ctx) override;

    // Statements
    virtual std::any visitAssignStmt(SysYParser::AssignStmtContext *ctx) override;
    virtual std::any visitReturnStmt(SysYParser::ReturnStmtContext *ctx) override;
    virtual std::any visitIfStmt(SysYParser::IfStmtContext *ctx) override;
    virtual std::any visitWhileStmt(SysYParser::WhileStmtContext *ctx) override;
    virtual std::any visitBreakStmt(SysYParser::BreakStmtContext *ctx) override;
    virtual std::any visitContinueStmt(SysYParser::ContinueStmtContext *ctx) override;

    // Condition expressions
    virtual std::any visitCond(SysYParser::CondContext *ctx) override;
    virtual std::any visitRelExp(SysYParser::RelExpContext *ctx) override;
    virtual std::any visitEqExp(SysYParser::EqExpContext *ctx) override;
    virtual std::any visitLAndExp(SysYParser::LAndExpContext *ctx) override;
    virtual std::any visitLOrExp(SysYParser::LOrExpContext *ctx) override;

    // Expressions
    virtual std::any visitExp(SysYParser::ExpContext *ctx) override;
    virtual std::any visitAddExp(SysYParser::AddExpContext *ctx) override;
    virtual std::any visitMulExp(SysYParser::MulExpContext *ctx) override;
    virtual std::any visitUnaryExp(SysYParser::UnaryExpContext *ctx) override;
    virtual std::any visitPrimaryExp(SysYParser::PrimaryExpContext *ctx) override;
    virtual std::any visitNumber(SysYParser::NumberContext *ctx) override;
    virtual std::any visitLVal(SysYParser::LValContext *ctx) override;

    // Constant expression evaluation
    virtual std::any visitConstExp(SysYParser::ConstExpContext *ctx) override;

private:
    Module *module_;
    Function *current_function_;
    IRBuilder builder_{nullptr};
    int temp_count_;

    // Symbol table: variable name -> Value* (alloca or GlobalVariable)
    std::vector<std::map<std::string, Value *>> symbol_table_;
    
    // Global symbol table (separate for global variables)
    std::map<std::string, Value *> global_symbol_table_;

    // Function table: function name -> Function*
    std::map<std::string, Function *> function_table_;

    // Constant table: const variable name -> constant value (int)
    std::vector<std::map<std::string, int>> const_table_;
    
    // Global constant table
    std::map<std::string, int> global_const_table_;

    // Loop context stack for break/continue
    // Each entry: (loop header block, loop exit block)
    std::vector<std::pair<BasicBlock *, BasicBlock *>> loop_stack_;
    
    // Basic block counter for unique naming
    int bb_count_ = 0;
    
    // Variable name counter for generating unique IR names
    std::map<std::string, int> var_name_counter_;

    // Helper methods
    std::string genName() { return "v" + std::to_string(++temp_count_); }
    std::string genBBName(const std::string &prefix) { return prefix + std::to_string(++bb_count_); }
    
    // Generate unique IR variable name (for handling same-named variables in different scopes)
    std::string genVarName(const std::string &baseName) {
        int count = var_name_counter_[baseName]++;
        if (count == 0) {
            return baseName;
        }
        return baseName + "." + std::to_string(count);
    }
    
    // Check if type is i1
    bool isInt1Type(Type *ty) {
        if (!ty->isIntegerTy()) return false;
        IntegerType *intTy = static_cast<IntegerType *>(ty);
        return intTy->getBitWidth() == 1;
    }
    
    // Check if we are in global scope (not inside a function)
    bool isGlobalScope() const { return current_function_ == nullptr; }

    // Symbol table management
    void pushScope() { 
        symbol_table_.push_back({}); 
        const_table_.push_back({});
    }
    void popScope() { 
        if (!symbol_table_.empty()) symbol_table_.pop_back(); 
        if (!const_table_.empty()) const_table_.pop_back();
    }
    void addSymbol(const std::string &name, Value *val) {
        if (isGlobalScope()) {
            global_symbol_table_[name] = val;
        } else if (!symbol_table_.empty()) {
            symbol_table_.back()[name] = val;
        }
    }
    Value *lookupSymbol(const std::string &name) {
        // First search local scopes
        for (auto it = symbol_table_.rbegin(); it != symbol_table_.rend(); ++it) {
            auto found = it->find(name);
            if (found != it->end()) return found->second;
        }
        // Then search global scope
        auto git = global_symbol_table_.find(name);
        if (git != global_symbol_table_.end()) return git->second;
        return nullptr;
    }
    
    // Const table management
    void addConst(const std::string &name, int val) {
        if (isGlobalScope()) {
            global_const_table_[name] = val;
        } else if (!const_table_.empty()) {
            const_table_.back()[name] = val;
        }
    }
    bool lookupConst(const std::string &name, int &val) {
        // First search local scopes
        for (auto it = const_table_.rbegin(); it != const_table_.rend(); ++it) {
            auto found = it->find(name);
            if (found != it->end()) {
                val = found->second;
                return true;
            }
        }
        // Then search global scope
        auto git = global_const_table_.find(name);
        if (git != global_const_table_.end()) {
            val = git->second;
            return true;
        }
        return false;
    }

    // Function table management
    void addFunction(const std::string &name, Function *func) { function_table_[name] = func; }
    Function *lookupFunction(const std::string &name) {
        auto it = function_table_.find(name);
        return it != function_table_.end() ? it->second : nullptr;
    }

    // Declare library functions
    void declareLibraryFunctions();
    
    // Helper: evaluate constant expression at compile time
    int evalConstExp(SysYParser::AddExpContext *ctx);
    int evalConstMulExp(SysYParser::MulExpContext *ctx);
    int evalConstUnaryExp(SysYParser::UnaryExpContext *ctx);
    int evalConstPrimaryExp(SysYParser::PrimaryExpContext *ctx);
    int evalConstNumber(SysYParser::NumberContext *ctx);
};
