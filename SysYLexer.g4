lexer grammar SysYLexer;

// Keywords
CONST : 'const';
INT : 'int';
FLOAT : 'float';
VOID : 'void';
IF : 'if';
ELSE : 'else';
WHILE : 'while';
FOR : 'for';
BREAK : 'break';
CONTINUE : 'continue';
RETURN : 'return';
STRUCT : 'struct';

// Operators
PLUS : '+';
MINUS : '-';
MUL : '*';
DIV : '/';
MOD : '%';
ASSIGN : '=';
EQ : '==';
NEQ : '!=';
LT : '<';
GT : '>';
LE : '<=';
GE : '>=';
NOT : '!';
AMP : '&';
AND : '&&';
OR : '||';

LPAREN : '(';
RPAREN : ')';
LBRACK : '[';
RBRACK : ']';
LBRACE : '{';
RBRACE : '}';
COMMA : ',';
SEMICOLON : ';';
DOT : '.';

// Literals
IDENT : [a-zA-Z_] [a-zA-Z0-9_]*;
FLOAT_CONST : [0-9]+ '.' [0-9]* ([eE] [+-]? [0-9]+)?
            | '.' [0-9]+ ([eE] [+-]? [0-9]+)?
            | [0-9]+ [eE] [+-]? [0-9]+
            | '0x' [0-9a-fA-F]+ '.' [0-9a-fA-F]* ([pP] [+-]? [0-9]+)?
            | '0x' '.' [0-9a-fA-F]+ ([pP] [+-]? [0-9]+)?
            ;
DEC_INT_CONST : [1-9] [0-9]* | '0';
OCT_INT_CONST : '0' [0-7]+;
HEX_INT_CONST : '0' [xX] [0-9a-fA-F]+;

// Comments and Whitespace
WS : [ \t\r\n]+ -> skip;
LINE_COMMENT : '//' .*? '\r'? '\n' -> skip;
BLOCK_COMMENT : '/*' .*? '*/' -> skip;