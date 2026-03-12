/* ================================================
   BrainRot Gen Z Compiler
   Author: Joseph Peter Petlyn Bailey
   File: parser.c
   Purpose: Recursive descent parser
            Turns tokens into an AST
   ================================================ */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "parser.h"

/* ------------------------------------------------
   PARSER STATE
   Tracks current position in token array
   ------------------------------------------------ */
static Token *tokens;
static int    token_count;
static int    current;

/* ------------------------------------------------
   HELPERS
   ------------------------------------------------ */

/* look at current token without consuming it */
static Token *peek(void) {
    return &tokens[current];
}

/* consume current token and advance */
static Token *advance(void) {
    Token *t = &tokens[current];
    if (current < token_count - 1) current++;
    return t;
}

/* check if current token matches a type */
static int check(TokenType type) {
    return peek()->type == type;
}

/* consume token if it matches — return 1 if matched */
static int __attribute__((unused)) match(TokenType type) {
    if (check(type)) {
        advance();
        return 1;
    }
    return 0;
}


/* consume token and error if wrong type */
static Token *expect(TokenType type, const char *msg) {
    if (check(type)) return advance();
    fprintf(stderr, "parse error on line %d: expected %s but got '%s'\n",
            peek()->line, msg, peek()->value);
    exit(1);
}

/* ------------------------------------------------
   CREATE NODE
   Allocates and zero-initialises a new AST node
   ------------------------------------------------ */
static ASTNode *make_node(NodeType type) {
    ASTNode *node = calloc(1, sizeof(ASTNode));
    if (!node) {
        fprintf(stderr, "error: out of memory\n");
        exit(1);
    }
    node->type = type;
    node->line = peek()->line;
    return node;
}

/* ------------------------------------------------
   ADD CHILD TO BODY
   Grows body array dynamically
   ------------------------------------------------ */
static void add_child(ASTNode *parent, ASTNode *child) {
    parent->body = realloc(parent->body,
                   (parent->body_count + 1) * sizeof(ASTNode *));
    parent->body[parent->body_count++] = child;
}

/* ------------------------------------------------
   FORWARD DECLARATIONS
   ------------------------------------------------ */
static ASTNode *parse_statement(void);
static ASTNode *parse_expression(void);
static ASTNode *parse_primary(void);
static ASTNode *parse_block(void);

/* ------------------------------------------------
   PARSE PRIMARY EXPRESSION
   Handles literals and identifiers
   ------------------------------------------------ */
static ASTNode *parse_primary(void) {

    /* number literal */
    if (check(TOKEN_NUMBER)) {
        ASTNode *node = make_node(NODE_LITERAL);
        node->value = strdup(advance()->value);
        return node;
    }

    /* string literal */
    if (check(TOKEN_STRING)) {
        ASTNode *node = make_node(NODE_LITERAL);
        node->value = strdup(advance()->value);
        return node;
    }

    /* boolean W = true */
    if (check(TOKEN_W)) {
        ASTNode *node = make_node(NODE_LITERAL);
        node->value = strdup("1");
        advance();
        return node;
    }

    /* boolean L = false */
    if (check(TOKEN_L)) {
        ASTNode *node = make_node(NODE_LITERAL);
        node->value = strdup("0");
        advance();
        return node;
    }

    /* identifier */
    if (check(TOKEN_IDENTIFIER)) {
        ASTNode *node = make_node(NODE_IDENTIFIER);
        node->value = strdup(advance()->value);
        return node;
    }

    fprintf(stderr, "parse error on line %d: unexpected token '%s'\n",
            peek()->line, peek()->value);
    exit(1);
}

/* ------------------------------------------------
   PARSE EXPRESSION
   Handles binary operations:
   comparison: gyatt bugging no cap cap W L
   arithmetic: + - * /
   ------------------------------------------------ */
