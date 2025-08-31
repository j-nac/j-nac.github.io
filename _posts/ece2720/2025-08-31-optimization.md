---
layout: post
title: Optimization
tags: ece ece2720
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="August 31, 2025, 10:17 AM" subject="Optimization" %}

Many problems in data science will relate to optimization to find the minimum. We focus on the minimum because most problems are about reducing some error value and that maximization problems can always be flipped to become minimization problems.

## Definitions

### Boundedness

A function $f$ is bounded from below if for some $c\in\mathbb{R}$, $f(\bar{x})\geq c$ for all $\bar{x}$.

In simple terms, we know a set of values are bounded below of all of them are greater or equal than some real number. We can prove by contradiction that a set is not bounded if we can prove at least one of the values is less than the bounds.

### Global Minimum

A global minimum of $f$ is $\bar{x}^\ast$ such that $f(\bar{x}^\ast)\leq f(\bar{x})$ for all $\bar{x}$.

In simple terms, the global minimum of a set is a value in a set where all other values are greater than or equal to it.

Do not confuse this with boundedness. A global minimum MUST be in the data set when a bound does not have to be. For example, $e^x$ does not have a global minimum since it always approaches but never reaches zero. Zero is therefore a lower bound but not a global minimum of the function.

A bounded, continuous, limited domain function will have at least one global minimum.

### Local Minimum

A point $\bar{x}^\ast$ is a local minimum of $f$ if $f(\bar{x}^\ast)\leq f(\bar{x})$ for all $\bar{x}$ *near* $\bar{x}^\ast$.

Being near is defined as $\|\|\bar{x}-\bar{x}^\ast\|\| < \epsilon$ for some small value $\epsilon>0$.

The distance between points can be calculated for $n$ dimensions with the Euclidean distance formula

$$ d(p,q) = \sqrt{(p_1-q_1)^2 + (p_2-q_2)^2 + \cdots + (p_n-q_n)^2} $$

## Analytical Optimization

### Sum of Squares

The sum of squares, or expressions that can be put into the form of a sum of squares, must always be greater than or equal to zero.

For very convenient equations, we can use this to determine the global minimum of a function is zero.

### Derivatives

We can find critical points by taking the first derivative and seeing where it equals zero. We can then use the second derivative test to determine local minima and maxima. We can compare the points to find the global minimum.

## Problems with Analytical Optimization

1. $f$ does not have a nice form
2. $n$ is very large
3. We have questionable access to derivatives
