---
layout: post
title: Laplace Transform
tags: ece ece2100
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="May 8, 2025, 3:16 PM" subject="Laplace Transform" %}

With the Laplace transform, you can convert an AC circuit to the s domain. In the s domain, you can solve the circuit using traditional circuit analysis techniques like resistor simplification, NVM, and MCM. Then, just convert back the time domain.

The definition of the Laplace transform is as follows:

$$ L\{f(t)\} = \int_{0}^{\infty}f(t)e^{-st}\;dt $$

The good news is you often will not need to use this equation. Instead, you can use a table to make conversions.

## Common Laplace Conversions

## Partial Fractions

Often, your equation in the s domain will not be the correct form to use the table. With partial fractions, you can rework the equation to something that works with the table.