static ASTNode *parse_expression(void) {
    ASTNode *left = parse_primary();

    /* binary operators */
    while (
        check(TOKEN_GYATT)   || check(TOKEN_BUGGING) ||
        check(TOKEN_NO_CAP)  || check(TOKEN_CAP)     ||
        check(TOKEN_W)       || check(TOKEN_L)       ||
        check(TOKEN_GREATER) || check(TOKEN_LESS)    ||
        check(TOKEN_PLUS)    || check(TOKEN_MINUS)   ||
        check(TOKEN_STAR)    || check(TOKEN_SLASH)
    ) {
        ASTNode *binop = make_node(NODE_BINOP);
        binop->op    = strdup(advance()->value);
        binop->left  = left;
        binop->right = parse_primary();
        left = binop;
    }

    return left;
}

/* ------------------------------------------------
   PARSE BLOCK  { statements }
   ------------------------------------------------ */
static ASTNode *parse_block(void) {
    ASTNode *block = make_node(NODE_BLOCK);
    expect(TOKEN_LBRACE, "{");

    while (!check(TOKEN_RBRACE) && !check(TOKEN_EOF)) {
        ASTNode *stmt = parse_statement();
        if (stmt) add_child(block, stmt);
    }

    expect(TOKEN_RBRACE, "}");
    return block;
}

/* ------------------------------------------------
   PARSE VARIABLE DECLARATION
   gooner jit x = 0;
   baddie jit name = "";
   ------------------------------------------------ */
static ASTNode *parse_var_decl(void) {
    ASTNode *node = make_node(NODE_VAR_DECL);

    /* data type */
    node->data_type = strdup(advance()->value);

    /* jit keyword */
    expect(TOKEN_JIT, "jit");

    /* variable name */
    node->value = strdup(expect(TOKEN_IDENTIFIER, "identifier")->value);

    /* = value */
    expect(TOKEN_EQUALS, "=");
    node->right = parse_expression();

    expect(TOKEN_SEMICOLON, ";");
    return node;
}

/* ------------------------------------------------
   PARSE PRINT
   syabu "hello";
   syabu x;
   ------------------------------------------------ */
static ASTNode *parse_print(void) {
    ASTNode *node = make_node(NODE_PRINT);
    advance(); /* consume syabu */
    node->right = parse_expression();
    expect(TOKEN_SEMICOLON, ";");
    return node;
}

/* ------------------------------------------------
   PARSE INPUT
   gumit name;
   ------------------------------------------------ */
static ASTNode *parse_input(void) {
    ASTNode *node = make_node(NODE_INPUT);
    advance(); /* consume gumit */
    node->value = strdup(expect(TOKEN_IDENTIFIER, "identifier")->value);
    expect(TOKEN_SEMICOLON, ";");
    return node;
}

/* ------------------------------------------------
   PARSE RETURN
   cooked 0;
   ------------------------------------------------ */
static ASTNode *parse_return(void) {
    ASTNode *node = make_node(NODE_RETURN);
    advance(); /* consume cooked */
    node->right = parse_expression();
    expect(TOKEN_SEMICOLON, ";");
    return node;
}

/* ------------------------------------------------
   PARSE INCREMENT
   fap x;
   ------------------------------------------------ */
static ASTNode *parse_increment(void) {
    ASTNode *node = make_node(NODE_INCREMENT);
    advance(); /* consume fap */
    node->value = strdup(expect(TOKEN_IDENTIFIER, "identifier")->value);
    expect(TOKEN_SEMICOLON, ";");
    return node;
}

/* ------------------------------------------------
   PARSE IF / ELIF / ELSE
   yn condition { }
   fynshyt condition { }
   opps { }
   ------------------------------------------------ */
