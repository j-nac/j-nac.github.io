---
layout: post
title: Damped Oscillations
tags: phys phys2214
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="August 28, 2025, 8:32 AM" subject="Damped Oscillations" %}

## Overview

A damped oscillator has some sort of restoring force (like a spring) which causes oscillations and a damping force (like friction) which reduces the energy over time.

The equation for forces in a damped oscillator is as follows:

$$ mx'' + bx' + kx = 0 $$

The $mx''$ term comes from $F=ma$, $bx'$ is from the damping where $b$ is the damping coefficient (I like to think about drag and how there is a greater drag force the faster the object moves), and $kx$ is from Hooke's Law. Putting it all together, we say that the motion is described as the combination of inertial force, damping force, and spring force which sum to zero.

Solving the differential equation, we can get the equation for position in time.

$$ z(t) = A_1e^{\alpha_1 t} + A_2e^{\alpha_2 t} $$

$A_1$ and $A_2$ are determined by initial conditions while $\alpha_1$ and $\alpha_2$ are the roots of

$$ \alpha = \frac{-b\pm\sqrt{b^2-4mk}}{2m} $$

## Underdamped

An underdamped system is characterized by having oscillatory motion. It occurs when the solution is complex: $b^2<4mk$. Position is described with the equation

$$ x(t) = Ae^{-t/\tau_A}\cos(\omega t + \phi) + x_\text{eq} $$

Where the oscillation frequency is $\omega = \sqrt{\omega_0^2 - \frac{1}{\tau_A^2}}$ and the amplitude decay time is $\tau_A = \frac{2m}{b}$. As a reminder, the natural frequency is $\omega_0=\sqrt{\frac{k}{m}}$.

## Overdamped

An overdamped system will not oscillate and will instead have position quickly decay to equilibrium. It occurs when $b^2>4mk$. Position is described with the equation

$$ x(t) = A_1e^{\alpha_1t} + A_2e^{\alpha_2t} $$

Where $A_1$ and $A_2$ comes from the initial conditions.

This is just like the general equation, though we have approximations for $\alpha$. $\alpha_1\approx-\frac{b}{m}$ and $\alpha_2\approx-\frac{k}{b}$.

We also have an approximation for the position.

$$ x(t)\approx Ae^{-t/\tau_{A*}} $$

Amplitude decay time is different for overdamped systems as it is $\tau_{A*}\approx\frac{b}{k}$.

## Critically Damped

A critically damped system occurs when $b^2=4mk$. It does not exhibit oscillatory motion and will have the fastest possible decay.

$$ x(t) = (A+Bt)e^{-t/\tau_A} $$

Amplutide decay time is the same as in underdamped systems.

$$ \tau_A = \frac{2m}{b} = \frac{T_0}{2\pi} $$

## Equations

| System | Condition | Position | Amplitude Decay Time | Other |
| --- | --- | --- | --- | --- |
| Underdamped | $b^2 < 4mk$ | $x(t) = Ae^{-t/\tau_A}\cos(\omega t + \phi) + x_\text{eq}$ | $\tau_A = \frac{2m}{b}$ | - |
| Overdamped | $b^2 > 4mk$ | $x(t) = A_1e^{\alpha_1t} + A_2e^{\alpha_2t}$ | $\tau_{A*}\approx\frac{b}{k}$ | $\alpha_1\approx-\frac{b}{m}$ $\alpha_2\approx-\frac{k}{b}$ |
| Critically Damped | $b^2 = 4mk$ | $x(t) = (A+Bt)e^{-t/\tau_A}$ | $\tau_A = \frac{2m}{b} = \frac{T_0}{2\pi}$ | - |
