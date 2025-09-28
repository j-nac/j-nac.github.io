---
layout: post
title: Inverse Matrix
tags: math math2940
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="September 28, 2025, 4:28 PM" subject="Inverse Matrix" %}

A matrix multiplied by its inverse matrix, in any order, will result in the identity matrix.

To find the inverse matrix, follow the steps below:

1. Create a superaugmented matrix with the matrix you want to invert on the left and its corresponding identity matrix on the right.
2. Perform EROs until the matrix on the left becomes the identity matrix.
3. If step two is not possible, the matrix is not invertible.
4. If step two was successful, the inverse matrix is on the right.

Step two represents the rule that a matrix is invertible if and only if its REF is the identity matrix.

## Identities

- $(A^{-1})^{-1} = A$
- $(AB)^{-1}=B^{-1}A^{-1}$
- $(cA)^{-1}=\frac{1}{c}A^{-1}$
- $(A^{-1})^T=(A^T)^{-1}$
