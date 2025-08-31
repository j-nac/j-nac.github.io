---
layout: post
title: Transformers
tags: ece ece2100
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="April 2, 2025, 2:29 PM" subject="Transformers" %}

Transformers allow for stepping up voltage in circuits. Physically, they consist of two coils, a primary and secondary, wound around a core. Theoretically, they are two highly-coupled inductors. The primary circuit has the voltage source while the secondary circuit has a load. Here are some useful equations:

$$  M = k\sqrt{L_1L_2} $$

$$ Z_{11} = \text{sum of impedances in the primary circuit} $$

$$ Z_{22} = \text{sum of impedances in the secondary circuit} $$

$$ Z_R = \frac{\omega^2M^2}{|Z_{22}|^2}Z_{22}^* $$

The asterisk indicates the complex conjugate.

$Z_R$ is the reflected impedance, impedance caused by the coupling of the inductors. Thus, the actual impedance by the primary terminals is not just $Z_{11}$ (the self impedance) but $Z_{11}+Z_R$.

One may reason from the equations that when the primary circuit has higher inductance than the secondary circuit, voltage steps down and when the the secondary circuit has higher inductance than the primary, voltage will step up. Higher relative inductance $\Rightarrow$ higher relative impedance $\Rightarrow$ higher voltage.

## Ideal Transformers
