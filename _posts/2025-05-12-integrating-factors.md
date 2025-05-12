---
layout: post
title: Integrating Factors
---

{% include mailinfo.html from="Jakob Nacanaynay <jnac8080@gmail.com>" to="You <anyone@out.there>" date="May 12, 2025, 4:33 PM" subject="Integrating Factors" %}

The integrating factor method helps to undo the product rule.

Here is my method for solving ODEs with an integrating factor.

1. Find an equation of the form below (or arrange it to be of this form) $\frac{dy}{dt} + p(t)y = g(t)$.
2. The integrating factor will be $\mu = e^{\int p(t)\;dt}$.
3. You can now consider $\frac{d}{dt}(\mu y) = \mu g$.
4. Integrate and solve for $y$.
