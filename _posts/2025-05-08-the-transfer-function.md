---
layout: post
title: The Transfer Function
tags: ece ece2100
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="May 8, 2025, 2:59 PM" subject="The Transfer Function" %}

The transfer function ($H(s)$) connects inputs and outputs in the s domain.

$$ X(s)H(s) = Y(s) $$

## Finding the Transfer Function

Finding the transfer function is normally a simple process outside of some laborious algebra.

1. Convert the given circuit to the s domain.
2. Relate the input and output using any circuit analysis method. The node voltage method works well---create the equations.
3. Solve for the transfer function by dividing the output by the input in the s domain.

## Properties of the Transfer Function

- The transfer function will be different depending on the input and output.
- The transfer function is also not reversible in the sense that

$$ X(s)H(s) \neq Y(s)H(s) $$

- You can find the transfer function signal by inputting a delta signal and measuring the output which will be the transfer function signal. This is because the delta will simply evaluate to one in the s domain

$$ \delta(t) = 1 \Rightarrow Y(s) = 1\cdot H(s) = H(s) \Rightarrow h(t) $$
