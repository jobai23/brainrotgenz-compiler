DAY 5 LOG — BrainRot Gen Z Compiler
Author: Joseph Peter Petlyn Bailey
Date: april 2026
Goal: Clean compiler output, add debug flags, GDB memory examination, first custom BrainRot program

Summary
Day 5 had three major sections. First — cleaning up the compiler output so it runs like a real language with no internals shown. Second — adding professional command line flags. Third — GDB memory examination to understand how the environment stores variables at the raw memory level. Finally wrote and ran the first custom BrainRot program outside of hello.brainrot.

Part 1 — Clean Compiler Output
Problem
Every time a BrainRot program ran it printed:
=== LEXER: 136 tokens found ===
=== AST ===
[PROGRAM]
  [BLOCK]
    [VAR_DECL] gooner score...
Real compilers never show internals. Running ./hello in C just runs the program.
Solution — Command Line Flags
Rewrote src/main.c to support four flags:
FlagBehaviourbrainrot <file>runs program cleanly — no internalsbrainrot --debug <file>shows tokens + AST + runs programbrainrot --tokens <file>shows only tokens then exitsbrainrot --ast <file>shows only AST then exitsbrainrot --versionprints version infobrainrot --unknownprints usage message
Flag Parsing Logic
cfor (int i = 1; i < argc; i++) {
    if (strcmp(argv[i], "--debug") == 0)       debug_mode  = 1;
    else if (strcmp(argv[i], "--tokens") == 0) tokens_mode = 1;
    else if (strcmp(argv[i], "--ast") == 0)    ast_mode    = 1;
    else if (strcmp(argv[i], "--version") == 0) { print_version(); return 0; }
    else if (argv[i][0] == '-') { print_usage(); return 1; }
    else filename = argv[i];
}
Clean Run Output
.\brainrot.exe tests/hello.brainrot

enter your name slime:
jose
enter your score no cap:
95
W rank fr no cap
grinding...
grinding...
grinding...
0 1 2 3 4
0 1 2
program done green
No tokens. No AST. Just the program.
Debug Mode Output
.\brainrot.exe --debug tests/hello.brainrot

=== TOKENS (136) ===
... all tokens ...
=== AST ===
... full tree ...

enter your name slime:
...

Part 2 — GDB Memory Examination
Setup
powershellgdb .\brainrot.exe
set pagination off
set args tests/hello.brainrot
break env_set
run
First Breakpoint Hit
Thread 1 hit Breakpoint 1, env_set (env=0x7d6b50, name=0x7d32f0 "score")
Memory Before Allocation
print name     → "score"
print *env     → {entries = 0x0, count = 0, capacity = 0}
x/8xb env->entries → Cannot access memory at address 0x0
Environment is empty — entries is NULL before first variable is stored.
Stepping Through realloc
next  → line 47: if (env->count >= env->capacity)
next  → line 48: capacity = 0 ? 8 : capacity * 2   (sets capacity to 8)
next  → line 49: entries = realloc(entries, 8 * sizeof(EnvEntry))
next  → line 52: env->entries[env->count].name = strdup(name)
Memory After Allocation
print *env → {entries = 0x7d6b90, count = 0, capacity = 8}
x/8xb env->entries →
0x7d6b90: 0x0d 0xf0 0xad 0xba 0x0d 0xf0 0xad 0xba
What 0xBAD0F00D Means
Windows fills freshly allocated memory with the pattern 0xBAD0F00D in debug builds. This is a deliberate sentinel value that means uninitialized memory. It makes bugs easier to spot — if you see this pattern in a pointer you know you forgot to initialize something.
After strdup(name) and the value assignment the bytes change to real data — the string pointer and integer value of the variable.
Key Insight From GDB Session
The Environment is a flat array of EnvEntry structs. Each entry is:

A char* pointer to the variable name (8 bytes on 64-bit)
A Value struct containing type + union (16 bytes)

Total size per entry: approximately 24 bytes. With capacity 8 that is 192 bytes of memory for the entire variable environment of a BrainRot program.
GDB Commands Used
set pagination off          — stop GDB pausing output
break env_set               — breakpoint on variable storage
print name                  — print variable name being stored
print *env                  — print entire environment struct
x/8xb env->entries          — examine 8 bytes at entries address
x/40xb env->entries         — examine 40 bytes (full first entry)
print env->entries[0].name  — print first stored variable name
next                        — step one line
continue                    — run to next breakpoint
disassemble env_set         — show x86-64 assembly for env_set

Part 3 — First Custom BrainRot Program
Program — Sum Of Even Numbers
Written in BrainRot Gen Z language, saved as tests/even_sum.brainrot:
diabolical Sum of even numbers 0 2 4 6 8 10

put the fires in the bag {

    gooner jit sum = 0 + 2 + 4 + 6 + 8 + 10;

    syabu "sum of even numbers from 0 to 10:";
    syabu sum;

    cooked 0;
}
Run
.\brainrot.exe tests/even_sum.brainrot

sum of even numbers from 0 to 10:
30
Result is correct — 0 + 2 + 4 + 6 + 8 + 10 = 30.
Bug Discovered And Fixed — Path Characters In Lexer
When the file was at tests/testsbrain/even_sum.brainrot the lexer printed:
error: unknown character ':' on line 11
error: unknown character '\' on line 11
The Windows path tests\testsbrain\ contains : and \ which the lexer was somehow scanning. Fixed by moving the file to tests/even_sum.brainrot — a path with no special characters.

What Was Learned From GDB Today
ConceptWhat GDB ShowedMemory allocationrealloc changes entries from 0x0 to real addressUninitialized memoryWindows fills with 0xBAD0F00D patternEnvironment layoutFlat array of name-value pairs, 24 bytes per entryBreakpointsStop execution at exact function callsMemory examinationx/Nxb address shows N bytes in hexVariable inspectionprint *struct shows all fields

Files Modified Today
FileActionsrc/main.cRewritten — clean output, 4 flags addedtests/even_sum.brainrotCreated — first custom BrainRot program

Git Commit
git commit -m "day 5: clean output, --debug --tokens --ast --version flags added"