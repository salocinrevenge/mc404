
exec1.x: file format ELF32-riscv


Disassembly of section .text:

000110d4 _start:
110d4: 13 04 01 00 addi s0, sp, 0

000110d8 .Lpcrel_hi0:
110d8: 97 12 00 00 auipc t0, 1
110dc: 83 a2 02 07 lw t0, 112(t0)
110e0: 13 03 10 00 addi t1, zero, 1

000110e4 loop:
110e4: 33 83 62 02 <unknown>
110e8: 93 82 f2 ff addi t0, t0, -1
110ec: e3 9c 02 fe bne t0, zero, -8
110f0: 13 0e a0 00 addi t3, zero, 10
110f4: 13 01 c1 ff addi sp, sp, -4
110f8: 23 20 c1 01 sw t3, 0(sp)

000110fc loop_in:
110fc: 33 65 c3 03 <unknown>
11100: 33 43 c3 03 <unknown>
11104: 13 05 05 03 addi a0, a0, 48
11108: 13 01 c1 ff addi sp, sp, -4
1110c: 23 20 a1 00 sw a0, 0(sp)
11110: e3 16 03 fe bne t1, zero, -20
11114: 13 05 10 00 addi a0, zero, 1
11118: 13 06 10 00 addi a2, zero, 1
1111c: 93 08 00 04 addi a7, zero, 64

00011120 loop_print:
11120: b3 05 01 00 add a1, sp, zero
11124: 73 00 00 00 ecall
11128: 13 01 41 00 addi sp, sp, 4
1112c: e3 1a 24 fe bne s0, sp, -12
11130: 13 01 41 00 addi sp, sp, 4
11134: b3 05 01 00 add a1, sp, zero
11138: 73 00 00 00 ecall

0001113c _end:
1113c: 13 05 00 00 addi a0, zero, 0
11140: 93 08 d0 05 addi a7, zero, 93
11144: 73 00 00 00 ecall
