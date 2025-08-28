---
layout: post
title: Damped Oscillations
tags: phys phys2214
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="August 28, 2025, 8:32 AM" subject="Damped Oscillations" %}

## Overview

The equation for motion of a damped oscillator is as follows:

$$ mx'' + bx' + kx = 0 $$

The $mx''$ term comes from $F=ma$, $bx'$ is from the damping where $b$ is the damping coefficient (I like to think about drag and how there is a greater drag force the faster the object moves), and $kx$ is from Hooke's Law. Putting it all together, we say that the motion is described as the combination of inertial force, damping force, and spring force which sum to zero.

Solving the differential equation, we can get the equation for position in time.

$$ z(t) = A_1e^{\alpha_1 t} + A_2e^{\alpha_2 t} $$

$A_1$ and $A_2$ are determined by initial conditions while $\alpha_1$ and $\alpha_2$ are the roots of

$$ \alpha = \frac{-b\pm\sqrt{b^2-4mk}}{2m} $$

## Underdamped

## Overdamped

## Critically Damped
