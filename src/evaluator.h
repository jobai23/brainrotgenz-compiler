/* ================================================
   BrainRot Gen Z Compiler
   Author: Joseph Peter Petlyn Bailey
   File: evaluator.h
   Purpose: Environment and value structures
            for tree-walk evaluation
   ================================================ */

#ifndef EVALUATOR_H
#define EVALUATOR_H

#include "parser.h"

/* ------------------------------------------------
   VALUE TYPES
   Every value in BrainRot is one of these
   ------------------------------------------------ */
typedef enum {
    VAL_INT,     /* gooner — whole number    */
    VAL_FLOAT,   /* slime  — decimal number  */
    VAL_STRING,  /* baddie — text            */
    VAL_BOOL,    /* goon   — W or L          */
    VAL_NULL     /* bum    — nothing         */
} ValueType;

/* ------------------------------------------------
   VALUE STRUCT
   Represents any value during execution
   ------------------------------------------------ */
typedef struct {
    ValueType type;
    union {
        int    i;   /* VAL_INT and VAL_BOOL */
        double f;   /* VAL_FLOAT            */
        char  *s;   /* VAL_STRING           */
    } as;
} Value;

/* ------------------------------------------------
   ENVIRONMENT ENTRY
   One variable — name mapped to value
   ------------------------------------------------ */
typedef struct {
    char  *name;
    Value  value;
} EnvEntry;

/* ------------------------------------------------
   ENVIRONMENT
   Stores all variables during execution
   ------------------------------------------------ */
typedef struct {
    EnvEntry *entries;
    int       count;
    int       capacity;
} Environment;

/* ------------------------------------------------
   EVALUATOR FUNCTIONS
   ------------------------------------------------ */
Environment *env_create(void);
void         env_set(Environment *env, const char *name, Value value);
Value        env_get(Environment *env, const char *name);
void         env_free(Environment *env);

Value        evaluate(ASTNode *node, Environment *env);
void         run(ASTNode *ast);

#endif