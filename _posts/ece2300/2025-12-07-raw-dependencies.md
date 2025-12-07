---
layout: post
title: RAW Dependencies
tags: ece ece2300
---

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="December 7, 2025, 3:48 PM" subject="RAW Dependencies" %}

Read-after-write (RAW) dependencies are where an instruction will read from a register that is written to in a previous instruction. This may create hazards in pipelined processors.

## Software Scheduling

The idea with software scheduling is the update the ISA to say that under certain conditions, we require NOPs to be added to prevent problems. This usually leads to a mess which is why we will instead consider hardware methods.

## Hardware Stalling

The idea is simple: repeat a stage in the read instruction until the data is written.

## Hardware Bypassing

Often, we will have the data ready in the sense that we've don't the computation, but we haven't yet written it to the regfile which takes time. The idea with bypassing is to sneak the written value around to other stages, so don't need to wait to write to the regfile.

What's nice is it allows us to resolve vertical (same cycle) dependencies. A possible issue is that bypass paths often become the critical path and increase time per cycle.

## Load-Use RAW Dependencies

For a five-stage pipelined processor, the LW instruction will load values (write) in the M stage. If we have a read instruction after, such as ADDI, since D stage of the ADDI will be one cycle behind the M, we cannot bypass. We must stall in the D stage of the ADDI---either for two cycles or one cycle then bypass from the LW M stage to the ADDI D stage.

## RAW Dependencies with Memory

With two-stage pipelined processors, memory operations (both read and write) occur only in the B stage. With five-stage, only on M. This prevents any RAW hazards because we can never have an out of order or simultaneous read and write.
