---
layout: post
title: Potential Buffer Overflows
tags: cybersecurity
---

{% include mailinfo.html from="Jakob Nacanaynay <jnac8080@gmail.com>" to="You <anyone@out.there>" date="May 30, 2025, 1:58 AM" subject="Potential Buffer Overflows" %}

The following lines of code involve memory-unsafe functions that are vulnerable to buffer overflows:

- `gets(buffer);` for ANY size buffer since it has no checks.
- `scanf("%s", &buffer);` again for any size buffer.
- `strcpy(dest, src);` when the `dest` buffer is smaller than the `src` buffer.

The function `strncpy()` can also be dangerous by not terminating long strings with a null byte.

Due to programmer error, the following functions can also be vulnerable to buffer overflows:

- `fgets(buffer, n, stdin);` when `n` is larger than `buffer`. Normally, you should set `n` to `sizeof(buffer)`.
- `read(fd, buffer n);` again when `n` is larger than `buffer`.
