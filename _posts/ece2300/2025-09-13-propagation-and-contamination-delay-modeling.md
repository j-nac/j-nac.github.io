---
layout: post
title: Propagation and Contamination Delay Modeling
tags: ece ece2300
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="September 13, 2025, 3:41 PM" subject="Propagation and Contamination Delay Modeling" %}

## Propagation and Contamination

**Propagation delay** is the maximum time from input change to the output reaching its final value.

**Contamination delay** is the minimum time from input change to the output having any changes.

Think of propagation is the maximum possible time and contamination as the minimum possible time.

Write out the propagation delays first and then the contamination delays, highlighting the time in between as the possible delay region. Understand that propagation delays stack on each other, so delay regions should widen for longer paths with more input changes.

## Paths

The **critical path** is the longest possible path through a gate-level network using propagation delay times while the **short path** is the shortest possible path using contamination delay times.

To find the delay times for paths, add up delays associated with each gate along the path.
