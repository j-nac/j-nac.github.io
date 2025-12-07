---
layout: post
title: Control Dependencies and Hazards
tags: ece ece2300
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="December 7, 2025, 3:03 PM" subject="Control Dependencies and Hazards" %}

## Definition

A control dependency is when the decision to run one instruction is dependent on an earlier instruction. Both jumps and branches lead to control dependencies.

## Resolving Control Hazards with Hardware Speculation

1. Figure out at what stage of the instruction jump or branch we will know what instruction to execute. For example, with a five-stage processor and the BNE instruction, we will know whether to branch on the X (execute) stage. Whereas, for the JAL instruction, we know whether to branch on the D (decode instruction).
2. Consider the number of NOPs or junk instructions we'll need to resolve the hazard with speculation. For a JAL, we need one junk instruction after so that the next instruction we can line up our F (fetch) appropriately. With BNE, we need two junk instructions for a five-stage processor.
3. Squash and bubble the junk instructions. For the stages occurring in the junk instructions at the same time as the instruction where control is determined, cross them out to indicate it is squashed. Send a bubble for stages afterwards. A bubble is sent by turning the valid bit to false. DO NOT cross out or bubble the stages in the junk instructions prior to the control stage.

## Example

| Instruction | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| addi x1, x0, 1 | F | D | X | M |   W   |   |   |   |   |   |   | |
| addi x2, x0, 2 |   | F | D | X |   M   | W |   |   |   |   |   | |
| bne x1, x2, L1 |   |   | F | D |   X   | M | W |   |   |   |   | |
| addi x3, x0, 3 |   |   |   | F | ~~D~~ | - | - | - |   |   |   | |
| addi x4, x0, 4 |   |   |   |   | ~~F~~ | - | - | - | - |   |   | |
| addi x5, x0, 5 |   |   |   |   |       | F | D | X | M | W |   | |
| addi x6, x0, 6 |   |   |   |   |       |   | F | D | X | M | W | |

1. We have a BNE instruction, so the stage where we will know whether to branch is X.
2. Since we know the control flow at the X stage, it will take two junk instructions before we can properly load the correct instruction at the fetch stage.
3. We squash the D and F stages in the junk instructions under the BNE X stage. DO NOT squash the F stage in the first junk instruction because the processor wouldn't even know to squash it because it hasn't run the X stage yet. Finally, we send a bubble through the remaining stages in the junk instruction.
