# BrainRot Gen Z Compiler — Day 1 Log

**Author:** Joseph Peter Petlyn Bailey  
**Date:** February 28 2026  
**Project:** BrainRot Gen Z Compiler  
**Status:** Day 1 Complete  

---

## What Was Accomplished Today

Day 1 was entirely planning and setup. Zero C code written — this is correct and professional. Every industry compiler project starts with documentation before a single line of code.

---

## 1. Language Designed — BrainRot Gen Z

Designed a complete programming language using Gen Z internet slang as keywords. Every keyword maps logically to its slang meaning.

Full specification saved in `LANGUAGE.md`.

### Complete Keyword Map

| Keyword | Category | Classic Equivalent |
|---------|----------|-------------------|
| `cook` | library include OR function definition | `#include` / `function` |
| `lit` | macro / constant | `#define` |
| `gooner` | data type — integer | `int` |
| `baddie` | data type — string | `char*` |
| `slime` | data type — float | `float` |
| `goon` | data type — boolean | `bool` |
| `bum` | data type — null / void | `void` |
| `jit` | variable declaration | `let` / `var` |
| `W` | greater than OR true | `>` / `true` |
| `L` | less than OR false | `<` / `false` |
| `no cap` | equal to | `==` |
| `cap` | not equal to | `!=` |
| `gyatt` | greater or equal | `>=` |
| `bugging` | less or equal | `<=` |
| `fap` | increment | `++` |
| `double it and give it to the next` | multiply by 2 | `*= 2` |
| `benjis` | value of 100 | `100` |
| `gwak 3k` | multiply by 1000 | `*= 1000` |
| `yn` | if | `if` |
| `fynshyt` | else if | `else if` |
| `opps` | else | `else` |
| `risky shoot` | while loop | `while` |
| `say less` | do-while loop | `do { } while` |
| `slide on em` | for loop | `for` |
| `cooked` | return | `return` |
| `slide` | function call | `functionName()` |
| `gumit` | input | `scanf()` |
| `syabu` | output / print | `printf()` |
| `diabolical` | comment | `//` |
| `put the fires in the bag` | program entry point | `int main()` |

---

## 2. Project Setup

### Tools Used
- **OS:** Windows 11
- **Editor:** VS Code
- **Terminal:** PowerShell and MSYS2 UCRT64
- **Compiler:** GCC via MSYS2 UCRT64
- **Version Control:** Git

### Tools Installed in MSYS2
```bash
pacman -S git
```

### Git Configuration
```bash
git config --global user.name "Joseph Peter Petlyn Bailey"
git config --global user.email "man394369@gmail.com"
```

---

## 3. Project Folder Structure Created

**Location:** `D:\brainrotgenz compiler`

```
brainrotgenz compiler/
├── src/
│   ├── main.c
│   ├── lexer.c
│   ├── lexer.h
│   ├── parser.c
│   ├── parser.h
│   ├── evaluator.c
│   └── evaluator.h
├── tests/
│   └── hello.brainrot
├── docs/
│   └── pseudocode.md
├── Makefile
├── README.md
├── DESIGN.md
└── LANGUAGE.md
```

### PowerShell Commands Used To Build Structure

```powershell
# navigate to project
cd "D:\brainrotgenz compiler"

# create folders
New-Item -ItemType Directory -Name "docs"
New-Item -ItemType Directory -Name "src"
New-Item -ItemType Directory -Name "tests"

# create src files
New-Item "src\main.c"
New-Item "src\lexer.c"
New-Item "src\lexer.h"
New-Item "src\parser.c"
New-Item "src\parser.h"
New-Item "src\evaluator.c"
New-Item "src\evaluator.h"
```

---

## 4. Documentation Files Written

### README.md
Project overview, goals, build and run instructions, author, timeline.

### DESIGN.md
Full compiler design — all 3 phases explained with inputs, outputs, and examples. Includes token types, file structure, and 2-week development schedule.

### LANGUAGE.md
Complete BrainRot Gen Z language specification — every keyword, every data type, every operator, every control flow construct, with syntax and examples.

### Makefile
Build automation. Compiles all C source files into a binary called `brainrot`.

```makefile
CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -g
SRC = src/main.c src/lexer.c src/parser.c src/evaluator.c
TARGET = brainrot

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)
```

### tests/hello.brainrot
Full BrainRot test program. This is the target — when the compiler can run this file correctly at end of Day 14, the project is complete.

### docs/pseudocode.md
Lexer algorithm written in plain English before any C code. Every token type documented.

---

## 5. Git Initialized

```bash
# in MSYS2 UCRT64
cd "/d/brainrotgenz compiler"
git init
git branch -M main
git add .
git commit -m "project: day 1 complete — all docs, language spec, test file"
```

---

## 6. Problems Encountered and How They Were Solved

### Problem 1 — Wrong Terminal
**Error:** `cd /c/BRAINROTGENZ COMPILER` failed in PowerShell  
**Cause:** Used MSYS2 path syntax in PowerShell  
**Fix:** In PowerShell use `"D:\brainrotgenz compiler"` format. In MSYS2 use `"/d/brainrotgenz compiler"` format.

