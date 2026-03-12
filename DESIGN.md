# BrainRot Gen Z — Compiler Design

**Author:** Joseph Peter Petlyn Bailey  
**Date:** February 28 2026  
**Project:** BrainRot Gen Z Compiler  
**Language:** C  
**Version:** 1.0.0  
**Status:** In Development  

---

## Goal

To help students and enthusiasts get a deep understanding of how
compilers work by building one from scratch in C — no shortcuts,
no copying, every line understood.

## Future Goal

Future implementations will help people learn different programming\
languages, especially the most used ones in the industry. This project
will be open source — anyone can contribute and make it better.

---

## The Pipeline
```
Source Code → Lexer → Tokens → Parser → AST → Evaluator → Output
```

Every BrainRot program goes through these 3 phases in order.
If any phase fails the compiler stops and reports an error.

---

## Phase 1: Lexer

- **Input:** raw BrainRot source code as a plain string of characters
- **Output:** an array of tokens
- **Job:** scan the source code character by character and group
  them into meaningful units called tokens
- **Example:**
```
  gooner jit x = 10;
  becomes →
  [GOONER] [JIT] [IDENTIFIER:x] [EQUALS] [NUMBER:10] [SEMICOLON]
```
- **Files:** src/lexer.c and src/lexer.h

---

## Phase 2: Parser

- **Input:** array of tokens produced by the lexer
- **Output:** Abstract Syntax Tree (AST)
- **Job:** read the token sequence and understand its structure
  and meaning — build a tree that represents the program logically
- **Example:**
```
  [GOONER] [JIT] [IDENTIFIER:x] [EQUALS] [NUMBER:10] [SEMICOLON]
  becomes →
  VarDeclaration {
      type: GOONER,
      name: x,
      value: 10
  }
```
- **Files:** src/parser.c and src/parser.h

---

## Phase 3: Evaluator

- **Input:** AST produced by the parser
- **Output:** actual program execution and printed results
- **Job:** walk the AST node by node and compute the values,
  run the logic, print the output
- **Example:**
```
  VarDeclaration { type: GOONER, name: x, value: 10 }
  becomes →
  x is stored in memory with value 10
```
- **Files:** src/evaluator.c and src/evaluator.h

---

## Token Types
```
NUMBER, STRING, IDENTIFIER,
JIT, GOONER, BADDIE, SLIME, GOON, BUM,
COOK, COOKED, SLIDE, LIT,
SYABU, GUMIT,
YN, FYNSHYT, OPPS,
RISKY_SHOOT, SAY_LESS, SLIDE_ON_EM,
NO_CAP, CAP, GYATT, BUGGING,
W, L, FAP,
DOUBLE_IT, BENJIS, GWAK_3K,
DIABOLICAL, PUT_THE_FIRES,
PLUS, MINUS, STAR, SLASH,
EQUALS, LBRACE, RBRACE, SEMICOLON,
EOF
```

---

## File Structure
```
brainrotgenz compiler/
├── src/
│   ├── main.c           entry point of the compiler
│   ├── lexer.c          tokenizer implementation
│   ├── lexer.h          token types and lexer interface
│   ├── parser.c         AST builder implementation
│   ├── parser.h         AST node types and parser interface
│   ├── evaluator.c      tree walker implementation
│   └── evaluator.h      evaluator interface
├── tests/
│   └── hello.brainrot   test program written in BrainRot
├── docs/
│   └── pseudocode.md    plain english algorithm before coding
├── Makefile             build automation
├── README.md            project overview
├── DESIGN.md            this file
└── LANGUAGE.md          full BrainRot language specification
```

---

## Build and Run
```bash
make                              # compiles the compiler
./brainrot tests/hello.brainrot   # runs a BrainRot program
make clean                        # removes compiled binary
```

---

## 2 Week Development Schedule

| Day | Task |
|-----|------|
| 1 | Planning, documentation, language spec |
| 2 | Read Crafting Interpreters Ch.4, write lexer.h token enum |
| 3 | Write lexer.c scanning loop, tokenize numbers and symbols |
| 4 | Tokenize all BrainRot keywords, test with hello.brainrot |
| 5 | Read Crafting Interpreters Ch.6, write parser.h AST nodes |
| 6 | Write parser.c — parse variable declarations |
| 7 | Parse expressions and arithmetic |
| 8 | Parse decisions (yn fynshyt opps) |
| 9 | Parse loops (risky shoot, say less, slide on em) |
| 10 | Parse functions (cook cooked slide) |
| 11 | Write evaluator.c — evaluate variables and arithmetic |
| 12 | Evaluate decisions and loops |
| 13 | Evaluate functions and input output |
| 14 | Polish, test everything, final commit |

---

*BrainRot Gen Z Compiler Design v1.0 — February 28 2026*


