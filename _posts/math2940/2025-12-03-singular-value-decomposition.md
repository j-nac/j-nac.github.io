---
layout: post
title: Singular Value Decomposition
tags: math math2940
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="December 3, 2025, 9:04 PM" subject="Singular Value Decomposition" %}

## Process

Singular value decomposition allows you to "diagonalize" a non-square matrix. Here are the steps:

1. Given the $m\times n$ matrix $A$, compute $A^\tau A$. You should get an $n\times n$ matrix that is symmetric. For convenience, we will let $B = A^\tau A$
2. Find the eigenvalues of $B$. Do this by following the same procedure as any other square matrix---find where the characteristic matrix $\text{det}(B-\lambda I)$ equals zero (subtract lambda from the main diagonal, combine, factor, and find at what values of lambda it is zero).
3. The singular values are the square roots of the eigenvalues from the last step.
4. We can now construct the first matrix for our solution $\Sigma$. $\Sigma$ will have the same dimensions as $A$ ($m\times n$). Put the singular values in descending order on the main diagonal and zeros everywhere else. If you have more singular values than can fit, that's ok.
5. We will now make the matrix $V$. It involves solving for $B = VDV^\tau$. The matrix D will have the eigenvalues ordered on the main diagonal and zeros everywhere else. For $V$, you need to find the orthonormal eigenvectors for each eigenvalue. To do so, we start with the normal process for finding eigenvectors (plugging in our eigenvalues into the characteristic matrix, row reducing, determining the free variables, and getting the parametric form). We then normalize the vector by dividing each value by the magnitude. The matrix $V$ will have the eigenvectors as the columns corresponding to the eigenvalues in $D$.
6. We must now find $U$. We can use $$ \vec u_i = \frac{1}{\sigma_i}A\vec v_i $$
7. Putting everything together, our final answer is $A=U\Sigma V^\tau$ where $U$, $\Sigma$, and $V$ are as computed.

## Example