### Problem 2 — Folder Permission Error
**Error:** `EPERM: operation not permitted` when saving files  
**Cause:** VS Code did not have write permissions to the folder  
**Fix:** Run VS Code as Administrator OR move project to a folder without restrictions

### Problem 3 — Git Not Found in PowerShell
**Error:** `git is not recognized`  
**Cause:** Git for Windows was not installed on the system PATH  
**Fix:** Use MSYS2 UCRT64 terminal where git is available via `pacman -S git`

### Problem 4 — Git Not Found in MSYS2
**Error:** `git: command not found`  
**Cause:** Git not installed in MSYS2  
**Fix:** `pacman -S git` — type Y to confirm installation

### Problem 5 — Files In Wrong Folders
**Error:** All docs ended up inside `brainrot/docs/` instead of project root  
**Cause:** Files were created inside a subfolder instead of the root  
**Fix:** Used PowerShell `Move-Item` commands to reorganize

```powershell
Move-Item "brainrot\docs\DESIGN.md" .
Move-Item "brainrot\docs\Makefile" .
Move-Item "brainrot\README.md" .
Remove-Item -Recurse -Force "brainrot"
```

### Problem 6 — LANGUAGE.md In Downloads
**Error:** LANGUAGE.md was not in the project folder  
**Cause:** File was downloaded but not moved to project  
**Fix:** Found it with search then moved it:

```powershell
Get-ChildItem -Path "C:\", "D:\" -Filter "LANGUAGE.md" -Recurse -ErrorAction SilentlyContinue
Move-Item "C:\Users\JOSE\Downloads\LANGUAGE.md" "D:\brainrotgenz compiler\LANGUAGE.md"
```

---

## 7. Compiler Pipeline — What Will Be Built

```
Source Code (.brainrot file)
        ↓
    LEXER (src/lexer.c)
    turns characters into tokens
        ↓
    PARSER (src/parser.c)
    turns tokens into AST
        ↓
    EVALUATOR (src/evaluator.c)
    walks AST and executes program
        ↓
    OUTPUT (terminal)
```

---

## 8. How To Run The Project (When Built)

```bash
make                                 # compile the compiler
./brainrot tests/hello.brainrot      # run a BrainRot program
make clean                           # remove compiled binary
```

---

## 9. Resources Being Used

| Resource | URL | When To Use |
|----------|-----|-------------|
| Crafting Interpreters | craftinginterpreters.com | Primary textbook — read daily |
| Writing a C Compiler | norasandler.com | Read Days 3-4 after lexer attempt |
| chibicc | github.com/rui314/chibicc | Read Week 2 only |

---

## 10. Tomorrow — Day 2

Read Crafting Interpreters Chapter 4 (Scanning) in the morning. Close it. Then open `src/lexer.h` and define the `TokenType` enum in C — every keyword in the reference table becomes one entry. Then open `src/lexer.c` and write the scanning loop.

By end of Day 2 the goal is to print every token from `hello.brainrot` to the terminal.

---

*BrainRot Gen Z Compiler — Day 1 Log — February 28 2026*


🛠️ Problem Diagnosis
Path Mismatch: The initial settings.json was looking for Git on the C: drive (C:\Program Files (x86)\Git), but your ls command proved your Git installation is actually located at D:\Git.

Syntax Error: The path in settings.json was defined as an Array [] instead of a String "". VS Code expects a single string for the executable path.

Validation Error: Because the profile failed to load due to the syntax/path errors, VS Code threw a "Value is not accepted" error when you tried to set it as the defaultProfile.

✅ The Solution
1. Identify the Correct Executable
We verified that your Git Bash executable is located on your secondary drive. The standard path for a manual Git installation on D: is:
D:\Git\bin\bash.exe

2. Update settings.json
We replaced the broken configuration with a valid JSON structure.

Key Change: We removed the square brackets [] and used double backslashes \\ (which is required in JSON to represent a single backslash in Windows paths).

Final Configuration Block:

JSON
{
  "terminal.integrated.profiles.windows": {
    "Git Bash Custom": {
      "path": "D:\\Git\\bin\\bash.exe",
      "icon": "terminal-bash"
    }
  },
  "terminal.integrated.defaultProfile.windows": "Git Bash Custom"
}
3. Refreshing the Environment
Since terminal profiles are loaded at startup, we performed a Full Restart of VS Code. This forced the editor to re-scan the D: drive for the bash.exe file defined in your new profile.

🚀 Verification
To ensure everything is working correctly, you can now run these two commands in your new terminal:

Check Terminal Type: The tab in your terminal panel should now show the Bash icon (a small $ or >_) instead of the PowerShell logo.

Check Git Functionality:

Bash
git --version
If this returns a version number (e.g., git version 2.x.x), your "brainrotgenz compiler" project is ready for its first commit.