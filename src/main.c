/* ================================================
   BrainRot Gen Z Compiler
   Author: Joseph Peter Petlyn Bailey
   File: main.c
   Purpose: Entry point — reads .brainrot file
            and runs it through the lexer
   ================================================ */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "lexer.h"

/* ------------------------------------------------
   READ FILE
   reads entire file into a string
   returns the string — caller must free it
   ------------------------------------------------ */
static char *read_file(const char *path) {

    FILE *file = fopen(path, "r");
    if (!file) {
        fprintf(stderr, "error: could not open file '%s'\n", path);
        return NULL;
    }

    /* get file size */
    fseek(file, 0, SEEK_END);
    long size = ftell(file);
    rewind(file);

    /* allocate buffer */
    char *buffer = malloc(size + 1);
    if (!buffer) {
        fprintf(stderr, "error: out of memory\n");
        fclose(file);
        return NULL;
    }

    /* read file into buffer */
    fread(buffer, 1, size, file);
    buffer[size] = '\0';
    fclose(file);

    return buffer;
}

/* ------------------------------------------------
   MAIN
   ------------------------------------------------ */
int main(int argc, char *argv[]) {

    /* check arguments */
    if (argc < 2) {
        fprintf(stderr, "BrainRot Gen Z Compiler v1.0\n");
        fprintf(stderr, "Author: Joseph Peter Petlyn Bailey\n");
        fprintf(stderr, "Usage: brainrot <file.brainrot>\n");
        return 1;
    }

    /* check file extension */
    const char *filename = argv[1];
    const char *ext = strrchr(filename, '.');
    if (!ext || strcmp(ext, ".brainrot") != 0) {
        fprintf(stderr, "error: file must have .brainrot extension\n");
        fprintf(stderr, "usage: brainrot <file.brainrot>\n");
        return 1;
    }

    /* read the source file */
    printf("BrainRot Gen Z Compiler v1.0\n");
    printf("compiling: %s\n\n", filename);

    char *source = read_file(filename);
    if (!source) return 1;

    /* run lexer */
    int token_count = 0;
    Token *tokens = tokenize(source, &token_count);
    if (!tokens) {
        free(source);
        return 1;
    }

    /* print tokens for now */
    print_tokens(tokens, token_count);

    /* clean up */
    free_tokens(tokens, token_count);
    free(source);

    printf("lexer phase complete — %d tokens found\n", token_count);
    printf("green\n");

    return 0;
}