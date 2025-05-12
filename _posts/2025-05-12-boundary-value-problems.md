---
layout: post
title: Boundary Value Problems
---

{% include mailinfo.html from="Jakob Nacanaynay <jnac8080@gmail.com>" to="You <anyone@out.there>" date="May 12, 2025, 11:31 AM" subject="Boundary Value Problems" %}

## Eigenvalues and Eigenfunctions

Most often in boundary value problems, you will be asked to find the eigenvalues and eigenfunctions given a function and boundary conditions.

1. Form the characteristic equation.
2. Solve in terms of lambda. It will often, but not always, render a square root with lambda inside.
3. Consider the possible values for $r$ and what values of $\lambda$ would render such values. For example, if the quadratic formula simplified to $1 \pm \sqrt{2-\lambda}$, then two distinct real solutions would occur when $\lambda<2$, repeated roots would occur at $\lambda=0$, and imaginary roots would occur at $\lambda > 2$.
4. It is often helpful to replace $\lambda$ with some other variable to consider when it is greater or less than some value. For example, if we wanted to test when $\lambda<1$, we could use $\lambda = 1 - \omega^2$
5. For each of the possible conditions of $\lambda$:
   1. Create the general solutions.
   2. Use the boundary conditions to solve for the coefficients, avoiding setting a coefficient to zero when possible. Trigonometric functions can be equal to zero by cleverly setting them equal to values like $\pi n$ for sine or $\frac{\pi}{2}+\pi n$ for cosine.
   3. Plug in the value of $\lambda$ (the eigenvalue) back in to get the eigenfunction.
