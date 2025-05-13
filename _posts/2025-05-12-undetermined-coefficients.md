---
layout: post
title: Undetermined Coefficients
---

{% include mailinfo.html from="Jakob Nacanaynay <jnac8080@gmail.com>" to="You <anyone@out.there>" date="May 12, 2025, 11:28 AM" subject="Undetermined Coefficients" %}

The method of undetermined coefficients involves creating an appropriate Ansatz to solve a nonhomogeneous differential equation.

## Method

### Exponential Functions

Keep the constant coefficient in the exponential.

$e^{\alpha t} \Rightarrow Ae^{\alpha t}$

### Trigonometric functions

For both sine and cosine functions, keep the coefficient inside the function but make sure to create both a sine and cosine term.

$\cos(\alpha t) \Rightarrow A\cos(\alpha t) + B\sin(\alpha t)$

### Polynomials

Step down from the highest degree.

$t^3 \Rightarrow At^3 + Bt^2 + Ct + D$

### Other Considerations

- If there are multiple summands, address each individually. Ex. $ t^2 + \sin(5t) \Rightarrow At^2+Bt+C + D\sin(5t) + E\cos(5t) $
- If a term matches with a term in the complementary solution, multiply that term by $t$ until it no longer matches.
- If two functions multiply, create every combination. Ex. $ t^3\cos(3t) \Rightarrow (At^3 + Bt^2 + Ct + D)(\cos(3t) + \sin(3t)) $
