---
layout: post
title: Change of Coordinates
tags: math math2940
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="November 13, 2025, 5:45 PM" subject="Change of Coordinates" %}

$P_B$ will take a vector in $B$ coordinates $[\vec x]_B$ and change it to standard coordinates. If you want to take a vector in standard coordinates and convert it to $B$ coordinates, you need to find $P_B^{-1}\vec x = [\vec x]_B$.

To help with remembering this, the letter in the bottom right of $P$ is where it's *from*, and it is implied to go to standard coordinates if not specified. If you want to reverse it, take the inverse.

Consider $P_{C\leftarrow B}$. We want to go from $B$ to $C$. To do this, we can start by taking our vector in $B$ and converting it to standard coordinates. Now we need to take it from standard coordinates to $C$, so we need to multiply it by $P_C^{-1}$. All together, this gets $P_{C\leftarrow B} = P_C^{-1}P_B$.
