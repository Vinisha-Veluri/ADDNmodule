# Parameterized N-Bit Ripple Carry Adder

## Description

This project implements a **parameterized N-bit Ripple Carry Adder** in Verilog HDL using **Full Adder** modules and a **generate** loop. The bit width can be changed by modifying the parameter `N`.

## Features

- Parameterized design using `parameter N`
- Built using Full Adder module instantiation
- Uses `generate` block for scalable hardware
- Supports any bit width by changing the parameter value
- Verified using a Verilog testbench

## Inputs

- `A[N-1:0]` – First N-bit input
- `B[N-1:0]` – Second N-bit input

## Output

- `sum[N:0]` – (N+1)-bit output including the carry-out

## Simulation

The design was simulated in Vivado, and the waveform verifies the correct addition of two N-bit numbers.

## Files

- `fa.v` – Full Adder module
- `addN.v` – Parameterized N-bit Ripple Carry Adder
- `tb.v` – Testbench
