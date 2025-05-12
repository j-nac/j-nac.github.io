---
layout: post
title: Exact ODEs
---

{% include mailinfo.html from="Jakob Nacanaynay <jnac8080@gmail.com>" to="You <anyone@out.there>" date="May 12, 2025, 4:45 PM" subject="Exact ODEs" %}

An ODE of the form

$$ M + N\frac{dy}{dx} = 0 $$

is exact if $M_y = N_x$.

## Solving

1. Verify exactness by checking that the derivative of $M$ with respect to $y$ and the derivative of $N$ with respect to $x$ are equal.
2. Find the function $\psi$ by integrating one of the functions. $M = \psi_x \Rightarrow \psi = \int M\;dx + g(y)$ and $N = \psi_y \Rightarrow \psi = \int N\;dy + h(x)$.
3. Notice from above that integrating one of the functions results in an unknown function that is added. You will have to use the other function to find the unknown function.
4. Set $\psi = C$ for the implicit solution.
5. Solve for $y$ for the explicit solution.
