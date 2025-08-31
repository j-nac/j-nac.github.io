---
layout: post
title: Designing Filters
tags: ece ece2100
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="May 8, 2025, 1:32 PM" subject="Designing Filters" %}

## What are Filters?

Filters in circuits will allow signals at some frequencies and block signals at other frequencies. Fundamentally, they work by taking advantage of the properties of capacitors and inductors.

Recall the frequency domain impedances of a capacitor and inductor:

$$ Z_C = \frac{-j}{\omega C} $$

$$ Z_L = j \omega L $$

At high frequencies, impedance will be high in inductors and low for capacitors and the opposite for low frequencies.

Three basic types of filters are low-pass which allows signals at low frequencies while blocking high frequencies, high-pass which allows high frequencies, and bandpass filters which allow frequencies within a certian band. You can make a bandpass filter by combining a low-pass and high-pass filter together, cascading them (having the output of one be the input to the other).

## Terminology

The cutoff frequency $\omega_c$ is the frequency that divides when a filter will respond with half the maximum average power. This occurs when gain is $\frac{1}{\sqrt{t}}$

Bandwidth is the range of frequency when a filter will respond with above the cutoff frequency.

The quality factor...

## Passive Filters

Note: generally speaking, inductors are avoided when making filters due to the possibility of interference.

Passive filters use only passive components.

### Passive Low-Pass Filter

The capacitor acts like a relief valve. At high frequencies, its impedance lowers and the current is redirected through the capacitor rather than to the output.

### Passive High-Pass Filter

## Active Filters

### Active Low-Pass Filter

### Active High-Pass Filter
