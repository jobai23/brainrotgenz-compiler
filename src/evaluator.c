/* ================================================
   BrainRot Gen Z Compiler
   Author: Joseph Peter Petlyn Bailey
   File: evaluator.c
   Purpose: Tree-walk evaluator
            Executes BrainRot programs
   ================================================ */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "evaluator.h"

static Value make_int(int i) {
    Value v; v.type = VAL_INT; v.as.i = i; return v;
}
static Value make_float(double f) {
    Value v; v.type = VAL_FLOAT; v.as.f = f; return v;
}
static Value make_string(const char *s) {
    Value v; v.type = VAL_STRING; v.as.s = strdup(s); return v;
}
static Value make_bool(int b) {
    Value v; v.type = VAL_BOOL; v.as.i = b; return v;
}
static Value make_null(void) {
    Value v; v.type = VAL_NULL; v.as.i = 0; return v;
}

Environment *env_create(void) {
    Environment *env = malloc(sizeof(Environment));
    env->entries  = NULL;
    env->count    = 0;
    env->capacity = 0;
    return env;
}

void env_set(Environment *env, const char *name, Value value) {
    for (int i = 0; i < env->count; i++) {
        if (strcmp(env->entries[i].name, name) == 0) {
            if (env->entries[i].value.type == VAL_STRING)
                free(env->entries[i].value.as.s);
            env->entries[i].value = value;
            return;
        }
    }
    if (env->count >= env->capacity) {
        env->capacity = env->capacity == 0 ? 8 : env->capacity * 2;
        env->entries  = realloc(env->entries,
                        env->capacity * sizeof(EnvEntry));
    }
    env->entries[env->count].name  = strdup(name);
    env->entries[env->count].value = value;
    env->count++;
}

Value env_get(Environment *env, const char *name) {
    for (int i = 0; i < env->count; i++) {
        if (strcmp(env->entries[i].name, name) == 0)
            return env->entries[i].value;
    }
    fprintf(stderr, "runtime error: undefined variable '%s'\n", name);
    exit(1);
}

void env_free(Environment *env) {
    for (int i = 0; i < env->count; i++) {
        free(env->entries[i].name);
        if (env->entries[i].value.type == VAL_STRING)
            free(env->entries[i].value.as.s);
    }
    free(env->entries);
    free(env);
}

static void print_value(Value v) {
    switch (v.type) {
        case VAL_INT:    printf("%d", v.as.i);              break;
        case VAL_FLOAT:  printf("%g", v.as.f);              break;
        case VAL_STRING: printf("%s", v.as.s);              break;
        case VAL_BOOL:   printf("%s", v.as.i ? "W" : "L"); break;
        case VAL_NULL:   printf("bum");                     break;
    }
    printf("\n");
}

static int is_truthy(Value v) {
    switch (v.type) {
        case VAL_INT:    return v.as.i != 0;
        case VAL_FLOAT:  return v.as.f != 0.0;
        case VAL_STRING: return v.as.s && v.as.s[0] != '\0';
        case VAL_BOOL:   return v.as.i;
        case VAL_NULL:   return 0;
    }
    return 0;
}

static Value eval_binop(const char *op, Value left, Value right) {
    double l = 0, r = 0;
    int is_float = 0;

    if (left.type == VAL_FLOAT || right.type == VAL_FLOAT) {
        is_float = 1;
        l = left.type  == VAL_FLOAT ? left.as.f  : (double)left.as.i;
        r = right.type == VAL_FLOAT ? right.as.f : (double)right.as.i;
    } else if (left.type == VAL_INT || left.type == VAL_BOOL) {
        l = left.as.i;
        r = right.as.i;
    }

    if (strcmp(op, "+") == 0)
        return is_float ? make_float(l + r) : make_int((int)(l + r));
    if (strcmp(op, "-") == 0)
        return is_float ? make_float(l - r) : make_int((int)(l - r));
    if (strcmp(op, "*") == 0)
        return is_float ? make_float(l * r) : make_int((int)(l * r));
    if (strcmp(op, "/") == 0) {
        if (r == 0) { fprintf(stderr, "runtime error: division by zero\n"); exit(1); }
        return is_float ? make_float(l / r) : make_int((int)(l / r));
    }
    if (strcmp(op, "gyatt")  == 0) return make_bool(l >= r);
    if (strcmp(op, "bugging")== 0) return make_bool(l <= r);
    if (strcmp(op, "no cap") == 0) return make_bool(l == r);
    if (strcmp(op, "cap")    == 0) return make_bool(l != r);
    if (strcmp(op, "W")      == 0) return make_bool(l > r);
    if (strcmp(op, "L")      == 0) return make_bool(l < r);
    if (strcmp(op, ">")      == 0) return make_bool(l > r);
    if (strcmp(op, "<")      == 0) return make_bool(l < r);

    fprintf(stderr, "runtime error: unknown operator '%s'\n", op);
    exit(1);
}

