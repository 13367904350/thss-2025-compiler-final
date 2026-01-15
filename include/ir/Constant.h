#pragma once

#include "ir/User.h"
#include <utility>
#include <vector>
#include <cstdint>

class Constant : public User {
public:
    Constant(Type *ty, const std::string &name = "") : User(ty, name) {}
    virtual bool isZero() const { return false; }
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

    virtual bool isZero() const override {
        return val_ == 0;
    }

    std::string print() const override {
        return std::to_string(val_);
    }

    std::string getNameStr() const override {
        return print();
    }

private:
    int val_;
};

class ConstantFP : public Constant {
public:
    ConstantFP(Type *ty, float val) : Constant(ty), val_(val) {}

    static ConstantFP *get(float val) {
        return new ConstantFP(Type::getFloatTy(), val);
    }

    float getValue() const { return val_; }

    virtual bool isZero() const override {
        return val_ == 0.0f;
    }

    std::string print() const override {
        // Hex representation of float in LLVM IR
        // or standard float string if simple.
        // LLVM requires parsing hex format for precision, or standard format.
        // Let's use simple format or hex. For now simple.
        // Actually, LLVM IR often uses double format for constants even if float type.
        // "float 0.000000e+00"
        char buffer[100];
        // Using hex format for precision: 0x40490fdb...
        double dval = static_cast<double>(val_);
        uint64_t bits = *reinterpret_cast<uint64_t*>(&dval);
        // But wait, Type is float (32 bit). 
        // LLVM IR: "float 0x3FF..." -> hex of double? No, "float 0x..." hex of double.
        // For float type, it is cast to double then printed as hex.
        // Or simply scientific notation.
        // Let's try snprintf with scientific.
        // But to be safe and simple: std::to_string(val_)
        // But simple to_string might lose precision.
        // Let's output hex format which is robust.
        // LLVM uses: format("%le", val) or "0x..."
        
        // Let's stick with hex format for accuracy.
        // float constant in LLVM IR: "float 0x400921FB54442D18" (double precision hex)
        // Even if type is float.
        union { double d; uint64_t x; } u;
        u.d = (double)val_; 
        sprintf(buffer, "0x%016llX", (unsigned long long)u.x);
        return std::string(buffer);
    }

    std::string getNameStr() const override {
        return print();
    }

private:
    float val_;
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

    virtual bool isZero() const override {
        for (auto *elem : elements_) {
            if (!elem->isZero()) return false;
        }
        return true;
    }

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

class ConstantStruct : public Constant {
public:
    ConstantStruct(StructType *ty, std::vector<Constant *> elements)
        : Constant(ty), elements_(std::move(elements)) {}

    static ConstantStruct *get(StructType *ty, std::vector<Constant *> elements) {
        return new ConstantStruct(ty, std::move(elements));
    }

    virtual bool isZero() const override {
        for (auto *elem : elements_) {
            if (!elem->isZero()) return false;
        }
        return true;
    }

    std::string print() const override {
        std::string s = "{";
        for (size_t i = 0; i < elements_.size(); ++i) {
            auto *elem = elements_[i];
            s += elem->getType()->print() + " " + elem->print();
            if (i + 1 < elements_.size()) {
                s += ", ";
            }
        }
        s += "}";
        return s;
    }

private:
    std::vector<Constant *> elements_;
};
