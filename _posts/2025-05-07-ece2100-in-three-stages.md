---
layout: post
title: ECE 2100 in Three Stages
tags: ece ece2100
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="May 7, 2025, 4:21 PM" subject="ECE 2100 in Three Stages" %}

This is everything I've learned from taking ECE 2100---Intro to Circuits.

## Stage 1 - DC Circuit Analysis

The basic idea in this stage is that you have limited information on some DC circuit and you must use the information you have to find some other values---often the current through a certain area, a voltage, or creating some equivalent circuit.

- [Basic Laws in Circuits]
- [Simplification]
- [Voltage and Current Division]
- [Analysis Methods - NVM and MCM]
- [Dependent Sources]

## Stage 2 - Intro to AC Circuits

Now we consider that current changes with time.

- [Capacitors and Inductors]({% post_url 2025-04-01-capacitors-and-inductors %})
- [RLC Circuits]({% post_url 2025-04-02-rlc-circuits %})

## Stage 3 - Thinking Beyond Time

Kirchhoff's laws remain true when capacitors and inductors are used. However, in the time domain, they are differential equations that can be incredibly difficult to solve. Luckily, with transforms, we can convert our functions to another domain, use the traditional methods of circuit analysis, and convert them back to have the correct solutions.

- [Phasors]({% post_url 2025-04-01-phasors %})
- [Laplace Transform]
- [Fourier Transform]
- [The Transfer Function]
- [Convolutions]
- [Designing Filters]({% post_url 2025-05-08-designing-filters %})
