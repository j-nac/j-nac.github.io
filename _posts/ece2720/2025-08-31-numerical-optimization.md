---
layout: post
title: Numerical Optimization
tags: ece ece2720
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="August 31, 2025, 10:50 AM" subject="Numerical Optimization" %}

Numerical optimization uses approximations to optimize systems when analytical methods to find the absolute best solution is not practical.

## Brute Force

Brute force seeks to minimize a function by guessing inputs. An advantage of the brute force technique is that it makes no assumptions about the function; the function does not need to be differentiable nor continuous. Brute forcing is also not complex.

The main problem with brute forcing is the curse of dimensionality. As data sets increase in size, so too does the number of possible things to brute force.

## Iterative Methods

Iterative methods try to improve upon existing inputs. Conceptually, it is very simple.

1. Start at a random point $x_0$
2. Look around to find a point $x_1$ where $f(c_1)<f(x_0)$
3. REPEAT

## Gradient Descent

For continuous functions, gradient descent can be used to minimize the function. It involves finding the gradient vector and then moving in opposite direction. This is often conceptualized as a ball rolling down a hill.

$$ \bar x_1 = \bar x_0 - \beta \cdot \nabla f(\bar x) $$

Where $\beta$ is some positive.

## Taylor Series

A Taylor series is used to approximate functions as the sum of polynomials of increasing order.

$$ f(x+\Delta)=f(x)+\Delta\cdot f'(x) + \frac{\Delta^2}{2!}\cdot f''(x) + \cdots + \frac{\Delta^n}{n!}\cdot f^{(n)}(x) $$

A first order Taylor series is a line and a second order Taylor series is a quadratic.
