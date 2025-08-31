---
layout: post
title: Measures of Central Tendency
tags: ece ece2720
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="August 31, 2025, 9:49 AM" subject="Measures of Central Tendency" %}

There are three main measures of central tendency: mean, median, and mode. **Mean** is the sum of all data points divided by the number of data points. **Median** takes the middle point of an ordered data set (or the average of the middle two if there are an even number of data points). **Mode** is the most common data point.

## Continuous Mean Tracking

Say we have already calculated the mean for a set of data. If we get a new data point, is there a way to calculate the new mean without having to replug in past data points? Yes --- continuous mean tracking.

Where $m$ is the number of data points including the new value, $x_m$ is the value, and $\mu_m$ is the new mean that has the new value (meaning $\mu_{m-1}$ is the old mean).

$$ \mu_m = \mu_{m-1}\cdot\frac{m-1}{m}+\frac{x_m}{m} $$
