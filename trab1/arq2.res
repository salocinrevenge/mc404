
exec1.x: file format ELF32-riscv


Disassembly of section .text:

000110d4 _start:
110d4: 13 04 01 00 addi

000110d8 .Lpcrel_hi0:
110d8: 97 12 00 00 auipc
110dc: 83 a2 02 07 lw
110e0: 13 03 10 00 addi

000110e4 loop:
110e4: 33 83 62 02 <unknown>
110e8: 93 82 f2 ff addi
110ec: e3 9c 02 fe bne
110f0: 13 0e a0 00 addi
110f4: 13 01 c1 ff addi
110f8: 23 20 c1 01 sw

000110fc loop_in:
110fc: 33 65 c3 03 <unknown>
11100: 33 43 c3 03 <unknown>
11104: 13 05 05 03 addi
11108: 13 01 c1 ff addi
1110c: 23 20 a1 00 sw
11110: e3 16 03 fe bne
11114: 13 05 10 00 addi
11118: 13 06 10 00 addi
1111c: 93 08 00 04 addi

00011120 loop_print:
11120: b3 05 01 00 add
11124: 73 00 00 00 ecall
11128: 13 01 41 00 addi
1112c: e3 1a 24 fe bne
11130: 13 01 41 00 addi
11134: b3 05 01 00 add
11138: 73 00 00 00 ecall

0001113c _end:
1113c: 13 05 00 00 addi
11140: 93 08 d0 05 addi
11144: 73 00 00 00 ecall
