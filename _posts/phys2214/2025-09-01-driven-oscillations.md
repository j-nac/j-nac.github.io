---
layout: post
title: Driven Oscillations
tags: phys phys2214
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="September 1, 2025, 5:36 PM" subject="Driven Oscillations" %}

In a driven oscillation, there is a sinusoidal force applied. At steady state, the response will match the drive frequency. Since we know the frequency will match the drive frequency at steady state, we describe the response with just amplitude and phase shift.

## Resonance

The resonant frequency ($\omega_r$) is the frequency where the response amplitude is the greatest.

The width at half energy ($\Delta\omega$) is

$$ \Delta\omega = \frac{1}{\tau_E}=\frac{2}{\tau_A} $$

The quality factor is

$$ Q = \frac{\omega_r}{\Delta\omega} $$

A larger $Q$ indicates a narrow and high spike in amplitude at resonance while a smaller $Q$ indicates a shorter spike with a greater width in frequencies at half or more energy. A larger $Q$ can also mean less damping.

## Analysis

### Low Driving Frequency

At low driving frequencies $\omega_D << \omega_0$, the response is as if there is no damping or inertia (mass). It will essentially just match the driving oscillation.

The driving frequency and frequency of the object will be in phase ($\phi=0$).

$x(t)$ is in phase with $F_D(t)$.

### High Driving Frequency

At high driving frequencies $\omega_D >> \omega_0$, the response depends totally on inertia while the damping and spring forces become irrelevant.

The driving frequency and the frequency of the object will be exactly out of phase *($\phi=-\pi$) with their movements canceling each other out.

$-x(t)$ and $a(t)$ are in phase with $F_D(t)$.

### Equal Driving Frequency

When drive frequency is close to the natural frequency $\omega_D = \omega_0$, the inertial and spring forces cancel leaving the response to be determined by the damping force.

The phase will be about $\phi=-\frac{\pi}{2}$. This will be just perfect for the driving force to push the mass the greater and greater amplitudes achieving resonance.

$v(t)$ is in phase with $F_D(t)$.

## Energy

- At steady state, the energy from the driving force matches the energy lost to damping. (This makes sense because at steady state, net energy should be zero.)
- An underdamped system at resonance draw maximum power from the driving force.
