# BrainRot Gen Z — Language Specification

**Project:** BrainRot Gen Z Compiler  
**Language:** C  
**Version:** 1.0.0  
**Date:** February 28, 2026  
**Status:** In Development  

---

## Table of Contents

1. [Overview](#overview)
2. [Headers and Libraries](#headers-and-libraries)
3. [Macros and Constants](#macros-and-constants)
4. [Data Types](#data-types)
5. [Variables](#variables)
6. [Arithmetic Operators](#arithmetic-operators)
7. [Comparison Operators](#comparison-operators)
8. [Decision (Control Flow)](#decision-control-flow)
9. [Loops](#loops)
10. [Functions](#functions)
11. [Output](#output)
12. [Comments](#comments)
13. [Program Entry Point](#program-entry-point)
14. [Complete Keyword Reference](#complete-keyword-reference)
15. [Full Example Program](#full-example-program)

---

## Overview

BrainRot Gen Z is a custom programming language with syntax built entirely from Gen Z internet slang. Every keyword was chosen intentionally  its slang meaning maps logically to its programming purpose. The compiler is built in C and translates BrainRot source code through a Lexer → Parser → Evaluator pipeline.

**Design Rule:** If you read BrainRot code out loud in a Gen Z context, the meaning should feel natural.

---

## Headers and Libraries

**Keyword:** `cook`

**Classic Equivalent:** `#include <stdio.h>`

**Why:** You *cook* before you serve. Including a library means preparing your ingredients before the program runs. Nothing gets served (executed) without prep.

**Syntax:**

cook "stdio"
cook "math"
cook "string"


**Rules:**
- `cook` must appear at the top of the file before any other code
- The library name goes in double quotes without the `.h` extension
- The compiler resolves `cook "stdio"` to `#include <stdio.h>` internally

**Example:**

cook "stdio"
cook "math"

put the fires in the bag {
    syabu "libraries loaded no cap";
    cooked 0;
}




## Macros and Constants

**Keyword:** `lit`

**Classic Equivalent:** `#define MAX_SIZE 100`

**Why:** Something that is *lit* is set, defined, and does not change. A lit thing is established  it is not up for debate. Perfect for constants and macros that are fixed at compile time.

**Syntax:**

lit MAX_SIZE 100
lit PI 3.14159
lit APP_NAME "BrainRot v1"


**Rules:**
- `lit` declarations go after `cook` statements, before any functions or code
- No semicolon at the end of a `lit` statement
- The value can be a number, float, or string
- `lit` values cannot be reassigned — they are fixed

**Example:**
```
cook "stdio"

lit MAX_SCORE 100
lit GAME_NAME "BrainRot Runner"
lit VERSION 1

put the fires in the bag {
    syabu GAME_NAME;
    syabu VERSION;
    cooked 0;
}




## Data Types

BrainRot Gen Z has five data types. Each keyword was chosen because its slang personality matches the behavior of the type.



### `gooner` Integer

**Classic Equivalent:** `int`

**Why:** A gooner is obsessed specifically obsessed with numbers. Gooning, by definition, involves repetition and counting. An integer is a whole number, countable, exact. The gooner *lives* for the count.

**Range:** -2,147,483,648 to 2,147,483,647 (32-bit signed integer)

**Syntax:**

gooner jit x = 10;
gooner jit score = 0;
gooner jit negative = -5;



### `baddie` — String

**Classic Equivalent:** `char*` / `string`

**Why:** A baddie has a name. Janet. Aaliyah. Names are strings. A baddie's identity is text — how she is called, how she is known. A string is a sequence of characters that gives something a name and identity.

**Syntax:**

baddie jit name = "janet";
baddie jit greeting = "what it do slime";
baddie jit empty = "";


**Rules:**
- String values go in double quotes
- Strings are null-terminated character arrays internally (`char*`)
- Maximum length is 1024 characters in v1.0

---

### `slime` — Float

**Classic Equivalent:** `float`

**Why:** Slime has two sides  it can be a loyal friend (positive) or a snake (negative). It is fluid, it moves, it has decimals. A float is not a fixed whole number  it slides and shifts. Slime behavior.

**Syntax:**

slime jit ratio = 3.14;
slime jit temperature = -2.5;
slime jit percentage = 0.75;


**Rules:**
- Use a decimal point for all `slime` values
- Writing `slime jit x = 5` is valid but internally stored as `5.0`



### `goon` — Boolean

**Classic Equivalent:** `bool`

**Why:** A goon is either down or not. There is no in between — a goon either rides for you or does not. Boolean is binary: true or false, W or L. The goon does not negotiate.

**Values:** `W` (true) and `L` (false)

**Syntax:**

goon jit isLit = W;
goon jit isBroke = L;
goon jit gameOver = L;




### `bum` — Null / Void

**Classic Equivalent:** `null` / `void`

**Why:** A bum has nothing and does nothing. A `void` function returns nothing. A `null` value holds nothing. The bum contributes zero — exactly like `void` and `null` in programming.

**Usage:**

cook bum greetSlime() {
    syabu "what it do";
    diabolical no return value because bum (void)
}


**Rules:**
- `bum` is used as a return type when a function returns nothing
- `bum` represents null/empty when used as a value

---

## Variables

**Keyword:** `jit`

**Classic Equivalent:** `let` / `var` / variable declaration

**Why:** A *jit* is something young, new, just coming into existence. Declaring a variable is bringing something new into the program's world. The `jit` is just being born.

**Syntax:**

[type] jit [name] = [value];

**Examples:**

gooner jit x = 10;
gooner jit score = 0;
baddie jit playerName = "slime";
slime jit speed = 1.5;
goon jit isAlive = W;


**Rules:**
- Every variable declaration requires a type before `jit`
- Variable names use camelCase (e.g. `playerScore`, `maxHealth`)
- All statements end with a semicolon `;`
- Variables must be declared before use
- Variable names cannot be BrainRot keywords



## Arithmetic Operators

BrainRot uses standard symbols for basic arithmetic. Certain special operations have their own keywords.

### Standard Operators

| BrainRot | Classic | Meaning |
|----------|---------|---------|
| `+` | `+` | addition |
| `-` | `-` | subtraction |
| `*` | `*` | multiplication |
| `/` | `/` | division |

**Examples:**
```
gooner jit a = 10;
gooner jit b = 3;

gooner jit sum        = a + b;    diabolical 13
gooner jit difference = a - b;    diabolical 7
gooner jit product    = a * b;    diabolical 30
gooner jit quotient   = a / b;    diabolical 3
```

---

### Special Arithmetic Keywords

---

#### `fap` — Increment (`++`)

**Classic Equivalent:** `i++` / `i += 1`

**Why:** Keep grinding, keep going — go up by one. Fap means to keep doing the same action repeatedly. Incrementing is the same — add one, repeat.


gooner jit x = 0;
fap x;    diabolical x is now 1
fap x;    diabolical x is now 2


---

#### `double it and give it to the next` — Multiply by 2 (`*= 2`)

**Classic Equivalent:** `x *= 2`

**Why:** The phrase literally means multiply and pass forward. Double the value and hand it off. This maps perfectly to `*= 2`.


gooner jit x = 5;
double it and give it to the next x;    diabolical x is now 10
double it and give it to the next x;    diabolical x is now 20


---

#### `benjis` — Large Integer Literal

**Classic Equivalent:** large number value (typically hundreds)

**Why:** Benjis means hundred dollar bills. Benjis = money = large numbers. Use `benjis` to express a value in the hundreds.


gooner jit cash = benjis;      diabolical value of 100
gooner jit profit = 5 * benjis;    diabolical 500




#### `gwak 3k` — Multiply by 1000 (`*= 1000`)

**Classic Equivalent:** `x *= 1000`

**Why:** Gwak 3k means a crazy large number — 3000. This operator scales a value up to the thousands.


gooner jit views = 5;
gwak 3k views;    diabolical views is now 5000




## Comparison Operators

| BrainRot | Classic | Meaning | Why |
|----------|---------|---------|-----|
| `W` | `>` | greater than | W = winning = you are above |
| `L` | `<` | less than | L = losing = you are below |
| `no cap` | `==` | equal to | no cap = for real = exact truth |
| `cap` | `!=` | not equal to | cap = lie = they are NOT the same |
| `gyatt` | `>=` | greater than or equal | gyatt = big W, at minimum winning |
| `bugging` | `<=` | less than or equal | bugging = barely making it |

**Examples:**

gooner jit x = 10;
gooner jit y = 5;

diabolical greater than
yn x W y { syabu "x is winning"; }

diabolical less than
yn y L x { syabu "y is losing"; }

diabolical equal to
yn x no cap 10 { syabu "exactly 10 no cap"; }

diabolical not equal to
yn x cap y { syabu "these are not the same fr"; }

diabolical greater or equal
yn x gyatt 10 { syabu "big W"; }

diabolical less or equal
yn y bugging 5 { syabu "y is 5 or under"; }




## Decision (Control Flow)

### `yn` — If

**Classic Equivalent:** `if`

**Why:** `yn` = yes/no. Making a decision is answering a yes or no question. If the condition is yes, run the block.



### `fynshyt` — Else If

**Classic Equivalent:** `else if`

**Why:** `fynshyt` = "fine, shit" — the reluctant fallback. You check the first condition, it failed, so *fine, shit*, check this one next.



### `opps` — Else

**Classic Equivalent:** `else`

**Why:** Opps = opposition = the other side. When none of your conditions pass, the opps block runs — the opposite path.

**Syntax:**

yn [condition] {
    diabolical runs if condition is true
}
fynshyt [condition] {
    diabolical runs if second condition is true
}
opps {
    diabolical runs if nothing above was true
}


**Example:**

gooner jit score = 85;

yn score gyatt 90 {
    syabu "W grade fr";
}
fynshyt score gyatt 70 {
    syabu "decent, could cook harder";
}
opps {
    syabu "L grade bro cooked";
}




## Loops

### `risky shoot` — While Loop

**Classic Equivalent:** `while`

**Why:** A risky shoot means you keep shooting while the situation is risky — you keep firing as long as the condition holds. The moment it is no longer risky (condition is false), you stop.

**Syntax:**

risky shoot [condition] {
    diabolical body executes while condition is true
}


**Example:**

gooner jit x = 0;

risky shoot x L 5 {
    syabu x;
    fap x;
}
diabolical prints 0 1 2 3 4




### `put on sum` — Do-While Loop

**Classic Equivalent:** `do { } while`

**Why:** *Put on sum* means do something first, no questions asked, then check if you should keep going. A do-while executes the body at least once before checking the condition. Same energy.

**Syntax:**

put on sum {
    diabolical body always runs at least once
} risky shoot [condition];


**Example:**

gooner jit x = 0;

put on sum {
    syabu x;
    fap x;
} risky shoot x L 3;
diabolical prints 0 1 2  always runs at least once




### `slide on em` — For Loop

**Classic Equivalent:** `for`

**Why:** *Slide on em* means roll up with a plan — you know where you are starting, where you are going, and how fast you are moving. A for loop has all three: initializer, condition, step. You slide with purpose.

**Syntax:**

slide on em ([type] jit [init]; [condition]; [step]) {
    diabolical body
}


**Example:**

slide on em (gooner jit i = 0; i L 5; fap i) {
    syabu i;
}
diabolical prints 0 1 2 3 4







## Functions

### `cook` Function Definition

**Classic Equivalent:** function declaration

**Why:** You *cook* up something in the kitchen before serving it. Defining a function is preparing a recipe that can be called (served) later.



### `cooked` — Return

**Classic Equivalent:** `return`

**Why:** The dish is *cooked* — done, finished, ready to hand back. `cooked` sends a value back from a function just like `return`.



### `slide` — Function Call

**Classic Equivalent:** calling a function

**Why:** *Slide* means show up and execute. When you slide somewhere you arrive and do your thing. Calling a function = telling it to slide through and run.

**Syntax:**

cook [return_type] [functionName]([params]) {
    diabolical body
    cooked [value];
}

diabolical calling the function
slide [functionName]([args]);


**Examples:**

diabolical void function  no return value
cook bum printBanner() {
    syabu "===================";
    syabu "BrainRot Gen Z v1.0";
    syabu "===================";
}

diabolical function with return value
cook gooner addNumbers(gooner a, gooner b) {
    cooked a + b;
}

put the fires in the bag {
    slide printBanner();

    gooner jit result = slide addNumbers(10, 5);
    syabu result;    diabolical prints 15

    cooked 0;
}


**Rules:**
- Use `bum` as the return type for void functions
- Use the data type keyword (`gooner`, `baddie`, `slime`, `goon`) as return type for functions that return values
- Every non-`bum` function must have a `cooked` statement
- Parameters follow the pattern `[type] [name]`



## Output

**Keyword:** `syabu`

**Full Meaning:** shut your bitch ass up — silence everything else and just output this one thing

**Classic Equivalent:** `printf()` / `print()`

**Why:** `syabu` commands attention. It silences everything else and forces the program to output. When you call `syabu` nothing else matters — that value goes to screen.

**Syntax:**

syabu [value];
syabu [variable];
syabu "string literal";


**Examples:**

syabu "hello world no cap";
syabu x;
syabu score;
syabu "your score is";
syabu score;




## Comments

**Keyword:** `diabolical`

**Classic Equivalent:** `//` single-line comment

**Why:** A *diabolical* thought is something you are thinking but not saying out loud — it stays in your head. The compiler reads it and ignores it, just like a thought that never becomes action.

**Syntax:**

diabolical this is a comment the compiler ignores this line


**Examples:**

diabolical BrainRot Gen Z Compiler
diabolical Author: you
diabolical Date: February 28 2026

diabolical declare player score
gooner jit score = 100;

diabolical check if player won
yn score gyatt 50 {
    syabu "W";
}
```

**Rules:**
- `diabolical` comments a single line only
- Everything after `diabolical` on that line is ignored
- No closing tag or semicolon needed
- Can be placed inline after code: `fap x;  diabolical increment x`

---

## Program Entry Point

**Keyword:** `put the fires in the bag`

**Classic Equivalent:** `int main() { }`

**Why:** This phrase means handle business — get everything done, no excuses. The main function is exactly that: the entry point where the entire program begins and everything gets handled.

**Syntax:**

put the fires in the bag {
    diabolical all your code goes here
    cooked 0;
}


**Rules:**
- Every BrainRot program must have exactly one `put the fires in the bag` block
- It must be the last thing in the file (after all function definitions)
- Always end with `cooked 0;` — this signals successful execution (classic `return 0`)

---

## Complete Keyword Reference

| Keyword | Category | Classic Equivalent |
|---------|----------|-------------------|
| `cook` | library include OR function definition | `#include` / `function` |
| `lit` | macro / constant | `#define` |
| `gooner` | data type — integer | `int` |
| `baddie` | data type — string | `char*` / `string` |
| `slime` | data type — float | `float` |
| `goon` | data type — boolean | `bool` |
| `bum` | data type — null / void | `null` / `void` |
| `jit` | variable declaration marker | `let` / `var` |
| `W` | comparison — greater than OR boolean true | `>` / `true` |
| `L` | comparison — less than OR boolean false | `<` / `false` |
| `no cap` | comparison — equal to | `==` |
| `cap` | comparison — not equal to | `!=` |
| `gyatt` | comparison — greater or equal | `>=` |
| `bugging` | comparison — less or equal | `<=` |
| `fap` | arithmetic — increment | `++` |
| `double it and give it to the next` | arithmetic — multiply by 2 | `*= 2` |
| `benjis` | arithmetic — value of 100 | `100` |
| `gwak 3k` | arithmetic — multiply by 1000 | `*= 1000` |
| `yn` | decision — if | `if` |
| `fynshyt` | decision — else if | `else if` |
| `opps` | decision — else | `else` |
| `risky shoot` | loop — while | `while` |
| `put on sum` | loop — do-while | `do { } while` |
| `slide on em` | loop — for | `for` |
| `cooked` | function — return | `return` |
| `slide` | function — call | `functionName()` |
| `syabu` | output — print | `printf()` |
| `diabolical` | comment | `//` |
| `put the fires in the bag` | program entry point | `int main()` |

---

## Full Example Program

```
diabolical ===================================================
diabolical BrainRot Gen Z — Full Demo Program
diabolical Author: you
diabolical Date: February 28 2026
diabolical ===================================================

cook "stdio"
cook "math"

lit MAX_SCORE 100
lit GAME_NAME "BrainRot Runner"

diabolical void function — no return value
cook bum printBanner() {
    syabu "==============================";
    syabu GAME_NAME;
    syabu "==============================";
}

diabolical function that returns an integer
cook gooner addBenjis(gooner a, gooner b) {
    cooked a + b;
}

diabolical function that checks if score is W or L
cook bum checkScore(gooner score) {
    yn score gyatt 90 {
        syabu "W rank no cap";
    }
    fynshyt score gyatt 70 {
        syabu "decent, cook harder";
    }
    opps {
        syabu "L rank get your bag up";
    }
}

diabolical program entry point
put the fires in the bag {

    slide printBanner();

    diabolical variables
    gooner jit playerScore = 50;
    gooner jit bonus = 25;
    baddie jit playerName = "slime";
    goon jit isAlive = W;
    slime jit multiplier = 1.5;

    diabolical arithmetic
    gooner jit total = slide addBenjis(playerScore, bonus);
    syabu total;

    double it and give it to the next total;
    syabu total;

    diabolical decision
    slide checkScore(total);

    diabolical while loop
    gooner jit count = 0;
    risky shoot count L 3 {
        syabu "grinding...";
        fap count;
    }

    diabolical for loop
    slide on em (gooner jit i = 0; i L 5; fap i) {
        syabu i;
    }

    diabolical do while loop
    gooner jit x = 0;
    put on sum {
        syabu x;
        fap x;
    } risky shoot x L 3;

    syabu "program done green";
    cooked 0;
}




*BrainRot Gen Z Language Specification v1.0  February 28, 2026*
