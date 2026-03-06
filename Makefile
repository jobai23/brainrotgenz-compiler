# BrainRot Gen Z Compiler
# Author: Joseph Peter Petlyn Bailey
# Date: February 28 2026

# compiler
CC = gcc

# flags — show all warnings, C99 standard, include debug symbols
CFLAGS = -Wall -Wextra -std=c99 -g

# all source files
SRC = src/main.c src/lexer.c src/parser.c src/evaluator.c

# output binary name
TARGET = brainrot

# default rule — builds the compiler
all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

# clean — removes the compiled binary
clean:
	rm -f $(TARGET)