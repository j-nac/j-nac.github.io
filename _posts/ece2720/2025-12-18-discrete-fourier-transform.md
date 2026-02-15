---
layout: post
title: Discrete Fourier Transform
tags: ece ece2720
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="December 18, 2025, 8:04 PM" subject="Discrete Fourier Transform" %}

The Discrete Fourier Transform (DFT) is commonly used to take signals in the time domain and convert them to the frequency domain. This may make important information in data more apparent. For example, performing a DFT on an audio signal can tell you what frequencies are common in the audio signal and get some idea about pitch.

## Real DFT

The time-domain signal is described as vector $\vec x$ with length $d$. We also have vectors $\vec c$ and $\vec s$ to describe our sine and cosine coefficients.

$$ \vec x[l] = \frac{\vec c[0]}{\sqrt{d}} + \sum_{k=1}^{\lfloor(d-1)/2\rfloor} $$

## Complex DFT

## Inverse Complex DFT
