---
layout: post
title: x86-64 ASM - Instructions 1
tags: assembly
---

{% include mailinfo.html from="Jakob Nacanaynay <jnac8080@gmail.com>" to="You <anyone@out.there>" date="July 11, 2025, 10:54 AM" subject="x86-64 ASM - Instructions 1" %}

With two operand instructions, read Intel as `destination <- source(s)` whereas AT&T syntax will be `source(s) -> destination`. In AT&T, registers will also be prefixed with `%` and immediates will be prefixed with `$`.

| Instruction | What it does |
| --- | --- |
| NOP | Represents doing nothing. Useful for timing and NOP slides |
| CALL | Transfers control to another function. It does this by first pushing the next instruction onto the stack then changing RIP to the address given in the instruction |
| RET | Pops the top of the stack into RIP. Can also specify bytes to add to RSP |
| MOV | Move value from source to destination. Source will remain unchanged. CANNOT move from memory to memory. Must use a register |
| ADD | Add value from source to destination and save to destination. CANNOT do memory to memory |
| SUB | Subtract value of source from destination and save to destination. CANNOT do memory to memory |
