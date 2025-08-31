---
layout: post
title: x86-64 ASM - Registers
tags: assembly
---

{% include mailinfo.html from="Jakob Nacanaynay <jnac8080@gmail.com>" to="You <anyone@out.there>" date="July 11, 2025, 10:54 AM" subject="x86-64 ASM - Registers" %}

![Computer Memory Hierarchy]({{ site.baseurl }}/images/ComputerMemoryHierarchy.svg)

## Registers in Intel

There are 16 "general" registers and one instruction pointer for the next instruction to execute. On x86-64, registers are 64 bits wide.

As we got to higher bit processors, and started extending registers, we still make the old register accessible as sub registers.

![Computer Memory Hierarchy]({{ site.baseurl }}/images/register-sizes.png)

## Register Usage Conventions

| Register | Recommended Usage |
| --- | --- |
| RAX | Function return values |
| RBX | Base pointer to data section |
| RCX | Counter for string and loop operations |
| RDX | I/O Pointer |
| RSI | Source index pointer for string operations |
| RDI | Destination index pointer for string operations |
| RSP | Stack pointer |
| RBP | Stack frame base pointer |
| RSI | Instruction pointer |
