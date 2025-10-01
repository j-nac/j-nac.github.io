---
layout: post
title: Carry-Select Adders
tags: ece ece2300
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="September 28, 2025, 5:12 PM" subject="Carry-Select Adders" %}

One issue with basic adders is that higher digits need to wait on the carry bit before computing sum.

Carry-select adders try to speed things up by computing both possibilities: if the carry bit is zero and if the carry bit is one. It then uses a MUX to select the correct output.

This is good for adding large numbers, splitting things into blocks. While it may be faster, a disadvantage is that it may use more area.
