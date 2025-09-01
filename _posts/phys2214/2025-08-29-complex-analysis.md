---
layout: post
title: Complex Analysis
tags: phys phys2214
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="August 29, 2025, 7:49 PM" subject="Complex Analysis" %}

## Basic Operations

Consider complex numbers $z_1 = x_1+iy_1$ and $z_2 = x_2+iy_2$.

For addition and subtraction, simply combine like terms.

Addition: $z_1 + z_2 = x_1+x_2 + i(y_1+y_2)$

Subtraction: $z_1 - z_2 = x_1-x_2 + i(y_1-y_2)$

Multiplication and division are a bit more *complex*. I will provide the equations for now, but a better explanation for why (involving geometry) will be provided when considering polar form and phasors.

Multiplication: $z_1 \cdot z_2 = (x_1x_2-y_1y_2)+i(x_1y_2+y_1x_2)$

Division:

$$ \frac{z_1}{z_2} = \frac{(x_1x_2+y_1y_2)+i(y_1x_2-x_1y_2)}{x_2^2+y_2^2} $$

## Complex Conjugate

The complex conjugate is indicated by an asterisk and can be found by flipping the sign of the imaginary part of the complex number. If $z = x_iy$ then $z^\ast = x - iy$.

Here are some other useful properties.

$$ z\cdot z^\ast = x^2+y^2 = |z|^2  $$

$$ \frac{1}{2}(z+z^\ast) = \Re(z) $$

$$ \frac{1}{2}(z-z^\ast) = \Im(z) $$

$$ r = |z| = \sqrt{zz^\ast} = \sqrt{x^2+y^2} $$

## Polar Form

From Euler's formula, $e^{i\phi}=\cos(\phi)+i\sin(\phi)$. With some reasoning, we then find $z = re^{i\phi}$.

Thinking of complex numbers geometrically, we can imagine a plane with the real axis on the x and the imaginary axis on the y. The complex number is a vector with the tail at the origin and the head at its real and imaginary. Its length is $r$ and its angle is $\phi$. Multiplying has the effect of adding angles while dividing vectors has the effect of subtracting angles. Vectors can be added geometrically, tip to tail.

We can also have a complex function.

$$ z(t) = Ae^{i(\omega t + \phi)} \Rightarrow A\cos(\omega t + \phi) $$

## Properties

$$ (z_1\cdot z_2)^\ast = (z_1)^\ast\cdot(z_2)^\ast $$

$$ |z_1\cdot z_2| = |z_1|\cdot|z_2| $$
