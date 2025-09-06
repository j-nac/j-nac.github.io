---
layout: post
title: Digital CMOS Circuits
tags: ece ece2300
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="September 6, 2025, 2:50 PM" subject="Digital CMOS Circuits" %}

Digital CMOS Circuits are circuits that process logic using NMOS and PMOS transistors. Here are some rules for how they work:

- The circuit is divided into a pull-up network that uses exclusively PMOS transistors and a pull-down network of exclusively NMOS transistors.
- The number of PMOS and NMOS transistors are always equal.
- There should never be a direct path between Vdd and ground.
- The output should never be floating (Z). The output should always be connected to either Vdd or ground.

## Duality

The pull-down and pull-up networks are duals of each other. If you see NMOS transistors in parallel in the pull-down network, you should have PMOS transistors in series in the pull-up network.

You can apply the rules hierarchically to subnets.
