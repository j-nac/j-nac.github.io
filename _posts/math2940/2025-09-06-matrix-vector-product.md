---
layout: post
title: Matrix Vector Product
tags: math math2940
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="September 6, 2025, 3:46 PM" subject="Matrix Vector Product" %}

The product of a matrix and a vector is as shown:

$$ [\vec a_1, \vec a_2, \cdots, \vec a_n]\begin{bmatrix}
    x_1 \\
    x_2 \\
    \vdots \\
    x_n
\end{bmatrix} = x_1\vec a_1 +  x_2\vec a_2 + \cdots + x_n\vec a_n $$

A matrix vector product is well-defined if the number of columns in the matrix equals the number of rows in the vector. The output is a vector with the length of the number of rows in the matrix.

## Matrix Equation

$$ A\vec x = \vec b $$

If a system has two distinct solutions, it must have infinitely many solutions.

## Properties

1. $A(\vec x+\vec y)=A\vec x + A\vec y$
2. $A(c\vec x)=c(A\vec x)$
