---
layout: post
title: Diagonalization
tags: math math2940
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="November 13, 2025, 5:30 PM" subject="Diagonalization" %}

The steps to diagonalize a matrix are as follows:

1. Find the eigenvalues. You can do this with $\text{det}(A-\lambda I) = \vec 0$. Find the characteristic matrix, find the equation for the determinant, set it to zero. Values of $\lambda$ where the determinant is zero are eigenvalues.
2. Find eigenvectors. Do this by plugging in each eigenvalue at a time as $\lambda$ and setting it as a homogeneous system---$A-\lambda_i I = \vec 0$. There should be a free variable and put into parametric form to get the eigenvector.
3. The matrix $D$ should have the eigenvalues along the diagonal and zeros everywhere else. The matrix $P$ should have the corresponding eigenvectors as the columns for each of the eigenvalues in $D$.
4. $A = PDP^{-1}$
