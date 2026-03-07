/* ================================================
   BrainRot Gen Z Compiler
   Author: Joseph Peter Petlyn Bailey
   File: lexer.c
   Purpose: Tokenizer — turns source code into tokens
   ================================================ */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "lexer.h"

/* ------------------------------------------------
   HELPER — make a token
   ------------------------------------------------ */
static Token make_token(TokenType type, const char *value, int line) {
    Token t;
    t.type  = type;
    t.value = strdup(value);
    t.line  = line;
    return t;
}

/* ------------------------------------------------
   HELPER — check if a word is a keyword
   returns the TokenType if it is a keyword
   returns TOKEN_IDENTIFIER if it is not
   ------------------------------------------------ */
static TokenType check_keyword(const char *word) {

    /* data types */
    if (strcmp(word, "gooner")      == 0) return TOKEN_GOONER;
    if (strcmp(word, "baddie")      == 0) return TOKEN_BADDIE;
    if (strcmp(word, "slime")       == 0) return TOKEN_SLIME;
    if (strcmp(word, "goon")        == 0) return TOKEN_GOON;
    if (strcmp(word, "bum")         == 0) return TOKEN_BUM;

    /* variable declaration */
    if (strcmp(word, "jit")         == 0) return TOKEN_JIT;

    /* boolean values */
    if (strcmp(word, "W")           == 0) return TOKEN_W;
    if (strcmp(word, "L")           == 0) return TOKEN_L;

    /* functions */
    if (strcmp(word, "cook")        == 0) return TOKEN_COOK;
    if (strcmp(word, "cooked")      == 0) return TOKEN_COOKED;
    if (strcmp(word, "slide")       == 0) return TOKEN_SLIDE;
    if (strcmp(word, "lit")         == 0) return TOKEN_LIT;

    /* input output */
    if (strcmp(word, "syabu")       == 0) return TOKEN_SYABU;
    if (strcmp(word, "gumit")       == 0) return TOKEN_GUMIT;

    /* decision */
    if (strcmp(word, "yn")          == 0) return TOKEN_YN;
    if (strcmp(word, "fynshyt")     == 0) return TOKEN_FYNSHYT;
    if (strcmp(word, "opps")        == 0) return TOKEN_OPPS;

    /* arithmetic */
    if (strcmp(word, "fap")         == 0) return TOKEN_FAP;
    if (strcmp(word, "benjis")      == 0) return TOKEN_BENJIS;

    /* comparison */
    if (strcmp(word, "cap")         == 0) return TOKEN_CAP;
    if (strcmp(word, "gyatt")       == 0) return TOKEN_GYATT;
    if (strcmp(word, "bugging")     == 0) return TOKEN_BUGGING;

    /* not a keyword — must be an identifier */
    return TOKEN_IDENTIFIER;
}

/* ------------------------------------------------
   MAIN TOKENIZER FUNCTION
   Input:  source code string
   Output: array of tokens
   ------------------------------------------------ */
