#pragma once

#include "antlr4-runtime.h"
#include "SysYParserBaseVisitor.h"
#include "ir/Module.h"
#include "ir/IRBuilder.h"
#include "ir/Type.h"
#include "ir/Constant.h"
#include <cstddef>
#include <functional>
#include <map>
#include <set>
#include <string>
#include <utility>
#include <vector>

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
    virtual std::any visitForStmt(SysYParser::ForStmtContext *ctx) override;
    virtual std::any visitWhileStmt(SysYParser::WhileStmtContext *ctx) override;
    virtual std::any visitBreakStmt(SysYParser::BreakStmtContext *ctx) override;
    virtual std::any visitContinueStmt(SysYParser::ContinueStmtContext *ctx) override;
    virtual std::any visitStructDef(SysYParser::StructDefContext *ctx) override;

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
    
    // LValues
    virtual std::any visitLValId(SysYParser::LValIdContext *ctx) override;
    virtual std::any visitLValArray(SysYParser::LValArrayContext *ctx) override;
    virtual std::any visitLValMember(SysYParser::LValMemberContext *ctx) override;
    virtual std::any visitLValDeref(SysYParser::LValDerefContext *ctx) override;

    // Constant expression evaluation
    virtual std::any visitConstExp(SysYParser::ConstExpContext *ctx) override;

    // For statement initialization
    virtual std::any visitForInitAssign(SysYParser::ForInitAssignContext *ctx) override;
    virtual std::any visitForInitExp(SysYParser::ForInitExpContext *ctx) override;

