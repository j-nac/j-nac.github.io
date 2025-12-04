---
layout: post
title: Steady State
tags: math math2940
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="November 13, 2025, 5:13 PM" subject="Steady State" %}

To find the steady state vector given a stochastic matrix:

1. Set the eigenvalue $\lambda$ to one.
2. Find the matrix $A-\lambda I$.
3. You may scale it as you please so long as you normalize afterwards.
4. Put it into the form $A-\lambda I = \vec 0$.
5. Find the free variables and put it in parameter form.
6. That should get you the steady state vector.
