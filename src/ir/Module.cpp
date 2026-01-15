#include "ir/Module.h"
#include "ir/Function.h"
#include "ir/Constant.h"

GlobalVariable::GlobalVariable(std::string name, Module *m, Type *ty, bool is_const, Constant *init)
    : User(PointerType::get(ty), name), is_const_(is_const), init_val_(init) {
    m->addGlobalVariable(this);
}

std::string GlobalVariable::print() const {
    // Get the element type from pointer type
    Type *elemTy = static_cast<PointerType *>(getType())->getElementType();
    std::string s = "@" + getName() + " = " + (is_const_ ? "constant " : "global ") + elemTy->print() + " ";
    if (init_val_ && !init_val_->isZero()) {
        s += init_val_->print();
    } else {
        s += "zeroinitializer";
    }
    return s;
}

void Module::addFunction(Function *f) {
    functions_.push_back(f);
}

void Module::addGlobalVariable(GlobalVariable *g) {
    global_list_.push_back(g);
}

void Module::addStructDefinition(StructType *st) {
    struct_list_.push_back(st);
}

std::string Module::print() const {
    std::string s;
    for (auto st : struct_list_) {
        s += "%struct." + st->getName() + " = type { ";
        for (unsigned i = 0; i < st->getNumElements(); ++i) {
             s += st->getElementType(i)->print();
             if (i < st->getNumElements() - 1)
                 s += ", ";
        }
        s += " }\n";
    }
    for (auto g : global_list_) {
        s += g->print() + "\n";
    }
    for (auto f : functions_) {
        s += f->print() + "\n";
    }
    return s;
}
