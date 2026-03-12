# DAY 2 LOG — BrainRot Gen Z Compiler
**Author:** Joseph Peter Petlyn Bailey  
**Date:** March 2026  
**Goal:** Build the Lexer — turn source code into tokens  

---

## Summary

Day 2 was the first real coding day of the compiler project. By end of day the lexer was fully working — reading `hello.brainrot` from disk, scanning every character, and producing 136 clean tokens with zero errors and zero warnings.

---

## Part 1 — Environment Setup (Morning)

### Problem: Git Not Working In PowerShell
Git was installed on the machine but PowerShell could not find it. The fix was adding Git to the system PATH permanently.

```powershell
[System.Environment]::SetEnvironmentVariable("Path", [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";C:\Program Files\Git\bin", "Machine")
```

### Problem: No Terminal Consistency — Chose Git Bash
Decided to use Git Bash as the primary terminal inside VS Code. Added it to VS Code settings:

File: `.vscode/settings.json`
```json
"terminal.integrated.profiles.windows": {
    "Git Bash": {
        "path": "C:\\Program Files\\Git\\bin\\bash.exe"
    }
},
"terminal.integrated.defaultProfile.windows": "Git Bash"
```

### Created .vscode Configuration Files
Three files created inside `.vscode/` folder:

**c_cpp_properties.json** — tells VS Code where GCC and headers are
```json
{
    "configurations": [{
        "name": "Win32",
        "includePath": [
            "${workspaceFolder}/**",
            "D:/disk c/mingw/mingw64/x86_64-w64-mingw32/include/**",
            "D:/disk c/mingw/mingw64/lib/gcc/x86_64-w64-mingw32/7.3.0/include/**"
        ],
        "compilerPath": "D:/disk c/mingw/mingw64/bin/gcc.exe",
        "cStandard": "c11",
        "intelliSenseMode": "windows-gcc-x64"
    }],
    "version": 4
}
```

**tasks.json** — builds the compiler with one command
```json
{
    "version": "2.0.0",
    "tasks": [{
        "type": "cppbuild",
        "label": "build brainrot compiler",
        "command": "D:/disk c/mingw/mingw64/bin/gcc.exe",
        "args": ["-fdiagnostics-color=always", "-g", "-Wall", "-Wextra", "-pedantic",
                 "src/main.c", "src/lexer.c", "src/parser.c", "src/evaluator.c",
                 "-o", "${workspaceFolder}/brainrot.exe"],
        "group": { "kind": "build", "isDefault": true }
    }]
}
```

**launch.json** — runs and debugs the compiler with F5
```json
{
    "version": "0.2.0",
    "configurations": [{
        "name": "Run BrainRot Compiler",
        "type": "cppdbg",
        "request": "launch",
        "program": "${workspaceFolder}/brainrot",
        "args": ["tests/hello.brainrot"],
        "MIMode": "gdb",
        "miDebuggerPath": "D:/msys64/ucrt64/bin/gdb.exe",
        "preLaunchTask": "build brainrot compiler"
    }]
}
```

### Fixed Red Squiggles On stdio.h
IntelliSense could not find system headers. Found the real path to `stdio.h`:

```powershell
Get-ChildItem -Path "D:\disk c\mingw\mingw64" -Filter "stdio.h" -Recurse -ErrorAction SilentlyContinue | Select-Object -ExpandProperty FullName
```

Result: `D:\disk c\mingw\mingw64\x86_64-w64-mingw32\include\stdio.h`

Updated `c_cpp_properties.json` with that exact path. Red squiggles disappeared.

### Fixed make Not Found In Git Bash
MSYS2 was installed at `D:/newmsysforc` (not the default `C:/msys64`). 

Installed make in MSYS2 UCRT64:
```bash
pacman -S make
```

Found the path with `which make` → `/usr/bin/make`

Added to Git Bash permanently:
```bash
echo 'export PATH=$PATH:/d/newmsysforc/usr/bin:/d/newmsysforc/ucrt64/bin' >> ~/.bashrc
source ~/.bashrc
```

### Fixed PowerShell Permanently
Added GCC, make, and git to PowerShell system PATH via Administrator PowerShell:

```powershell
[System.Environment]::SetEnvironmentVariable("Path", [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";D:\disk c\mingw\mingw64\bin", "Machine")
[System.Environment]::SetEnvironmentVariable("Path", [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";D:\newmsysforc\usr\bin", "Machine")
[System.Environment]::SetEnvironmentVariable("Path", [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";C:\Program Files\Git\bin", "Machine")
```

Final test — all three working:
```
gcc  7.3.0   ✅
make 4.4.1   ✅
git  2.53.0  ✅
```

---

## Part 2 — Writing src/lexer.h

The lexer header defines the token types and token struct. This is the foundation the entire compiler is built on.

