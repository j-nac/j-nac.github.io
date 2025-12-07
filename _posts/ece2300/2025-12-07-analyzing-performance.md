---
layout: post
title: Analyzing Performance
tags: ece ece2300
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="December 7, 2025, 3:30 PM" subject="Analyzing Performance" %}

We analyze performance through the equation

$$ \frac{\text{Time}}{\text{Program}} = \frac{\text{Instructions}}{\text{Program}} \times \frac{\text{Cycles}}{\text{Instruction}} \times \frac{\text{Time}}{\text{Cycles}} $$

- Instructions per program will depend on the source code, compiler, and ISA. Working with assembly, just count the number of lines in the program or in a loop if instructed to analyze a loop.
- Cycles per instruction depends on the microarchitecture and more specifically, the number of stages used and whether instructions are pipelined.
- Time per cycle also depends on the microarchitecture. For our purposes, it is typically just the critical path.

## Tradeoffs

A single-cycle processor will have one cycle per instruction which sounds good until you realize it will have a very long critical path. No one really makes single-cycle processors.

A multi-cycle processor will have more cycles per instruction and less time per cycle, but ultimately, it will have even worse execution time than the single-cycle. So why do multi-cycle at all? What we haven't considered is area---multi-cycle will have a drastically smaller footprint than single-cycle.

Pipelined processors will have similar area to single-cycle processors, slightly more than one cycle per instruction due to initially getting instructions to load in and hazards, and low time per cycle. This will usually mean pipelined processors have the fastest execution time.

What's best? We can plot the different options on the Pareto optimal curve. What's "best" depends on what we're optimizing for.
