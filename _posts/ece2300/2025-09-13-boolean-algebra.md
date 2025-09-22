---
layout: post
title: Boolean Algebra
tags: ece ece2300
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="September 13, 2025, 3:55 PM" subject="Boolean Algebra" %}

## Terminology

- Boolean equation: equation where all variables are true or false
- Complement: the inverse of a variable ($A$ and $\overline A$)
- Literal: a variable or its complement
- Product: AND of literals
- Implicant: another name for a product
- Minterm: a product with all inputs to a function ($ ABC $)
- Sum: OR of literals
- Maxterm: sum involving all inputs to a function ($A + B + C$)

## Basic Operations

- NOT: $Y=\overline A = A'$
- AND: $Y = A \cdot B = AB$
- OR: $Y = A + B$
- XOR: $Y = A \oplus B$
- NAND: $Y = \overline{A \cdot B} = \overline{AB}$
- NOR: $Y = \overline{A + B}$
- XNOR: $Y = \overline{A \oplus B}$

## Sum-of-Products Canonical Form

- Every row in a truth table is associated with a minterm
- A boolean equation for any truth table can be formed with an or of minterms where the output is true

Example:

| A | B | Y | minterm |
| --- | --- | --- | --- |
| 0 | 0 | 0 | $\overline{A}\,\overline{B}$ |
| 0 | 1 | 1 | $\overline{A}B$ |
| 1 | 0 | 0 | $A\overline{B}$ |
| 1 | 1 | 1 | $AB$ |

Boolean equation: $Y = \overline{A}B + AB$

This can be modeled with a gate-level network. Create not paths for each input, use AND gates for minterms, and OR them together.

## Important Theorems

- Distributivity: $B(C+D)=BC + BD$, dual $B + CD = (B+C)(B+D)$
- Covering: $B(B+C)=B$, dual $B+BC=B$
- Combining: $BC + B\overline{C} = B$, dual $(B+C)(B+\overline{C})=B$
- De Morgan's: $\overline{BCD} = \overline{B}+\overline{C}+\overline{D}$, dual $\overline{B+C+D} = \overline{B}\,\overline{C}\,\overline{D}$

## Proofs

You can either prove by induction (finding the truth table of each side and checking if the truth tables are identical) or by using a series of axioms and theorems to make one side look like the other side.
