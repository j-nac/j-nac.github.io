---
layout: post
title: Homogeneous Systems
tags: math math2940
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="September 6, 2025, 4:29 PM" subject="Homogeneous Systems" %}

A homogeneous system is a system where all equations equal zero.

$$ A\vec x = \vec 0 $$

A homogeneous system is guaranteed to be consistent with the trivial solution of a zero vector, but it may have non-trivial solutions. A non-trivial solution is guaranteed if there is at least one free variable.

The solution set of a homogeneous equation is a span of k vectors.

## Solving

Since the rightmost column in an augmented matrix for a homogeneous system is always zero, we can focus on the coefficient matrix. Turn the matrix to REF and then the system can be written in parametric form where each variable is written in terms of free variables.
