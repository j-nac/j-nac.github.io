---
layout: post
title: EM Waves In Different Materials
tags: ece ece3030
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="November 2, 2026, 11:34 AM" subject="EM Waves In Different Materials" %}

## Free Space

In free space, permittivity is $\epsilon_0$.

## Dielectrics

In a dielectric, permittivity is $\epsilon$ which is some real value.

## Conductors

In conductors, permittivity depends on frequency. In a perfect conductor, permittivity is imaginary.

A "good" conductor is defined as

$$ \frac{\sigma}{\omega\epsilon} >> 1 $$

## Lossy Dielectrics and Bad Conductors

In a lossy dielectric, which can also be considered a bad conductor, permittivity is complex.

$$ \epsilon(1-j\frac{\sigma}{\omega\epsilon}) $$

$k$ is also complex

$$ k = k' - jk'' $$

$$ \tilde E(\vec r) = \hat x E_0e^{-jkz}=\hat x E_0e^{-jk'z}e^{-k''z} $$

The real part of the exponent is responsible for the wave decaying. Physically, the decay is due to bound charges "rubbing" against each other and losing energy to heat.

## Plasma

In plasma, the charges are free to move around and thus we don't have the decay that a lossy dielectric has.

## Relations

| Condition | Material |
| --- | --- |
| $\epsilon=\epsilon_0$ | Free space |
| $\epsilon$ is real | Dielectric |
| $\epsilon$ is imaginary | Conductor |
| $\epsilon$ is complex | Lossy dielectric or bad conductor |