### What Was Written
- Header guards (`#ifndef LEXER_H` / `#define LEXER_H` / `#endif`)
- `TokenType` enum — 46 token types covering every BrainRot keyword
- `Token` struct — type, value, and line number
- Three function declarations: `tokenize`, `print_tokens`, `free_tokens`

### Full TokenType Enum
```c
typedef enum {
    TOKEN_NUMBER, TOKEN_STRING, TOKEN_IDENTIFIER,
    TOKEN_GOONER, TOKEN_BADDIE, TOKEN_SLIME, TOKEN_GOON, TOKEN_BUM,
    TOKEN_JIT,
    TOKEN_W, TOKEN_L,
    TOKEN_COOK, TOKEN_LIT, TOKEN_COOKED, TOKEN_SLIDE,
    TOKEN_SYABU, TOKEN_GUMIT,
    TOKEN_YN, TOKEN_FYNSHYT, TOKEN_OPPS,
    TOKEN_RISKY_SHOOT, TOKEN_SAY_LESS, TOKEN_SLIDE_ON_EM,
    TOKEN_NO_CAP, TOKEN_CAP, TOKEN_GYATT, TOKEN_BUGGING,
    TOKEN_FAP, TOKEN_DOUBLE_IT, TOKEN_BENJIS, TOKEN_GWAK_3K,
    TOKEN_DIABOLICAL, TOKEN_PUT_THE_FIRES,
    TOKEN_PLUS, TOKEN_MINUS, TOKEN_STAR, TOKEN_SLASH,
    TOKEN_EQUALS, TOKEN_GREATER, TOKEN_LESS,
    TOKEN_LBRACE, TOKEN_RBRACE, TOKEN_LPAREN, TOKEN_RPAREN,
    TOKEN_SEMICOLON, TOKEN_EOF
} TokenType;
```

### Token Struct
```c
typedef struct {
    TokenType type;
    char     *value;
    int       line;
} Token;
```

---

## Part 3 — Writing src/lexer.c

The actual scanning engine. Reads source code character by character and produces tokens.

### Functions Written

**`make_token`** — helper that creates a single token with `strdup` for safe memory
```c
static Token make_token(TokenType type, const char *value, int line)
```

**`check_keyword`** — checks if a single word is a BrainRot keyword using `strcmp`
```c
static TokenType check_keyword(const char *word)
```

**`tokenize`** — main scanning loop:
- Skips whitespace (`space`, `\t`, `\r`)
- Tracks line numbers on `\n`
- Scans numbers including floats (`1.5`)
- Scans strings between `"` quotes
- Scans words and checks for multi-word keywords
- Scans single character symbols
- Dynamically grows token array with `realloc`
- Appends `TOKEN_EOF` at end

**Multi-word keywords handled:**
- `no cap` → `TOKEN_NO_CAP`
- `risky shoot` → `TOKEN_RISKY_SHOOT`
- `say less` → `TOKEN_SAY_LESS`
- `slide on em` → `TOKEN_SLIDE_ON_EM`
- `put the fires in the bag` → `TOKEN_PUT_THE_FIRES`
- `double it and give it to the next` → `TOKEN_DOUBLE_IT`
- `gwak 3k` → `TOKEN_GWAK_3K`
- `diabolical` → comment, skips rest of line

**`print_tokens`** — prints all tokens to terminal for debugging

**`free_tokens`** — frees all malloc'd memory cleanly

### Bug Fixed — Float Numbers
First run produced an error on `1.5`:
```
error: unknown character '.' on line 18
```

Fixed by extending the number scanner to handle decimal points:
```c
if (i < len && source[i] == '.') {
    i++;
    while (i < len && isdigit(source[i])) i++;
}
```

---

## Part 4 — Writing src/test_lexer.c

Created an isolated test file to test the lexer without `main.c`.

Test source used:
```
gooner jit x = 10;
syabu x;
yn x gyatt 5 {
    syabu "big number no cap";
}
```

First successful test output:
```
line 1 | type:  3 | value: gooner
line 1 | type:  8 | value: jit
line 1 | type:  2 | value: x
line 1 | type: 37 | value: =
line 1 | type:  0 | value: 10
line 1 | type: 44 | value: ;
...
lexer test passed green
```

---

## Part 5 — Writing src/main.c

The compiler entry point. Reads a `.brainrot` file from disk and passes it to the lexer.

### What It Does
- Checks for correct number of arguments
- Validates `.brainrot` file extension
- Reads entire file into memory with `fseek/ftell/rewind/fread`
- Calls `tokenize` on the source
- Calls `print_tokens` to display output
- Frees all memory before exit

### Key Code Pattern — Read File
```c
fseek(file, 0, SEEK_END);
long size = ftell(file);
rewind(file);
char *buffer = malloc(size + 1);
fread(buffer, 1, size, file);
buffer[size] = '\0';
```

