---
layout: post
title: Waves at an Interface
tags: ece ece3030
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="November 2, 2026, 11:34 AM" subject="Waves at an Interface" %}

## The Setup

Imagine a planar EM wave traveling in one dielectric medium of some permittivity $\epsilon_1$ and into another dielectric medium of $\epsilon_2$. What happens?

Just like with a physical wave at an interface, there will be an incident (original) wave, transmitted wave that continues traveling in the second medium, and a reflected wave that seems to bounce off the interface and back through the first medium in the opposite direction.

```txt
    Medium 1            x       Medium 2
                        ^
    -------->           |       ------>
    incident wave       |       transmitted wave
                        |
    <--------           |
    reflected wave      |
                        |
----------------------y(.)--------------------------> z
```

The arrows show the direction of propagation each wave $\hat k$. Notice that the waves are propagating along $\hat z$. The coordinate system has $\hat y$ pointing out of the page.

What are the properties of each wave?

## Incident Wave

We'll say that our incident wave $\tilde E$ is

$$ \tilde E_i(\vec r) = \hat x E_ie^{-jk_iz} $$

Which would mean $\tilde H$ is

$$ \tilde H_i(\vec r) = \hat y \frac{E_i}{\eta_i}e^{-jk_iz} $$

## Reflected Wave

$$ \tilde E_r(\vec r) = \hat x E_re^{jk_iz} $$

$$ \tilde H_r(\vec r) = -\hat y \frac{E_r}{\eta_i}e^{jk_iz} $$

## Transmitted Wave

$$ \tilde E_t(\vec r) = \hat x E_te^{-jk_tz} $$

$$ \tilde H_t(\vec r) = \hat y \frac{E_t}{\eta_t}e^{-jk_tz} $$

## What Changed?

- All the waves have different amplitudes $E_i$, $E_r$, and $E_t$
- The reflected wave is traveling in the opposite direction from the incident wave (hence the exponent is positive)
- The transmitted wave uses $k_t$ and $\eta_t$ which is due to being in a different medium
- The reflected wave's $\tilde H$ is flipped to obey the RHR in accordance with propagation direction flipping

One notable thing that stayed the same is that from the incident to transmitted wave, the polarization is the same.

## Relations

Now we have some unknown quantities. We can use boundary conditions to help reason out what their relations should be.

If

$$ \tilde E_\text{left} = \tilde E_\text{right} $$

at the interface, then

$$ \tilde E_i(\vec r) + \tilde E_r(\vec r) = \tilde E_t(\vec r) $$

$$ \hat x E_ie^{-jk_iz} + \hat x E_re^{jk_iz} = \hat x E_te^{-jk_tz} $$

Which is evaluated at $z=0$ so we get

$$ E_i + E_r = E_t $$

Similarly for the magnetic field,

$$ \frac{E_i}{\eta_i} - \frac{E_r}{\eta_i} = \frac{E_t}{\eta_t} $$

The subscript $i$ and $t$ is from the different permittivities of the mediums the respective wave is moving through.

As a helpful reference,

$$ \eta_i = \sqrt{\frac{\mu_0}{\epsilon_i}} $$

Some resources will use $\eta_1$ and $\eta_2$ for $\eta_i$ and $\eta_t$ respectively (thinking in terms of the medium).

The transmission and reflection coefficients describe some more useful relations.

$$ T = \frac{E_t}{E_i}=\frac{2\eta_t}{\eta_t + \eta_i} $$

$$ R = \Gamma = \frac{E_r}{E_i} = \frac{\eta_t - \eta_i}{\eta_t + \eta_i} $$
