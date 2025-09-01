---
layout: post
title: Echelon Form
tags: math math2940
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="August 31, 2025, 7:38 PM" subject="Echelon Form" %}

## Echelon Form

There are three requirements for a matrix to be in echelon form.

1. Rows of zeros are at the bottom.
2. There is a leading entry in a column right of the row above.
3. Every entry below the leading entry is zero.

## Reduced Echelon Form

There are two more requirements for a matrix in echelon form to be in reduced echelon form.

1. Each leading entry has the value one.
2. Every value above a leading entry is zero.

What's interesting about the reduced echelon form is that there is a unique REF for every solution set. Thus, equivalence of matrices can be determined by checking if their REFs are identical.

## Pivots

A pivot position is a location that corresponds to a leading one in the REF (regardless of whether the matrix actually has a leading entry of the value one). A pivot column is a column with a pivot position.

## Row Reduction

We can take matrices and convert them to echelon and reduced echelon form via a series of EROs. To convert a matrix to echelon form, take the leftmost pivot position, perform operations until all values below are zero, and then move to the next leading entry over. To then take it to reduced echelon form, start with the rightmost pivot position and do the same process for zeros above.
