/* ================================================
   BrainRot Gen Z Compiler
   Author: Joseph Peter Petlyn Bailey
   File: parser.h
   Purpose: AST node types and structures
   ================================================ */

#ifndef PARSER_H
#define PARSER_H

#include "lexer.h"

/* ------------------------------------------------
   AST NODE TYPES
   Every possible node in the BrainRot AST
   ------------------------------------------------ */
typedef enum {

    NODE_PROGRAM,       /* root — entire program          */

    /* statements */
    NODE_VAR_DECL,      /* gooner jit x = 0;              */
    NODE_PRINT,         /* syabu "hello";                 */
    NODE_INPUT,         /* gumit name;                    */
    NODE_RETURN,        /* cooked 0;                      */
    NODE_INCREMENT,     /* fap x;                         */
    NODE_BLOCK,         /* { ... }                        */

    /* decision */
    NODE_IF,            /* yn condition { }               */
    NODE_ELIF,          /* fynshyt condition { }          */
    NODE_ELSE,          /* opps { }                       */

    /* loops */
    NODE_WHILE,         /* risky shoot cond { }           */
    NODE_FOR,           /* slide on em (init;cond;step){} */
    NODE_DOWHILE,       /* say less { } risky shoot cond; */

    /* expressions */
    NODE_BINOP,         /* x + y, x gyatt 5               */
    NODE_LITERAL,       /* 10, "hello", 1.5               */
    NODE_IDENTIFIER     /* x, name, score                 */

} NodeType;

/* ------------------------------------------------
   AST NODE STRUCT
   Every node in the tree is one of these
   ------------------------------------------------ */
typedef struct ASTNode {

    NodeType type;      /* what kind of node this is      */

    /* for literals and identifiers */
    char *value;        /* the actual value: "10", "x"    */

    /* for binary operations */
    char *op;           /* operator: "+", "gyatt", "L"    */

    /* data type for variable declarations */
    char *data_type;    /* "gooner", "baddie", "slime"     */

    /* children — left and right for expressions */
    struct ASTNode *left;
    struct ASTNode *right;

    /* children — body for blocks and statements */
    struct ASTNode **body;
    int              body_count;

    /* condition for if/while/for */
    struct ASTNode *condition;

    /* for loops — init and step */
    struct ASTNode *init;
    struct ASTNode *step;

    /* chained if/elif/else */
    struct ASTNode *next_branch;

    /* line number for error messages */
    int line;

} ASTNode;

/* ------------------------------------------------
   PARSER FUNCTIONS
   ------------------------------------------------ */
ASTNode *parse(Token *tokens, int token_count);
void     print_ast(ASTNode *node, int depth);
void     free_ast(ASTNode *node);

#endif