---
layout: post
title: Higher Order ODEs
---

{% include mailinfo.html from="Jakob Nacanaynay <jnac8080@gmail.com>" to="You <anyone@out.there>" date="May 12, 2025, 11:30 AM" subject="Higher Order ODEs" %}

There are two sides to solving linear ODEs with constant coefficients: finding the complementary solution $y_c$ and a particular solution $y_p$. Because it is linear, adding them will result in all possible solutions; $y = y_c + y_p$.

## Solving

Most problems will consist of being given an equation (we will assume it is nonhomogeneous) and some initial conditions.

1. Find the complementary solution.
   1. Make the equation homogeneous by setting $g(t)=0$.
   2. Create the characteristic equation.
   3. Find the solutions of $r$---it is usually most clear to factorize the characteristic equation as best as possible. Remember the difference of squares rule.
   4. From the solutions of $r$, create the general form for the complementary solution.
   5. Plug in the initial conditions to find the unknown coefficients.
2. Find a particular solution.
   1. Ansatz a form for the particular solution using the [method of undetermined coefficients]({% post_url 2025-05-12-undetermined-coefficients %}). Remember that if you find the same term in the Ansatz as in the complementary solution, you should multiply the term by $t$.
   2. Substitute the form of the particular solution into the original equation.
   3. Use the initial conditions to solve for the unknown coefficients.
3. Add the complementary solution and particular solution to get the final solution.
