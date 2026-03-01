---
layout: post
title: Extrinsic Semiconductors
tags: ece ece3150
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="March 1, 2026, 4:32 PM" subject="Extrinsic Semiconductors" %}

## N-type

N-type materials are where a material is doped with donor impurities (a negative charge).

The concentration of donors is far greater than the intrinsic carrier concentration:

$$ N_D >> n_i $$

Electrons are the majority carriers while holes are in the minority:

$$ n_n\approx N_D\text{ (majority)} $$

$$ p_n\approx \frac{n_i^2}{N_D}\text{ (minority)} $$

Notice that we use a subscript $n$ to indicate that it is n-type.

## P-type

P-type materials are where a material is doped with acceptor impurities (a positive charge).

The concentration of acceptors is far greater than the intrinsic carrier concentration:

$$ N_A >> n_i $$

Holes are the majority carriers while electrons are in the minority:

$$ p_p\approx N_A\text{ (majority)} $$

$$ n_p\approx \frac{n_i^2}{N_A}\text{ (minority)} $$

## Approximations

Notice that many approximations can be used when the material is sufficiently doped. Be aware that at high temperatures, making approximations becomes less accurate.

## True Concentrations

More correct equations for concentrations are as follows:

$$ n = \frac{N_D-N_A}{2} +\sqrt{\left(\frac{N_D-N_A}{2}\right)^2+n_i^2} $$

$$ p = \frac{N_A-N_D}{2} +\sqrt{\left(\frac{N_A-N_D}{2}\right)^2+n_i^2} $$

## Doping Both Donors and Acceptors

If $N_D = N_A$, it will act as an intrinsic semiconductor where $n=p=n_i$.

If $N_D > N_A > > n_i$, ignore $n_i$.

$$ n_n = N_D-N_A $$

$$ p_n = \frac{n_i^2}{n_n} $$

If $N_A > N_D > > n_i$, ignore $n_i$.

$$ p_p = N_A-N_D $$

$$ n_p = \frac{n_i^2}{p_p} $$

Bear in mind that $np = n_i^2$ will remain true for lightly to moderately doped materials.
