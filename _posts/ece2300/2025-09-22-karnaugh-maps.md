---
layout: post
title: Karnaugh Maps
tags: ece ece2300
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="September 22, 2025, 1:33 PM" subject="Karnaugh Maps" %}

K-maps are a technique write out truth tables in such a way that it makes it easy to find optimizations.

## How to Perform a K-map Optimization

Step 1: Make an empty k-map appropriate for the number of inputs. For three inputs, the table should be like this:

| C\AB | 00 | 01 | 11 | 10 |
| 0 | | | | |
| 1 | | | | |

Four inputs:

| CD\AB | 00 | 01 | 11 | 10 |
| 00 | | | | |
| 01 | | | | |
| 11 | | | | |
| 11 | | | | |

For five inputs, imagine a 3D k-map where you stack two four-input k-maps.

Step 2: Fill the k-map with the outputs as in the truth table.

Step 3: Draw bubbles around the 1s.

Step 4: Create your boolean algebra sum of products. Each bubble should correspond to an implicant (product) which you sum. Look for what literals are redundant in each implicant and remove.

## Rules and Tips

- You can only create bubbles in powers of two.
- For three-input k-maps, you can write bubbles that loop around horizontally.
- For four-input k-maps you can loop around both horizontally and vertically and even write bubbles that cover the corners.
- Bubbles may overlap.
- If you have spaces on the truth table where it doesn't matter whether it is 0 or 1 (X), you can draw bubbles around Xs as you please.
- Every bubble is an implicant.
- The larger the bubble, the fewer literals in the corresponding implicant.
