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
