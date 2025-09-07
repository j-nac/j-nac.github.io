---
layout: post
title: Optimization 2
tags: ece ece2720
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="September 7, 2025, 9:39 AM" subject="Optimization 2" %}

## Local Minimum

We have previously defined what a local minimum is. Now let's dive into the math.

In order to be a local minimum, $f'(x)$ must be zero and $f''(x)$ should be positive.

Consider the second order Taylor series approximation.

$$ f(x+\Delta) \approx f(x) + \Delta f'(x) + \frac{\Delta^2}{2!}f''(x) $$

$$ f(x+\Delta) \approx f(x) + \frac{\Delta^2}{2!}f''(x) $$

We see the second order term dominates and the first order term goes away.

## Critical Point

A point $\bar x^\ast$ is a critical point of $f$ if $\nabla f(\bar x^\ast)=0$. All local minima and maxima must be critical points.