Token *tokenize(const char *source, int *token_count) {

    int capacity = 256;
    int count    = 0;
    int line     = 1;
    int i        = 0;
    int len      = strlen(source);

    /* allocate initial token array */
    Token *tokens = malloc(capacity * sizeof(Token));
    if (!tokens) {
        fprintf(stderr, "error: out of memory\n");
        return NULL;
    }

    while (i < len) {

        /* ---- skip whitespace ---- */
        if (source[i] == ' ' || source[i] == '\t' || source[i] == '\r') {
            i++;
            continue;
        }

        /* ---- track line numbers ---- */
        if (source[i] == '\n') {
            line++;
            i++;
            continue;
        }

        /* ---- numbers ---- */
        if (isdigit(source[i])) {
            int start = i;
            while (i < len && isdigit(source[i])) i++;
            int num_len = i - start;
            char *num = malloc(num_len + 1);
            strncpy(num, source + start, num_len);
            num[num_len] = '\0';
            tokens[count++] = make_token(TOKEN_NUMBER, num, line);
            free(num);
            continue;
        }

        /* ---- strings ---- */
        if (source[i] == '"') {
            i++; /* skip opening quote */
            int start = i;
            while (i < len && source[i] != '"') i++;
            int str_len = i - start;
            char *str = malloc(str_len + 1);
            strncpy(str, source + start, str_len);
            str[str_len] = '\0';
            tokens[count++] = make_token(TOKEN_STRING, str, line);
            free(str);
            i++; /* skip closing quote */
            continue;
        }

        /* ---- words — keywords and identifiers ---- */
        if (isalpha(source[i]) || source[i] == '_') {
            int start = i;
            while (i < len && (isalnum(source[i]) || source[i] == '_')) i++;
            int word_len = i - start;
            char *word = malloc(word_len + 1);
            strncpy(word, source + start, word_len);
            word[word_len] = '\0';

            /* check multi-word keywords */

            /* diabolical — comment, skip rest of line */
            if (strcmp(word, "diabolical") == 0) {
                while (i < len && source[i] != '\n') i++;
                free(word);
                continue;
            }

            /* no cap == */
            if (strcmp(word, "no") == 0) {
                while (i < len && source[i] == ' ') i++;
                if (strncmp(source + i, "cap", 3) == 0) {
                    i += 3;
                    tokens[count++] = make_token(TOKEN_NO_CAP, "no cap", line);
                    free(word);
                    continue;
                }
            }

            /* risky shoot */
            if (strcmp(word, "risky") == 0) {
                while (i < len && source[i] == ' ') i++;
                if (strncmp(source + i, "shoot", 5) == 0) {
                    i += 5;
                    tokens[count++] = make_token(TOKEN_RISKY_SHOOT, "risky shoot", line);
                    free(word);
                    continue;
                }
            }

            /* say less */
            if (strcmp(word, "say") == 0) {
                while (i < len && source[i] == ' ') i++;
                if (strncmp(source + i, "less", 4) == 0) {
                    i += 4;
                    tokens[count++] = make_token(TOKEN_SAY_LESS, "say less", line);
                    free(word);
                    continue;
                }
            }

            /* slide on em */
            if (strcmp(word, "slide") == 0) {
                while (i < len && source[i] == ' ') i++;
                if (strncmp(source + i, "on", 2) == 0) {
                    i += 2;
                    while (i < len && source[i] == ' ') i++;
                    if (strncmp(source + i, "em", 2) == 0) {
                        i += 2;
                        tokens[count++] = make_token(TOKEN_SLIDE_ON_EM, "slide on em", line);
                        free(word);
                        continue;
                    }
                }
            }

            /* put the fires in the bag */
            if (strcmp(word, "put") == 0) {
                while (i < len && source[i] == ' ') i++;
                if (strncmp(source + i, "the fires in the bag", 20) == 0) {
                    i += 20;
                    tokens[count++] = make_token(TOKEN_PUT_THE_FIRES, "put the fires in the bag", line);
                    free(word);
                    continue;
                }
            }

            /* double it and give it to the next */
            if (strcmp(word, "double") == 0) {
                while (i < len && source[i] == ' ') i++;
                if (strncmp(source + i, "it and give it to the next", 26) == 0) {
                    i += 26;
                    tokens[count++] = make_token(TOKEN_DOUBLE_IT, "double it and give it to the next", line);
                    free(word);
                    continue;
                }
            }

            /* gwak 3k */
            if (strcmp(word, "gwak") == 0) {
                while (i < len && source[i] == ' ') i++;
                if (strncmp(source + i, "3k", 2) == 0) {
                    i += 2;
                    tokens[count++] = make_token(TOKEN_GWAK_3K, "gwak 3k", line);
                    free(word);
                    continue;
                }
            }

            /* single word keywords and identifiers */
            TokenType type = check_keyword(word);
            tokens[count++] = make_token(type, word, line);
            free(word);
            continue;
        }

        /* ---- symbols ---- */
        char sym[2] = { source[i], '\0' };
        switch (source[i]) {
            case '+': tokens[count++] = make_token(TOKEN_PLUS,      sym, line); break;
            case '-': tokens[count++] = make_token(TOKEN_MINUS,     sym, line); break;
            case '*': tokens[count++] = make_token(TOKEN_STAR,      sym, line); break;
            case '/': tokens[count++] = make_token(TOKEN_SLASH,     sym, line); break;
            case '=': tokens[count++] = make_token(TOKEN_EQUALS,    sym, line); break;
            case '>': tokens[count++] = make_token(TOKEN_GREATER,   sym, line); break;
            case '<': tokens[count++] = make_token(TOKEN_LESS,      sym, line); break;
            case '{': tokens[count++] = make_token(TOKEN_LBRACE,    sym, line); break;
            case '}': tokens[count++] = make_token(TOKEN_RBRACE,    sym, line); break;
            case '(': tokens[count++] = make_token(TOKEN_LPAREN,    sym, line); break;
            case ')': tokens[count++] = make_token(TOKEN_RPAREN,    sym, line); break;
            case ';': tokens[count++] = make_token(TOKEN_SEMICOLON, sym, line); break;
            default:
                fprintf(stderr, "error: unknown character '%c' on line %d\n", source[i], line);
                break;
        }
        i++;

        /* grow array if needed */
        if (count >= capacity - 1) {
            capacity *= 2;
            tokens = realloc(tokens, capacity * sizeof(Token));
        }
    }

    /* add EOF token */
    tokens[count++] = make_token(TOKEN_EOF, "EOF", line);
    *token_count = count;
    return tokens;
}

/* ------------------------------------------------
   PRINT TOKENS — for testing and debugging
   ------------------------------------------------ */
void print_tokens(Token *tokens, int count) {
    printf("\n=== BRAINROT LEXER OUTPUT ===\n");
    for (int i = 0; i < count; i++) {
        printf("line %d | type: %3d | value: %s\n",
               tokens[i].line,
               tokens[i].type,
               tokens[i].value);
    }
    printf("=== END OF TOKENS ===\n\n");
}

/* ------------------------------------------------
   FREE TOKENS — clean up memory
   ------------------------------------------------ */
void free_tokens(Token *tokens, int count) {
    for (int i = 0; i < count; i++) {
        free(tokens[i].value);
    }
    free(tokens);
}