private:
    struct SymbolInfo {
        Value *value = nullptr;
        Type *type = nullptr;
        bool isConst = false;
        Constant *constValue = nullptr;
        bool isGlobal = false;
    };

    Module *module_;
    Function *current_function_;
    IRBuilder builder_{nullptr};
    int temp_count_;

    // Scoped symbol tables with detailed info
    std::vector<std::map<std::string, SymbolInfo>> symbol_table_;
    std::map<std::string, SymbolInfo> global_symbol_table_;

    // Function table: function name -> Function*
    std::map<std::string, Function *> function_table_;

    // Loop context stack for break/continue
    // Each entry: (loop header block, loop exit block)
    std::vector<std::pair<BasicBlock *, BasicBlock *>> loop_stack_;
    
    // Basic block counter for unique naming
    int bb_count_ = 0;

    // Set of used names in the current function to ensure uniqueness
    std::set<std::string> used_names_;
    
    // Named struct types
    std::map<std::string, StructType *> struct_types_;

    // Map struct name -> (member name -> index)
    std::map<std::string, std::map<std::string, int>> struct_member_indices_;

    // Helper methods
    std::string genName() { return ".v" + std::to_string(++temp_count_); }
    std::string genBBName(const std::string &prefix) { return getUniqueName(prefix + std::to_string(++bb_count_)); }

    // Generate unique IR variable name (for handling same-named variables in different scopes)
    std::string getUniqueName(const std::string &originalName) {
        std::string baseName = originalName;
        if (baseName.length() > 64) {
            size_t hash = std::hash<std::string>{}(baseName);
            baseName = baseName.substr(0, 32) + "_" + std::to_string(hash);
        }

        if (used_names_.find(baseName) == used_names_.end()) {
            used_names_.insert(baseName);
            return baseName;
        }
        std::string name;
        int count = 1;
        do {
            name = baseName + "." + std::to_string(count++);
        } while (used_names_.find(name) != used_names_.end());
        used_names_.insert(name);
        return name;
    }

    bool isInt1Type(Type *ty) {
        if (!ty || !ty->isIntegerTy()) return false;
        auto *intTy = static_cast<IntegerType *>(ty);
        return intTy->getBitWidth() == 1;
    }

    bool isGlobalScope() const { return current_function_ == nullptr; }

    void pushScope() { symbol_table_.push_back({}); }

    void popScope() {
        if (!symbol_table_.empty()) symbol_table_.pop_back();
    }

    void addSymbol(const std::string &name, Value *val, Type *type, bool isConst = false, Constant *constValue = nullptr) {
        SymbolInfo info{val, type, isConst, constValue, isGlobalScope()};
        if (info.isGlobal) {
            global_symbol_table_[name] = info;
        } else if (!symbol_table_.empty()) {
            symbol_table_.back()[name] = info;
        }
    }

    SymbolInfo *lookupSymbolInfo(const std::string &name) {
        for (auto it = symbol_table_.rbegin(); it != symbol_table_.rend(); ++it) {
            auto found = it->find(name);
            if (found != it->end()) {
                return &found->second;
            }
        }
        auto git = global_symbol_table_.find(name);
        if (git != global_symbol_table_.end()) {
            return &git->second;
        }
        return nullptr;
    }

    Constant *lookupConstValue(const std::string &name) {
        if (auto *info = lookupSymbolInfo(name)) {
            return info->constValue;
        }
        return nullptr;
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
    Constant *evalConstExp(SysYParser::AddExpContext *ctx);
    Constant *evalConstMulExp(SysYParser::MulExpContext *ctx);
    Constant *evalConstUnaryExp(SysYParser::UnaryExpContext *ctx);
    Constant *evalConstPrimaryExp(SysYParser::PrimaryExpContext *ctx);
    Constant *evalConstNumber(SysYParser::NumberContext *ctx);
    Constant *evalConstExp(SysYParser::ConstExpContext *ctx);
    Constant *evalConstExp(SysYParser::ExpContext *ctx);
    Constant *evalConstLVal(SysYParser::LValContext *ctx);
    
    // Type helpers
    Type *getUpgradedType(Type *t1, Type *t2);
    Value *castTo(Value *val, Type *targetTy, BasicBlock *currBB);

    std::vector<int> collectDimensions(const std::vector<SysYParser::ConstExpContext *> &dimCtxs);
    Type *buildArrayType(Type *base, const std::vector<int> &dims);
    Constant *getZeroInitializer(Type *ty);
    Constant *buildConstInitializer(Type *ty, SysYParser::ConstInitValContext *ctx);
    Constant *buildVarInitializer(Type *ty, SysYParser::InitValContext *ctx);
    void emitLocalInitializer(Value *ptr, Type *ty, SysYParser::InitValContext *ctx);
    void emitLocalInitRecursive(Value *ptr, Type *ty, SysYParser::InitValContext *ctx, std::vector<int> &indices);
    void fillArrayInitFromScalars(Value *ptr, Type *ty, const std::vector<SysYParser::InitValContext *> &subInits, size_t &cursor, std::vector<int> &indices);
    void emitConstInitializer(Value *ptr, Type *ty, Constant *init);
    void emitConstInitRecursive(Value *ptr, Type *ty, Constant *init, std::vector<int> &indices);
    Value *promoteToInt32(Value *val);
    Value *promoteToInt64(Value *val);
    Value *getArrayElementPtr(const SymbolInfo &info, SysYParser::LValContext *ctx, Type **elemTy);
    Value *adjustArgumentToParam(Value *arg, Type *paramTy);
    Constant *buildConstArrayFromScalars(Type *ty, const std::vector<SysYParser::ConstInitValContext *> &subInits, size_t &cursor);
    Constant *buildVarArrayFromScalars(Type *ty, const std::vector<SysYParser::InitValContext *> &subInits, size_t &cursor);
    AllocaInst *createEntryBlockAlloca(Type *ty, const std::string &name = "");

    int getPointerDepth(SysYParser::PointerContext *ctx);
    Type *applyPointerDepth(Type *baseTy, int depth);
    Value *getLValAddress(SysYParser::LValContext *ctx, Type **elemTy);
    Value *createPointerOffset(Value *ptr, Value *idx, bool isSub);
};
