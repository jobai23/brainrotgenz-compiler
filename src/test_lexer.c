/* ================================================
   BrainRot Gen Z Compiler
   File: test_lexer.c
   Purpose: Test the lexer in isolation
   ================================================ */

#include <stdio.h>
#include <stdlib.h>
#include "lexer.h"

int main(void) {

    /* simple BrainRot test source */
    const char *source =
        "gooner jit x = 10;\n"
        "syabu x;\n"
        "yn x gyatt 5 {\n"
        "    syabu \"big number no cap\";\n"
        "}\n";

    printf("=== SOURCE CODE ===\n%s\n", source);

    int count = 0;
    Token *tokens = tokenize(source, &count);

    if (!tokens) {
        printf("lexer failed\n");
        return 1;
    }

    print_tokens(tokens, count);
    free_tokens(tokens, count);

    printf("lexer test passed green\n");
    return 0;
}