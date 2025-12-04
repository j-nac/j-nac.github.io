---
layout: post
title: Coding Review
tags: ece ece2300
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="November 20, 2025, 10:59 PM" subject="Coding Review" %}

## Useful Operators

The tertiary operator allows for a one line if-else value assignment.
`assign a = (condition) ? true_value : else_value;`

## Always

Use `always_comb` for combinational logic in RTL and `always_ff` for sequential logic in RTL. With `always_comb`, you would set `a` equal to `b` with `a = b`. The value assignment would be instantaneous (as it is combinational).

With `always_ff`, one would assign with `a <= b` which helps to indicate that the change is not instantaneous but rather after a clock cycle.

## XPROP

Use `` `ECE2300_SEQ_XPROP(value, $isunknown(conditional_on));`` for X-propagation handling. Think carefully about the conditions where an unknown value should trigger another value to be an x.

## RTL Flip Flops

```verilog
always_ff @(posedge clk) begin
    q <= d;
end
```

With reset:

```verilog
always_ff @(posedge clk) begin
    q <= (d & !rst);
end
```

With reset and enable:

```verilog
always_ff @(posedge clk) begin
    if (rst)
        q <= 1'b0;
    else if (en)
        q <= d;
    `ECE2300_SEQ_XPROP(q, $isunknown(rst));
    `ECE2300_SEQ_XPROP(q, (rst == 0) && $isunknown(en));
end
```
