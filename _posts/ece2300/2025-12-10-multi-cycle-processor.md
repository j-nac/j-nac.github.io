---
layout: post
title: Multi-Cycle Processor
tags: ece ece2300
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="December 10, 2025, 8:33 PM" subject="Multi-Cycle Processor" %}

Multi-cycle processors (not pipelined) will have several states and run through several cycles to execute each instruction. It will have a relatively short cycle time but take several cycles, hurting overall execution time. The main advantage is its low area usage since it will do small parts of an instruction at a time.

## 15 State

## 63 State

The 63 state multi-cycle processor will have three fetch states for every instruction then have instruction-specific states. As a note for later: A, B, C, IR, and PC are all registers in the processor, but they should not be confused with registers in the regfile (feeding from x0, rs1, rs2, and rd).

### Fetch

1. The A register will load the PC register value. Simultaneously, the program count value will be given as the address to retrieve the instruction corresponding from memory.
2. The instruction will be loaded to the IR register which feeds into the control unit.
3. The A register value and 4 will be added and saved to the PC register to increment the PC. Notice how it increments automatically, even if there is a branch or jump instruction.

### ADD

1. Load the rs1 register value to A.
2. Load the rs2 register value to B.
3. Add the values and save to register rd.
