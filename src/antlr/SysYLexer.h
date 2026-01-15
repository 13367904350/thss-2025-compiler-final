
// Generated from SysYLexer.g4 by ANTLR 4.13.1

#pragma once


#include "antlr4-runtime.h"




class  SysYLexer : public antlr4::Lexer {
public:
  enum {
    CONST = 1, INT = 2, FLOAT = 3, VOID = 4, IF = 5, ELSE = 6, WHILE = 7, 
    FOR = 8, BREAK = 9, CONTINUE = 10, RETURN = 11, STRUCT = 12, PLUS = 13, 
    MINUS = 14, MUL = 15, DIV = 16, MOD = 17, ASSIGN = 18, EQ = 19, NEQ = 20, 
    LT = 21, GT = 22, LE = 23, GE = 24, NOT = 25, AMP = 26, AND = 27, OR = 28, 
    LPAREN = 29, RPAREN = 30, LBRACK = 31, RBRACK = 32, LBRACE = 33, RBRACE = 34, 
    COMMA = 35, SEMICOLON = 36, DOT = 37, IDENT = 38, FLOAT_CONST = 39, 
    DEC_INT_CONST = 40, OCT_INT_CONST = 41, HEX_INT_CONST = 42, WS = 43, 
    LINE_COMMENT = 44, BLOCK_COMMENT = 45
  };

  explicit SysYLexer(antlr4::CharStream *input);

  ~SysYLexer() override;


  std::string getGrammarFileName() const override;

  const std::vector<std::string>& getRuleNames() const override;

  const std::vector<std::string>& getChannelNames() const override;

  const std::vector<std::string>& getModeNames() const override;

  const antlr4::dfa::Vocabulary& getVocabulary() const override;

  antlr4::atn::SerializedATNView getSerializedATN() const override;

  const antlr4::atn::ATN& getATN() const override;

  // By default the static state used to implement the lexer is lazily initialized during the first
  // call to the constructor. You can call this function if you wish to initialize the static state
  // ahead of time.
  static void initialize();

private:

  // Individual action functions triggered by action() above.

  // Individual semantic predicate functions triggered by sempred() above.

};

