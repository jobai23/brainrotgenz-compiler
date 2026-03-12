#ifndef LEXER_H
#define LEXER_H

/* ================================================
   BrainRot Gen Z Compiler
   Author: Joseph Peter Petlyn Bailey
   File: lexer.h
   Purpose: Token types and Lexer interface
   ================================================ */

/* ------------------------------------------------
   TOKEN TYPES
   Every possible token in BrainRot Gen Z language
   ------------------------------------------------ */
typedef enum {

    /* literals */
    TOKEN_NUMBER,        /* 10, 42, 100          */
    TOKEN_STRING,        /* "hello slime"        */
    TOKEN_IDENTIFIER,    /* variable names       */

    /* data types */
    TOKEN_GOONER,        /* int                  */
    TOKEN_BADDIE,        /* string               */
    TOKEN_SLIME,         /* float                */
    TOKEN_GOON,          /* bool                 */
    TOKEN_BUM,           /* void / null          */

    /* variable declaration */
    TOKEN_JIT,           /* let / var            */

    /* boolean values */
    TOKEN_W,             /* true / >             */
    TOKEN_L,             /* false / <            */

    /* keywords — libraries and constants */
    TOKEN_COOK,          /* #include / function  */
    TOKEN_LIT,           /* #define              */

    /* keywords — functions */
    TOKEN_COOKED,        /* return               */
    TOKEN_SLIDE,         /* function call        */

    /* keywords — input output */
    TOKEN_SYABU,         /* printf               */
    TOKEN_GUMIT,         /* scanf                */

    /* keywords — decision */
    TOKEN_YN,            /* if                   */
    TOKEN_FYNSHYT,       /* else if              */
    TOKEN_OPPS,          /* else                 */

    /* keywords — loops */
    TOKEN_RISKY_SHOOT,   /* while                */
    TOKEN_SAY_LESS,      /* do-while             */
    TOKEN_SLIDE_ON_EM,   /* for                  */

    /* keywords — comparison */
    TOKEN_NO_CAP,        /* ==                   */
    TOKEN_CAP,           /* !=                   */
    TOKEN_GYATT,         /* >=                   */
    TOKEN_BUGGING,       /* <=                   */

    /* keywords — arithmetic */
    TOKEN_FAP,           /* ++                   */
    TOKEN_DOUBLE_IT,     /* *= 2                 */
    TOKEN_BENJIS,        /* 100                  */
    TOKEN_GWAK_3K,       /* *= 1000              */

    /* keywords — comments */
    TOKEN_DIABOLICAL,    /* //                   */

    /* keywords — entry point */
    TOKEN_PUT_THE_FIRES, /* main()               */

    /* symbols */
    TOKEN_PLUS,          /* +                    */
    TOKEN_MINUS,         /* -                    */
    TOKEN_STAR,          /* *                    */
    TOKEN_SLASH,         /* /                    */
    TOKEN_EQUALS,        /* =                    */
    TOKEN_GREATER,       /* >                    */
    TOKEN_LESS,          /* <                    */
    TOKEN_LBRACE,        /* {                    */
    TOKEN_RBRACE,        /* }                    */
    TOKEN_LPAREN,        /* (                    */
    TOKEN_RPAREN,        /* )                    */
    TOKEN_SEMICOLON,     /* ;                    */

    /* end of file */
    TOKEN_EOF            /* end of source code   */

} TokenType;

/* ------------------------------------------------
   TOKEN STRUCT
   The shape of a single token
   Every token the lexer produces has these fields
   ------------------------------------------------ */
typedef struct {
    TokenType type;   /* what kind of token     */
    char     *value;  /* the actual text        */
    int       line;   /* which line it is on    */
} Token;

/* ------------------------------------------------
   LEXER FUNCTIONS
   Declared here, defined in lexer.c
   ------------------------------------------------ */
Token *tokenize(const char *source, int *token_count);
void   print_tokens(Token *tokens, int count);
void   free_tokens(Token *tokens, int count);

#endif

/*What Each Part Means
#ifndef LEXER_H / #define LEXER_H / #endif
These are header guards. They prevent the file from being included twice. Every .h file must have them.
typedef enum { } TokenType
An enum is a list of named constants. Each name becomes a number internally — TOKEN_NUMBER is 0, TOKEN_STRING is 1, and so on. This is how your compiler knows what kind of token it is looking at.
typedef struct { } Token
A struct groups related data together. Every token your lexer produces will be one of these — it has a type, a value, and a line number.
The three function declarations at the bottom
These tell the compiler that these functions exist — they will be defined in lexer.c. tokenize is the main function that does all the work.
* 
craftinginterpreters.com
Read these chapters in this order:
Chapter 1 — Introduction (~30 minutes)
Read like a story. No notes. Just absorb why someone builds a language.
Chapter 2 — A Map of the Territory (~45 minutes)
This is your entire pipeline explained with diagrams. Read slowly. Every stage you will build is here.
Chapter 4 — Scanning (~1 hour)
This is the lexer chapter. This is what you are building today. Read the whole thing. When done close the browser and do not look at it again until you are stuck. You will be building your own lexer based on the concepts in this chapter, but you will not be copying code. You need to understand the concepts, not memorize code.
*/