#pragma once

#include "ir/User.h"
#include <utility>
#include <vector>

class Constant : public User {
public:
    Constant(Type *ty, const std::string &name = "") : User(ty, name) {}
};

class ConstantInt : public Constant {
public:
    ConstantInt(Type *ty, int val) : Constant(ty), val_(val) {}

    static ConstantInt *get(int val) {
        return new ConstantInt(Type::getInt32Ty(), val);
    }
    
    static ConstantInt *get(Type* ty, int val) {
        return new ConstantInt(ty, val);
    }

    int getValue() const { return val_; }

    std::string print() const override {
        return std::to_string(val_);
    }

    std::string getNameStr() const override {
        return print();
    }

private:
    int val_;
};

class ConstantArray : public Constant {
public:
    ConstantArray(ArrayType *ty, std::vector<Constant *> elements)
        : Constant(ty), elements_(std::move(elements)) {}

    static ConstantArray *get(ArrayType *ty, std::vector<Constant *> elements) {
        return new ConstantArray(ty, std::move(elements));
    }

    ArrayType *getArrayType() const { return static_cast<ArrayType *>(getType()); }
    const std::vector<Constant *> &getElements() const { return elements_; }

    std::string print() const override {
        std::string s = "[";
        for (size_t i = 0; i < elements_.size(); ++i) {
            auto *elem = elements_[i];
            s += elem->getType()->print() + " " + elem->print();
            if (i + 1 < elements_.size()) {
                s += ", ";
            }
        }
        s += "]";
        return s;
    }

private:
    std::vector<Constant *> elements_;
};