static ASTNode *parse_if(void) {
    ASTNode *node = make_node(NODE_IF);
    advance(); /* consume yn */

    node->condition = parse_expression();
    node->right     = parse_block();

    /* check for fynshyt or opps */
    if (check(TOKEN_FYNSHYT)) {
        ASTNode *elif = make_node(NODE_ELIF);
        advance(); /* consume fynshyt */
        elif->condition   = parse_expression();
        elif->right       = parse_block();
        node->next_branch = elif;

        /* check for opps after fynshyt */
        if (check(TOKEN_OPPS)) {
            ASTNode *els = make_node(NODE_ELSE);
            advance(); /* consume opps */
            els->right         = parse_block();
            elif->next_branch  = els;
        }
    } else if (check(TOKEN_OPPS)) {
        ASTNode *els = make_node(NODE_ELSE);
        advance(); /* consume opps */
        els->right        = parse_block();
        node->next_branch = els;
    }

    return node;
}

/* ------------------------------------------------
   PARSE WHILE LOOP
   risky shoot condition { }
   ------------------------------------------------ */
static ASTNode *parse_while(void) {
    ASTNode *node = make_node(NODE_WHILE);
    advance(); /* consume risky shoot */

    node->condition = parse_expression();
    node->right     = parse_block();
    return node;
}

/* ------------------------------------------------
   PARSE FOR LOOP
   slide on em (gooner jit i = 0; i L 5; fap i) { }
   ------------------------------------------------ */
static ASTNode *parse_for(void) {
    ASTNode *node = make_node(NODE_FOR);
    advance(); /* consume slide on em */

    expect(TOKEN_LPAREN, "(");

    /* init — gooner jit i = 0; */
    if (check(TOKEN_GOONER) || check(TOKEN_SLIME) ||
        check(TOKEN_BADDIE) || check(TOKEN_GOON)) {
        node->init = parse_var_decl();
    }

    /* condition — i L 5; */
    node->condition = parse_expression();
    expect(TOKEN_SEMICOLON, ";");

    /* step — fap i */
    if (check(TOKEN_FAP)) {
        ASTNode *step = make_node(NODE_INCREMENT);
        advance(); /* consume fap */
        step->value = strdup(expect(TOKEN_IDENTIFIER, "identifier")->value);
        node->step  = step;
    }

    expect(TOKEN_RPAREN, ")");
    node->right = parse_block();
    return node;
}

/* ------------------------------------------------
   PARSE DO-WHILE
   say less { } risky shoot condition;
   ------------------------------------------------ */
static ASTNode *parse_dowhile(void) {
    ASTNode *node = make_node(NODE_DOWHILE);
    advance(); /* consume say less */

    node->right = parse_block();

    expect(TOKEN_RISKY_SHOOT, "risky shoot");
    node->condition = parse_expression();
    expect(TOKEN_SEMICOLON, ";");
    return node;
}

/* ------------------------------------------------
   PARSE STATEMENT
   Dispatches to the right parse function
   based on the current token
   ------------------------------------------------ */
static ASTNode *parse_statement(void) {

    /* variable declarations */
    if (check(TOKEN_GOONER) || check(TOKEN_BADDIE) ||
        check(TOKEN_SLIME)  || check(TOKEN_GOON)   ||
        check(TOKEN_BUM)) {
        return parse_var_decl();
    }

    /* print */
    if (check(TOKEN_SYABU))       return parse_print();

    /* input */
    if (check(TOKEN_GUMIT))       return parse_input();

    /* return */
    if (check(TOKEN_COOKED))      return parse_return();

    /* increment */
    if (check(TOKEN_FAP))         return parse_increment();

    /* if */
    if (check(TOKEN_YN))          return parse_if();

    /* while */
    if (check(TOKEN_RISKY_SHOOT)) return parse_while();

    /* for */
    if (check(TOKEN_SLIDE_ON_EM)) return parse_for();

    /* do-while */
    if (check(TOKEN_SAY_LESS))    return parse_dowhile();

    /* skip unknown tokens with a warning */
    fprintf(stderr, "warning: skipping unexpected token '%s' on line %d\n",
            peek()->value, peek()->line);
    advance();
    return NULL;
}

