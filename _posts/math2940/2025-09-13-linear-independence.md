---
layout: post
title: Linear Independence
tags: math math2940
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="September 13, 2025, 4:44 PM" subject="Linear Independence" %}

## Linearly Independent Vectors

A set of linearly independent vectors only have the trivial solution.

$$ x_1\vec v_1 + x_2\vec v_2 + \cdots + x_n\vec v_n = \vec 0 $$

In a coefficient matrix, this corresponds to having a pivot in every column and this no free variables leaving only the trivial solution.

## Linearly Dependent Vectors

Linearly dependent vectors have at least one vector which can be expressed as a combination of the other vectors. This leads to at least one free variable. Geometrically, it means the other vectors span some space and there is an additional vector on the vector space already spanned.

Consider a matrix with a column corresponding to a free variable (it is not a pivot column). The columns to the left of the free variable are the columns that the dependent vector depends on. In other words, every column without a pivot depends on the preceding columns.
