---
layout: post
title: Setup Time and Hold Time Constraints
tags: ece ece2300
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="October 13, 2025, 9:10 PM" subject="Setup Time and Hold Time Constraints" %}

## Paths with Registers

There can be no paths through registers. Instead, there are paths from, to, and between registers.

## Setup Time Constraint

The setup time constraint is where you want the data to be loaded properly before it is read.

- We want the data to win
- Stable before the rising edge
- Propagation delay
- $T_c \geq t_\text{pd,cq} + t_\text{pd,comb} + t_\text{setup}$

## Hold Time Constraint

The hold time constraint is where you want the data to be held in the register rather than zooming through.

- We want the clock to win
- Stable after the rising edge
- Contamination delay
- $t_\text{hold} \leq t_\text{cd,cq} + t_\text{cd,comb} $
