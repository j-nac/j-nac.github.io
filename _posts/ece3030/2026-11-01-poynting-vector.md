---
layout: post
title: Poynting Vector
tags: ece ece3030
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="November 1, 2026, 9:06 AM" subject="Poynting Vector" %}

## What is the Poynting Vector

The Poynting Vector represents the energy flux i.e. how much power is flowing through an area and in what direction.

There are two calculations of the Poynting vector: (1) time-instant where it is calculated for a specific instance in time and (2) time-averaged where it is averaged over time.

For time-instant power flow,

$$ \vec S(\vec r, t) = \vec E(\vec r, t) \times \vec H(\vec r, t) $$

For time-averaged power flow,

$$ \tilde S(\vec r) = \frac{1}{2}\tilde E(\vec r) \times \tilde H^*(\vec r) $$

And

$$ \langle\tilde S(\vec r)\rangle = \Re\left\{\tilde S(\vec r)\right\} $$
