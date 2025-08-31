---
layout: post
title: Convolutions
tags: ece ece2100
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="May 8, 2025, 2:08 PM" subject="Convolutions" %}

Convolutions are a way of combining signals (in this case, two continuous signals) resulting in some output signal of significance. In the case of circuits, convolutions are significant because the convolution of an input signal and transfer function in the time domain results in the output signal.

$$ x(t) * h(t) = y(t) $$

$$ X(s) H(s) = Y(s) $$

## Solving Convolutions

A common problem is performing the convolution of an input signal with a transfer function in the time domain. The basic equation for a convolution is shown below:

$$ y(t) = \int_{-\infty}^{\infty}x(\tau)h(t-\tau)\;d\tau $$

Alternatively, since convolutions are commutative:

$$ y(t) = \int_{-\infty}^{\infty}x(t-\tau)h(\tau)\;d\tau $$

This equation may seem daunting to compute. However, with some intuition and a method of solving, it isn't too bad.

### Graphing

Take a look at the convolution equation. You'll notice $t-\tau$. What this means graphically is that one function will be shifted left by $t$ and flipped over the y-axis due to the negative sign in front of $\tau$. This means that one function should be graphed flipped and shifted while the other should be graphed normally.

Graph both in two rows, aligning their $x=0$.

### Intuiting

Referring back to the convolution equation, the two graphs are somehow mutliplied and integrated together. Here is how you can visualize this: imagine the flipped graph starts are some value far away at negative infinity while the not flipped graph stays put. Slide the flipped graph rightwards towards the not flipped graph. This is changing the value of $t$ from negative to positive infinity. When the graphs intersect, the area that overlaps is the output value.

### Plot

There can be several points of interest during the sliding: when the graphs first meet, when one graph changes slope, or when the graphs stop intersecting. For each of these points of interest, plug in that value of $t$ into the convolution equation and plot the points.

### Connect the Dots

Use some intuition and connect the dots to get the output signal. Where two flat signals overlap, the output should be linear. Where a sloped and a flat signal meet, it should be exponential.