/* ------------------------------------------------
   PRINT AST — for debugging
   ------------------------------------------------ */
void print_ast(ASTNode *node, int depth) {
    if (!node) return;

    for (int i = 0; i < depth; i++) printf("  ");

    switch (node->type) {
        case NODE_PROGRAM:    printf("[PROGRAM]\n");                          break;
        case NODE_VAR_DECL:   printf("[VAR_DECL] %s %s\n",
                                      node->data_type, node->value);         break;
        case NODE_PRINT:      printf("[PRINT]\n");                            break;
        case NODE_INPUT:      printf("[INPUT] %s\n", node->value);            break;
        case NODE_RETURN:     printf("[RETURN]\n");                           break;
        case NODE_INCREMENT:  printf("[INCREMENT] %s\n", node->value);        break;
        case NODE_IF:         printf("[IF]\n");                               break;
        case NODE_ELIF:       printf("[ELIF]\n");                             break;
        case NODE_ELSE:       printf("[ELSE]\n");                             break;
        case NODE_WHILE:      printf("[WHILE]\n");                            break;
        case NODE_FOR:        printf("[FOR]\n");                              break;
        case NODE_DOWHILE:    printf("[DOWHILE]\n");                          break;
        case NODE_BLOCK:      printf("[BLOCK]\n");                            break;
        case NODE_BINOP:      printf("[BINOP] %s\n", node->op);               break;
        case NODE_LITERAL:    printf("[LITERAL] %s\n", node->value);          break;
        case NODE_IDENTIFIER: printf("[IDENTIFIER] %s\n", node->value);       break;
        default:              printf("[UNKNOWN]\n");                          break;
    }

    /* print children */
    if (node->condition)    print_ast(node->condition,    depth + 1);
    if (node->init)         print_ast(node->init,         depth + 1);
    if (node->left)         print_ast(node->left,         depth + 1);
    if (node->right)        print_ast(node->right,        depth + 1);
    if (node->step)         print_ast(node->step,         depth + 1);
    if (node->next_branch)  print_ast(node->next_branch,  depth + 1);

    for (int i = 0; i < node->body_count; i++) {
        print_ast(node->body[i], depth + 1);
    }
}

/* ------------------------------------------------
   FREE AST — clean up all memory
   ------------------------------------------------ */
void free_ast(ASTNode *node) {
    if (!node) return;

    if (node->value)     free(node->value);
    if (node->op)        free(node->op);
    if (node->data_type) free(node->data_type);

    free_ast(node->condition);
    free_ast(node->init);
    free_ast(node->left);
    free_ast(node->right);
    free_ast(node->step);
    free_ast(node->next_branch);

    for (int i = 0; i < node->body_count; i++) {
        free_ast(node->body[i]);
    }
    if (node->body) free(node->body);

    free(node);
}

/* ------------------------------------------------
   MAIN PARSE FUNCTION
   Entry point — parses entire token stream
   Returns root NODE_PROGRAM node
   ------------------------------------------------ */
ASTNode *parse(Token *tok, int count) {
    tokens      = tok;
    token_count = count;
    current     = 0;

    ASTNode *program = make_node(NODE_PROGRAM);

   /* skip cook and lit at the top — handled later */
    while (check(TOKEN_COOK) || check(TOKEN_LIT)) {
        advance(); /* consume cook or lit */
        /* consume all tokens until next cook, lit, put the fires, or EOF */
        while (!check(TOKEN_COOK) && !check(TOKEN_LIT) &&
               !check(TOKEN_PUT_THE_FIRES) && !check(TOKEN_EOF)) {
            advance();
        }
    }

    /* expect put the fires in the bag */
    if (check(TOKEN_PUT_THE_FIRES)) {
        advance(); /* consume put the fires in the bag */
        ASTNode *block = parse_block();
        add_child(program, block);
    } else {
        fprintf(stderr, "parse error: expected 'put the fires in the bag'\n");
        exit(1);
    }

    return program;
}