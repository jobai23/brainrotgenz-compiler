# BrainRot Gen Z — Compiler Design

**Author:** Joseph Peter Petlyn Bailey  
**Date:** February 28 2026

---

## Goal
To help students and enthusiasts get a deep understanding of how 
compilers work by building one from scratch in C — no shortcuts, 
no copying, every line understood.

## Future Goal
Future implementations will help people learn different programming 
languages, especially the most used ones in the industry. This project 
will be open source — anyone can contribute and make it better.

---

## The Pipeline

Source Code → Lexer → Tokens → Parser → AST → Evaluator → Output

---

## Phase 1: Lexer
- Input: raw BrainRot source code as a string
- Output: array of tokens
- Job: scan characters one by one, group into meaningful units
- File: src/lexer.c and src/lexer.h

## Phase 2: Parser
- Input: array of tokens from the lexer
- Output: Abstract Syntax Tree (AST)
- Job: understand the structure and meaning of token sequences
- File: src/parser.c and src/parser.h

## Phase 3: Evaluator
- Input: AST from the parser
- Output: program execution and printed results
- Job: walk the tree and compute values
- File: src/evaluator.c and src/evaluator.h

---

## Token Types
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

---

## File Structure

brainrotgenz compiler/
├── src/
│   ├── main.c          entry point of the compiler
│   ├── lexer.c         tokenizer implementation
│   ├── lexer.h         token types and lexer interface
│   ├── parser.c        AST builder implementation
│   ├── parser.h        AST node types and parser interface
│   ├── evaluator.c     tree walker implementation
│   └── evaluator.h     evaluator interface
├── tests/
│   └── hello.brainrot  test program written in BrainRot
├── docs/
│   └── pseudocode.md   plain english algorithm before coding
├── Makefile            build automation
├── README.md           project overview
├── DESIGN.md           this file
└── BRAINROT.md         full BrainRot language specification