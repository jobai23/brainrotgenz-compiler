/* ================================================
   BrainRot Gen Z Compiler
   Author: Joseph Peter Petlyn Bailey
   File: main.c
   Purpose: Entry point — reads .brainrot file
            runs lexer, parser, evaluator
   ================================================ */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "lexer.h"
#include "parser.h"
#include "evaluator.h"

/* ------------------------------------------------
   READ FILE
   ------------------------------------------------ */
static char *read_file(const char *path) {
    FILE *file = fopen(path, "r");
    if (!file) {
        fprintf(stderr, "error: could not open file '%s'\n", path);
        return NULL;
    }
    fseek(file, 0, SEEK_END);
    long size = ftell(file);
    rewind(file);
    char *buffer = malloc(size + 1);
    if (!buffer) {
        fprintf(stderr, "error: out of memory\n");
        fclose(file);
        return NULL;
    }
    fread(buffer, 1, size, file);
    buffer[size] = '\0';
    fclose(file);
    return buffer;
}

/* ------------------------------------------------
   PRINT USAGE
   ------------------------------------------------ */
static void print_usage(void) {
    fprintf(stderr, "BrainRot Gen Z Compiler v1.0\n");
    fprintf(stderr, "Author: Joseph Peter Petlyn Bailey\n");
    fprintf(stderr, "\n");
    fprintf(stderr, "Usage:\n");
    fprintf(stderr, "  brainrot <file.brainrot>          run a program\n");
    fprintf(stderr, "  brainrot --debug <file.brainrot>  run with debug output\n");
    fprintf(stderr, "  brainrot --tokens <file.brainrot> show tokens only\n");
    fprintf(stderr, "  brainrot --ast <file.brainrot>    show AST only\n");
    fprintf(stderr, "  brainrot --version                show version\n");
}

/* ------------------------------------------------
   MAIN
   ------------------------------------------------ */
int main(int argc, char *argv[]) {

    /* flags */
    int debug_mode  = 0;
    int tokens_mode = 0;
    int ast_mode    = 0;
    const char *filename = NULL;

    /* parse arguments */
    for (int i = 1; i < argc; i++) {
        if (strcmp(argv[i], "--debug") == 0) {
            debug_mode = 1;
        } else if (strcmp(argv[i], "--tokens") == 0) {
            tokens_mode = 1;
        } else if (strcmp(argv[i], "--ast") == 0) {
            ast_mode = 1;
        } else if (strcmp(argv[i], "--version") == 0) {
            printf("BrainRot Gen Z Compiler v1.0\n");
            printf("Author: Joseph Peter Petlyn Bailey\n");
            return 0;
        } else if (argv[i][0] == '-') {
            fprintf(stderr, "error: unknown flag '%s'\n", argv[i]);
            print_usage();
            return 1;
        } else {
            filename = argv[i];
        }
    }

    /* check filename provided */
    if (!filename) {
        print_usage();
        return 1;
    }

    /* check file extension */
    const char *ext = strrchr(filename, '.');
    if (!ext || strcmp(ext, ".brainrot") != 0) {
        fprintf(stderr, "error: file must have .brainrot extension\n");
        return 1;
    }

    /* read source file */
    char *source = read_file(filename);
    if (!source) return 1;

    /* ---- PHASE 1: LEXER ---- */
    int token_count = 0;
    Token *tokens = tokenize(source, &token_count);
    if (!tokens) {
        free(source);
        return 1;
    }

    if (debug_mode || tokens_mode) {
        printf("=== TOKENS (%d) ===\n", token_count);
        print_tokens(tokens, token_count);
    }

    if (tokens_mode) {
        free_tokens(tokens, token_count);
        free(source);
        return 0;
    }

    /* ---- PHASE 2: PARSER ---- */
    ASTNode *ast = parse(tokens, token_count);
    if (!ast) {
        free_tokens(tokens, token_count);
        free(source);
        return 1;
    }

    if (debug_mode || ast_mode) {
        printf("=== AST ===\n");
        print_ast(ast, 0);
        printf("\n");
    }

    if (ast_mode) {
        free_ast(ast);
        free_tokens(tokens, token_count);
        free(source);
        return 0;
    }

    /* ---- PHASE 3: EVALUATOR ---- */
    run(ast);

    /* ---- CLEAN UP ---- */
    free_ast(ast);
    free_tokens(tokens, token_count);
    free(source);

    return 0;
}