---

## Part 6 — Updated Makefile

Added `test` target for isolated lexer testing:

```makefile
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
```

---

## Part 7 — Fixed hello.brainrot

The test file had Windows PATH garbage written into it accidentally from a PowerShell incident. Deleted and recreated cleanly using a heredoc in Git Bash:

```bash
cat > "tests/hello.brainrot" << 'EOF'
...
EOF
```

---

## Final Test — Full hello.brainrot Run

```
./brainrot tests/hello.brainrot
```

**Result:**
```
BrainRot Gen Z Compiler v1.0
compiling: tests/hello.brainrot

=== BRAINROT LEXER OUTPUT ===
line 4  | cook, stdio, lit, MAX, 100 ...
line 9  | put the fires in the bag, { ...
line 11 | gooner, jit, score, =, 0, ; ...
...
line 50 | }
line 51 | EOF
=== END OF TOKENS ===

lexer phase complete — 136 tokens found
green
```

**Zero errors. Zero warnings. 136 tokens.**

---

## Tokens Verified Working

| Token | Type Number | Status |
|-------|-------------|--------|
| `cook` | 11 | ✅ |
| `lit` | 12 | ✅ |
| `put the fires in the bag` | 32 | ✅ |
| `gooner` | 3 | ✅ |
| `baddie` | 4 | ✅ |
| `slime` | 5 | ✅ |
| `goon` | 6 | ✅ |
| `jit` | 8 | ✅ |
| `W` | 9 | ✅ |
| `L` | 10 | ✅ |
| `syabu` | 15 | ✅ |
| `gumit` | 16 | ✅ |
| `yn` | 17 | ✅ |
| `fynshyt` | 18 | ✅ |
| `opps` | 19 | ✅ |
| `risky shoot` | 20 | ✅ |
| `say less` | 21 | ✅ |
| `slide on em` | 22 | ✅ |
| `fap` | 27 | ✅ |
| `gyatt` | 25 | ✅ |
| `cooked` | 13 | ✅ |
| floats like `1.5` | 0 | ✅ |
| strings | 1 | ✅ |
| identifiers | 2 | ✅ |
| numbers | 0 | ✅ |
| `{` `}` `(` `)` `;` `=` | 40-44 | ✅ |

---

## Problems Encountered And Fixed

| Problem | Cause | Fix |
|---------|-------|-----|
| Red squiggles on stdio.h | Wrong include path in c_cpp_properties.json | Found real stdio.h path with PowerShell, updated config |
| make not found in Git Bash | MSYS2 on D: drive not C: drive | Found path with find command, added to .bashrc |
| gcc not found in PowerShell | PATH not set | Added D:\disk c\mingw\mingw64\bin to system PATH |
| Float 1.5 caused error | Lexer only handled integers | Added decimal point handling in number scanner |
| hello.brainrot had garbage | PowerShell accidentally wrote PATH into file | Deleted and recreated file with heredoc |
| Stuck in heredoc | Typed clear inside the cat command | Typed EOF to escape |
| parser.c and evaluator.c warnings | Empty translation units | Added placeholder line to each file |

---

## Files Created Or Modified Today

| File | Action | Purpose |
|------|--------|---------|
| `src/lexer.h` | Created | TokenType enum, Token struct, function declarations |
| `src/lexer.c` | Created | Full scanning engine |
| `src/test_lexer.c` | Created | Isolated lexer test |
| `src/main.c` | Created | Compiler entry point, file reader |
| `src/parser.c` | Modified | Added placeholder to fix warning |
| `src/evaluator.c` | Modified | Added placeholder to fix warning |
| `tests/hello.brainrot` | Recreated | Clean test program |
| `Makefile` | Updated | Added test target |
| `.vscode/c_cpp_properties.json` | Created | Fixed IntelliSense |
| `.vscode/tasks.json` | Created | Build task |
| `.vscode/launch.json` | Created | Debug configuration |

---

## Git Commit

```
git commit -m "lexer: phase complete — 136 tokens, zero errors on hello.brainrot"
```

---

## What Day 2 Proved

The lexer is the hardest phase to debug because there is no higher level structure yet — just raw characters. Getting 136 tokens with zero errors on a real BrainRot program means the foundation is solid. Everything built in Days 3-11 sits on top of what was built today.

---

## Reading For Tonight

Crafting Interpreters — Chapter 5: Representing Code  
Topic: Abstract Syntax Trees (AST)  
This is what Day 3 builds.

---

## Day 3 Preview

Build `src/parser.h` and `src/parser.c`. The parser takes the 136 tokens and builds an Abstract Syntax Tree. Every statement in the BrainRot program becomes a tree node. The tree is what the evaluator will later walk and execute.
