---
layout: post
title: Combinational Logic
tags: ece ece2300
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="September 6, 2025, 3:00 PM" subject="Combinational Logic" %}

## Abstracting Away from Circuits

We can abstract away from thinking about high and low voltages in circuits by imagining wires as binary digits. The contract for what voltages are converted to ones vs zeros is called the **noise margin**.

## Truth Tables

We can use truth tables to represent how inputs relate to outputs. Each column is an input or an output. Every possible permutation of inputs should be in the truth table created.

We can derive truth tables from circuit diagrams and transistor-level schematics as well as doing the process in reverse.

## Logic Gates

Logic gates are further abstractions for circuits with a particular truth table.

NOT flips the input provided. AND will return 1 if all inputs are 1 and 0 otherwise. OR will return 1 if any input is 1 and 0 if no inputs are 1. XOR (exclusive or) will return 1 if one of the inputs are 1 but not both. For an n-input XOR, it will return 1 if there are an odd number of inputs that are 1 and 0 if there are an even number of inputs that are 1.

There are also the inverses --- NAND, NOR, and XNOR.

The inverse gates can be made simply with CMOS circuits, but the output can be followed by a NOT to get the normal AND and OR gates. XOR is a bit more difficult to make, but it can be done with four NAND gates.

## Primitive Gate Sets

A primitive gate set is the lowest set of available gates --- not formed by other logic gates -- that are used to implement digital circuits.

In theory, it is possible to implement all gates with NAND and NOR, but it can be impractical and inefficient. It can also be impractical having every possible type of gate for very specific purposes.

In the course, the primitive gate set will be NOT, n-input AND and NAND, n-input Or and NOR, and n-input XOR and XNOR.
