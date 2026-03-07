# BrainRot Gen Z Compiler
# Author: Joseph Peter Petlyn Bailey
# Date: February 28 2026

CC     = gcc
CFLAGS = -Wall -Wpedantic -std=c11 -g

SRC    = src/main.c src/lexer.c src/parser.c src/evaluator.c
TEST   = src/test_lexer.c src/lexer.c

TARGET      = brainrot
TEST_TARGET = test_lexer

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

test: $(TEST_TARGET)

$(TEST_TARGET): $(TEST)
	$(CC) $(CFLAGS) -o $(TEST_TARGET) $(TEST)

clean:
	rm -f $(TARGET) $(TEST_TARGET)