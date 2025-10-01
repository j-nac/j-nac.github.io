---
layout: post
title: Carry-Lookahead Adders
tags: ece ece2300
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="September 28, 2025, 5:18 PM" subject="Carry-Lookahead Adders" %}

Carry-lookahead adders also try to speed up addition by addressing the carry bit problem.

Carry-lookahead adders look at blocks at a time and determines if it generates a carry or propagates a carry. It generates a carry if it produces a carry regardless of input ($G_i=A_iB_i$). It propagates a carry if it will return a carry out if it receives a carry in ($P_i=A_i+B_i$).
