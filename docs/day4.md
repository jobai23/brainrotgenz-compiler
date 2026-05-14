DAY 4 LOG — BrainRot Gen Z Compiler
Author: Joseph Peter Petlyn Bailey
Date: april 2026
Goal: Build the Evaluator — execute BrainRot programs

Summary
Day 4 was the evaluator day — the most exciting day of the project. By end of day the full compiler pipeline was working. Real BrainRot programs were executing, printing output, taking input, running loops, and making decisions. The language is alive.

Reading — Before Coding
Read Crafting Interpreters Chapter 7 — Evaluating Expressions.
Three questions answered from memory:
What is an environment in an interpreter?
An environment is a data structure that maps variable names to their current values during program execution. It represents the state of the program at any given point, allowing the interpreter to look up or update variables. Environments support scoping and are implemented as hash maps or stacks of frames.
How does a tree-walk evaluator work?
A tree-walk evaluator processes the AST by recursively traversing its nodes. Each node corresponds to a language construct. The evaluator defines behavior for each node type — recursively evaluates child nodes, applies the operation, and updates the environment if needed.
What is the difference between a statement and an expression?
An expression evaluates to a value. A statement performs an action and typically has no return value. Expressions can be nested inside statements but not vice versa.

Part 1 — Writing src/evaluator.h
ValueType Enum — 5 Value Types
ctypedef enum {
    VAL_INT,     /* gooner — whole number    */
    VAL_FLOAT,   /* slime  — decimal number  */
    VAL_STRING,  /* baddie — text            */
    VAL_BOOL,    /* goon   — W or L          */
    VAL_NULL     /* bum    — nothing         */
} ValueType;
Value Struct — Uses A Union
ctypedef struct {
    ValueType type;
    union {
        int    i;   /* VAL_INT and VAL_BOOL */
        double f;   /* VAL_FLOAT            */
        char  *s;   /* VAL_STRING           */
    } as;
} Value;
A union saves memory — only one field is active at a time depending on the type.
Environment Struct
ctypedef struct {
    EnvEntry *entries;   /* array of name-value pairs */
    int       count;
    int       capacity;
} Environment;
Function Declarations
cEnvironment *env_create(void);
void         env_set(Environment *env, const char *name, Value value);
Value        env_get(Environment *env, const char *name);
void         env_free(Environment *env);
Value        evaluate(ASTNode *node, Environment *env);
void         run(ASTNode *ast);

Part 2 — Writing src/evaluator.c
Value Helper Functions
Five static helpers for creating values cleanly:
cstatic Value make_int(int i)
static Value make_float(double f)
static Value make_string(const char *s)
static Value make_bool(int b)
static Value make_null(void)
Environment Functions
env_create — allocates a new empty environment
env_set — stores or updates a variable:

Scans existing entries for a match
Updates in place if found
Grows the array with realloc if needed
Adds new entry at the end

env_get — retrieves a variable value:

Scans entries for matching name
Prints runtime error and exits if not found

env_free — frees all memory including string values
Helper Functions
print_value — used by syabu:
cVAL_INT    → printf("%d")
VAL_FLOAT  → printf("%g")
VAL_STRING → printf("%s")
VAL_BOOL   → prints "W" or "L"
VAL_NULL   → prints "bum"
is_truthy — used by conditions:

INT/BOOL: non-zero is truthy
FLOAT: non-zero is truthy
STRING: non-empty is truthy
NULL: always false

eval_binop — evaluates binary operations:

Promotes to float if either operand is float
Handles: + - * /
Handles: gyatt bugging no cap cap W L > <

Main evaluate Function — 14 Cases
Node TypeWhat It DoesNODE_LITERALParse value as int, float, or stringNODE_IDENTIFIERLook up variable in environmentNODE_BINOPEvaluate left and right then apply operatorNODE_VAR_DECLEvaluate initializer and store in environmentNODE_PRINTEvaluate expression and print with newlineNODE_INPUTRead from stdin, parse as int or stringNODE_RETURNEvaluate and return the valueNODE_INCREMENTGet variable, increment by 1, store backNODE_IFEvaluate condition, execute correct branchNODE_ELIFSame as IF — handles chained conditionsNODE_ELSEExecute body unconditionallyNODE_WHILELoop while condition is truthyNODE_FORInit, check condition, execute body, stepNODE_DOWHILEExecute body first, then check conditionNODE_BLOCKExecute all statements in orderNODE_PROGRAMExecute all top-level nodes

Part 3 — Updated src/main.c
Added #include "evaluator.h" and wired the evaluator into the pipeline:
c/* ---- PHASE 3: EVALUATOR ---- */
printf("\n=== RUNNING BRAINROT PROGRAM ===\n\n");
run(ast);

Part 4 — Problems Fixed
Problem 1 — undefined reference to run
The evaluator.c file still had the old placeholder content instead of the new implementation.
Fix: Replaced entire file with the full evaluator implementation.
Problem 2 — ./brainrot not recognized in PowerShell
PowerShell does not support ./ syntax.
Fix: Use .\brainrot.exe in PowerShell or switch to Git Bash for ./brainrot.
Problem 3 — grinding... printing as 0
The string "grinding..." contains a . so the evaluator's NODE_LITERAL case treated it as a float and called atof("grinding...") which returns 0.
Fix: Check the first character before deciding if a literal is a number:
ccase NODE_LITERAL: {
    char first = node->value[0];
    if (first >= '0' && first <= '9') {
        if (strchr(node->value, '.'))
            return make_float(atof(node->value));
        return make_int((int)strtol(node->value, NULL, 10));
    }
    return make_string(node->value);
}

Final Test — Full hello.brainrot Execution
Input: name = jose, score = 23
BrainRot Gen Z Compiler v1.0
compiling: tests/hello.brainrot

=== LEXER: 136 tokens found ===
=== AST ===
[PROGRAM] ... (full tree)

=== RUNNING BRAINROT PROGRAM ===

enter your name slime:
jose
enter your score no cap:
23
L rank get your bag up
grinding...
grinding...
grinding...
0
1
2
3
4
0
1
2
program done green

green — program finished
Verification
FeatureExpectedResultsyabu printprints strings✅gumit inputcaptures user input✅yn/fynshyt/oppsscore 23 → L rank✅risky shootloops 3 times✅slide on emcounts 0 to 4✅say lessruns 0 to 2✅fapincrements correctly✅string literalsgrinding...✅float literals1.5 stored✅bool WisAlive = true✅

The Full Pipeline
.brainrot source file
    ↓
Lexer  (lexer.c)      → 136 tokens
    ↓
Parser (parser.c)     → AST with 16 node types
    ↓
Evaluator (evaluator.c) → actual program output

Files Modified Today
FileActionsrc/evaluator.hCreated — Value types, Environment structsrc/evaluator.cCreated — full tree-walk evaluatorsrc/main.cUpdated — added evaluator phase