Value evaluate(ASTNode *node, Environment *env) {
    if (!node) return make_null();

    switch (node->type) {

       case NODE_LITERAL: {
    /* check if it starts with a digit before treating as number */
    char first = node->value[0];
    if (first >= '0' && first <= '9') {
        if (strchr(node->value, '.'))
            return make_float(atof(node->value));
        return make_int((int)strtol(node->value, NULL, 10));
    }
    return make_string(node->value);
}

        case NODE_IDENTIFIER:
            return env_get(env, node->value);

        case NODE_BINOP: {
            Value left  = evaluate(node->left,  env);
            Value right = evaluate(node->right, env);
            return eval_binop(node->op, left, right);
        }

        case NODE_VAR_DECL: {
            Value val = evaluate(node->right, env);
            env_set(env, node->value, val);
            return val;
        }

        case NODE_PRINT: {
            Value val = evaluate(node->right, env);
            print_value(val);
            if (val.type == VAL_STRING) free(val.as.s);
            return make_null();
        }

        case NODE_INPUT: {
            char buffer[256];
            if (fgets(buffer, sizeof(buffer), stdin)) {
                buffer[strcspn(buffer, "\n")] = '\0';
                char *end;
                long num = strtol(buffer, &end, 10);
                if (*end == '\0')
                    env_set(env, node->value, make_int((int)num));
                else
                    env_set(env, node->value, make_string(buffer));
            }
            return make_null();
        }

        case NODE_RETURN:
            return evaluate(node->right, env);

        case NODE_INCREMENT: {
            Value val = env_get(env, node->value);
            if (val.type == VAL_INT)   val.as.i++;
            if (val.type == VAL_FLOAT) val.as.f++;
            env_set(env, node->value, val);
            return val;
        }

        case NODE_IF: {
            Value cond = evaluate(node->condition, env);
            if (is_truthy(cond))
                evaluate(node->right, env);
            else if (node->next_branch)
                evaluate(node->next_branch, env);
            return make_null();
        }

        case NODE_ELIF: {
            Value cond = evaluate(node->condition, env);
            if (is_truthy(cond))
                evaluate(node->right, env);
            else if (node->next_branch)
                evaluate(node->next_branch, env);
            return make_null();
        }

        case NODE_ELSE:
            evaluate(node->right, env);
            return make_null();

        case NODE_WHILE: {
            while (is_truthy(evaluate(node->condition, env)))
                evaluate(node->right, env);
            return make_null();
        }

        case NODE_FOR: {
            if (node->init) evaluate(node->init, env);
            while (is_truthy(evaluate(node->condition, env))) {
                evaluate(node->right, env);
                if (node->step) evaluate(node->step, env);
            }
            return make_null();
        }

        case NODE_DOWHILE: {
            do {
                evaluate(node->right, env);
            } while (is_truthy(evaluate(node->condition, env)));
            return make_null();
        }

        case NODE_BLOCK: {
            Value last = make_null();
            for (int i = 0; i < node->body_count; i++)
                last = evaluate(node->body[i], env);
            return last;
        }

        case NODE_PROGRAM: {
            for (int i = 0; i < node->body_count; i++)
                evaluate(node->body[i], env);
            return make_null();
        }

        default:
            fprintf(stderr, "runtime error: unknown node type %d\n", node->type);
            exit(1);
    }
}

void run(ASTNode *ast) {
    Environment *env = env_create();
    evaluate(ast, env);
    env_free(env);
}