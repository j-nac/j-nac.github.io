---
layout: post
title: Ret2win Workflow
tags: cybersecurity
---

{% include mailinfo.html from="Jakob Nacanaynay <jnac8080@gmail.com>" to="You <anyone@out.there>" date="May 24, 2025, 10:00 AM" subject="Ret2Win Workflow" %}

## Security Measures

With [pwntools](https://docs.pwntools.com/en/stable/) installed, you can use `checksec ./<binary>` to find the instruction set and basic security measures enabled.

## Understanding the Program

1. **Determine functions of interest**. There may be a `win()` function which you need to run to get the flag and a separate `challenge()` function which you need to exploit. You can list out functions in GDB with `info functions` and look at the code with `disas <function>`. A more systematic approach is looking in the `main()` function and tracing all `call` instructions.
2. **Map out the stack frame**
   - It is essential to get a sense of what the stack will look like in order to precisely execute an attack. It may help to draw things out as you do this.
   - The stack frame will usually start by defining the stack frame space by pushing the last function's base pointer and allocating space to the stack frame like so:

    ```asm
    push  %rbp
    mov  %rsp,%rbp
    sub  %rsp,0x08
    ```

    Note down the `%rbp` and `%rsp`.
   - A bunch of `mov` instructions often follow to store function parameters and local variables. If register values are moved into the stack it is likely saving parameters. If it is saving zero bytes (`0x0`) or other constants to the stack then it is likely saving local variables.
   - You will want to find the location of the instruction pointer when input is taken. With GDB, set a breakpoint at the instruction for user input that is vulnerable to a buffer overflow. Run the binary and step till you reach that breakpoint. Read out registers with `info registers` and save the address of `%rip`.

## Writing the Payload

- Using pwntools, you can easily pack a hex value for the appropriate system.
- Multiply a string to fill buffers as needed. Ex. `'A'*24`. Add up your strings to get your payload.
- You can simply pass the payload as packed data from Python into the binary with the command `echo -ne <packed-data-string> | ./<binary>`. Alternatively, you can use `printf` with no flags. the `-n` flag is crucial for not adding a newline and `-e` will enable interpreting backslashes.
