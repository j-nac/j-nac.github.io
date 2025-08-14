---
layout: post
title: x86-64 ASM - Introduction
tags: assembly
---

{% include mailinfo.html from="Jakob Nacanaynay <jnac8080@gmail.com>" to="You <anyone@out.there>" date="July 11, 2025, 10:54 AM" subject="x86-64 ASM - Introduction" %}

## Binary and Hexadecimal

I trust you know these things.

## Two's Complement Negative Numbers

1. Given the negative number you want to represent...
2. Get its absolute value in binary
3. Flip all bits
4. Add one

Example:

1. Given the number -5
2. 5 in binary is 0101
3. Flipped is 1010
4. Add one is **1011**

The leading 1 indicates it is negative. You will also find that you can do the same operations in the same order to get 0101 again. Adding as normal also works.

## C Data Types

![C Data Types]({{ site.baseurl }}/images/Refresher_C_Data_Types.png)

## Endianness

How will we store values in RAM?

### Little Endian

The *least significant byte* (LSB) is stored at the *lowest* address.

`0x12345678 -> 0x78, 0x56, 0x34, 0x12`

Where we might imagine the left value is what we see in the register while the right is how it will be loaded into memory in ascending addresses left to right.

Intel is little endian.

### Big Endian

The *most significant byte* (MSB) is stored at the *lowest* address.

`0x12345678 -> 0x12, 0x34, 0x56, 0x78`

Network traffic is big endian.

### Not Getting Confused

Remember that endianness applies to BYTES not bits and MEMORY not registers. In a byte, the least significant bit will always be on the right-hand side. The tool you use may also represent things as multiple bytes at a time, flipping to big endian.

- One byte at a time: `0x12345678 -> 0x78, 0x56, 0x34, 0x12`
- Two bytes at a time: `0x12345678 -> 0x5678, 0x1234`
- Four bytes at a time: `0x12345678 -> 0x12345678`

## Computer Registers

![Computer Memory Hierarchy]({{ site.baseurl }}/images/ComputerMemoryHierarchy.svg)

### Registers in Intel

There are 16 "general" registers and one instruction pointer for the next instruction to execute. On x86-64, registers are 64 bits wide.

As we got to higher bit processors, and started extending registers, we still make the old register accessible as sub registers.

![Computer Memory Hierarchy]({{ site.baseurl }}/images/register-sizes.png)

### Register Usage Conventions

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

## NOP

Does NOTHING*

*used to pad bytes or delay time. More in depth usage not covered.

NOP is an alias for exchanging a register value for itself.

## The Stack

- Last-in-first-out (LIFO) data structure where you can only "push" on a value or "pop" off a value.
- The stack exists conceptually --- different OSes have different conventions or ASLR may be used
- By convention, the stack grows towards *lower* memory addresses
- RSP points to the top of the stack or the *lowest* address

![C Memory Layout]({{ site.baseurl }}/images/Memory-Layout-of-C-Program.webp)

### What's on the stack?

- Function return addresses
- Local variables
- Sometimes for passing arguments
- Too many registers to juggle

### Push and Pop Instructions

As mentioned previously, a push will add a value to the stack and a pop will take off a value from the stack. Automatically, RSP will be adjusted to account for values pushed and popped off (subtract 8 for push, add 8 for pop).

You can either push directly from a register or from memory in the form r/mX

- Square brackets [] mean to treat a value as a memory address similar to the dereference operator *
- Base only -> [rbx]
- Base+index\*scale -> [rbx+rcx*8]
- Base+index\*scale+displacement -> [rbx+rcx*8+0x20] (this would be good for accessing from multidimensional arrays)

## Calling Functions

### Some more instructions

With two operand instructions, read Intel as `destination <- source(s)` whereas AT&T syntax will be `source(s) -> destination`. In AT&T, registers will also be prefixed with `%` and immediates will be prefixed with `$`.

| Instruction | What it does |
| --- | --- |
| CALL | Transfers control to another function. It does this by first pushing the next instruction onto the stack then changing RIP to the address given in the instruction |
| RET | Pops the top of the stack into RIP. Can also specify bytes to add to RSP |
| MOV | Move value from source to destination. Source will remain unchanged. CANNOT move from memory to memory. Must use a register |
| ADD | Add value from source to destination and save to destination. CANNOT do memory to memory |
| SUB | Subtract value of source from destination and save to destination. CANNOT do memory to memory |
