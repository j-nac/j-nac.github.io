---
layout: post
title: Implementing Instructions
tags: ece ece2300
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="December 3, 2025, 9:51 PM" subject="Implementing Instructions" %}

By setting various enable signals and mux select values, we are able to encode different instructions for the processor to execute.

## ADDI

The ADDI instruction will take an immediate value and read from the regfile, add the values together, then write to the regfile. At the same time, it will increment the program counter by four.

## ADD

ADD is similar to ADDI but instead of adding an immediate and a value in a register, it will add the values from two register. This might mean having a mux to select reading a second value from the regfile instead of taking the immediate.

## MUL

Similar to add, but since we're adding another multiplier component, we need some way to control whether we save the value from the ALU or the multiplier. This will involve a mux and more signals.

## LW

Like ADDI, it will add a register value and immediate. However, the sum will be sent down to memory to fetch the value at that address and save the memory out to the regfile. We'll want to add some signal for safe memory access.

## SW

We should add a signal for safe writing to memory and getting the correct type.

## JAL

All previous instructions simply had PC+4, but now we need to add an adder to calculate the new target instruction and add a mux to select whether we take the +4 route or go to a different address.

## JR

We need another line to read and select in the mux.

## BNE

We will use the equal comparator in the ALU to determine if it is equal or not. Depending on the signal, we can configure the PC select to either +4 or go somewhere else.
