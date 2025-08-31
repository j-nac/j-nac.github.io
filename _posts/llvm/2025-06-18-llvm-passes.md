---
layout: post
title: LLVM Passes
tags: compilers llvm
---

{% include mailinfo.html from="Jakob Nacanaynay <jnac8080@gmail.com>" to="You <anyone@out.there>" date="June 18, 2025, 5:11 PM" subject="LLVM Passes" %}

## Big Idea

LLVM passes are operations performed between the frontend and the backend, typically for optimization. The advantage of doing operations in this space is that because it lies between the frontend and backend, it can operate on a range of languages and compile to a range of architectures.

## Types of Passes

The two main types of passes are **analysis** passes which only collect information and do not change the IR while **transformation** passes change the IR. There are also different levels of scope passes can be conducted at which are as follows: loop, function, and module.

## Example Analysis Passes

| Analysis | Description |
| --- | --- |
| Range Analysis | Will finds the range of values a variable may assume |
| Scalar Evolution | Can determine how a variable value evolves in a loop statically |
| Dominator Tree | Will make a data structure that will tell you what parts of code must run before other parts |

## Example Transformation Passes

| Analysis | Description |
| --- | --- |
| Dead Code Elimination | Finds parts of code that cannot logically execute and removes them |
| Constant Propagation | Can evaluate expressions with constants |

## Sources

- [Introduction to LLVM Passes by CompilersLab](https://youtu.be/GiffRLk8nkc)
