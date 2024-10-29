
exec2.x: file format ELF32-riscv


Disassembly of section .text:

000110d4 _read:
110d4: 13 05 00 00 addi

000110d8 .Lpcrel_hi0:
110d8: 97 15 00 00 auipc
110dc: 93 85 65 1f addi
110e0: 13 06 80 02 addi
110e4: 93 08 f0 03 addi
110e8: 73 00 00 00 ecall
110ec: 67 80 00 00 jalr

000110f0 get_n2:
110f0: 97 12 00 00 auipc
110f4: 93 82 e2 1d addi
110f8: 03 23 01 00 lw
110fc: 13 03 c3 ff addi
11100: 33 03 53 00 add
11104: 83 0e 03 00 lb
11108: 13 0e 10 00 addi
1110c: 93 0f a0 00 addi
11110: 13 05 00 00 addi

00011114 loop_n2:
11114: 13 8f 0e fd addi
11118: 33 0f ee 03 <unknown>
1111c: 33 05 af 00 add
11120: 33 0e fe 03 <unknown>
11124: 13 03 f3 ff addi
11128: 83 0e 03 00 lb
1112c: 13 0f 00 02 addi
11130: e3 92 ee ff bne

00011134 out_n2:
11134: 67 80 00 00 jalr

00011138 get_op:
11138: 97 12 00 00 auipc
1113c: 93 82 62 19 addi
11140: 03 23 41 00 lw
11144: 13 03 c3 ff addi
11148: 33 03 53 00 add
1114c: 83 0e 03 00 lb
11150: 13 0f 00 02 addi

00011154 loop_op:
11154: 63 88 ee 01 beq
11158: 13 03 f3 ff addi
1115c: 83 0e 03 00 lb
11160: 6f f0 5f ff jal

00011164 out_op:
11164: 13 03 f3 ff addi
11168: 03 05 03 00 lb
1116c: 67 80 00 00 jalr

00011170 get_n1:
11170: 97 12 00 00 auipc
11174: 93 82 e2 15 addi
11178: 03 23 81 00 lw
1117c: 13 03 c3 ff addi
11180: 33 03 53 00 add
11184: 83 0e 03 00 lb
11188: 13 0f 00 02 addi

0001118c loop_n1:
1118c: 63 88 ee 01 beq
11190: 13 03 f3 ff addi
11194: 83 0e 03 00 lb
11198: 6f f0 5f ff jal

0001119c out_n1:
1119c: 13 03 d3 ff addi
111a0: 83 0e 03 00 lb
111a4: 13 0e 10 00 addi
111a8: 93 0f a0 00 addi
111ac: 13 05 00 00 addi
111b0: 93 82 f2 ff addi

000111b4 loop_2:
111b4: 13 8f 0e fd addi
111b8: 33 0f ee 03 <unknown>
111bc: 33 05 af 00 add
111c0: 33 0e fe 03 <unknown>
111c4: 13 03 f3 ff addi
111c8: 83 0e 03 00 lb
111cc: 13 0f 00 02 addi
111d0: e3 92 62 fe bne
111d4: 67 80 00 00 jalr

000111d8 write:
111d8: 13 04 01 00 addi
111dc: 13 03 05 00 addi
111e0: 13 0e a0 00 addi

000111e4 loop_in:
111e4: 33 65 c3 03 <unknown>
111e8: 33 43 c3 03 <unknown>
111ec: 13 05 05 03 addi
111f0: 13 01 c1 ff addi
111f4: 23 20 a1 00 sw
111f8: e3 16 03 fe bne
111fc: 13 05 10 00 addi
11200: 13 06 10 00 addi
11204: 93 08 00 04 addi
11208: 63 88 06 00 beq
1120c: 13 01 c1 ff addi
11210: 93 02 d0 02 addi
11214: 23 20 51 00 sw

00011218 loop_print:
11218: 93 05 01 00 addi
1121c: 73 00 00 00 ecall
11220: 13 01 41 00 addi
11224: e3 1a 24 fe bne
11228: 67 80 00 00 jalr

0001122c write_line:
1122c: 13 05 10 00 addi

00011230 .Lpcrel_hi4:
11230: 97 15 00 00 auipc
11234: 93 85 c5 09 addi
11238: 13 06 10 00 addi
1123c: 93 08 00 04 addi
11240: 73 00 00 00 ecall
11244: 67 80 00 00 jalr

00011248 _start:
11248: ef f0 df e8 jal
1124c: 13 01 c1 ff addi
11250: 23 20 a1 00 sw
11254: ef f0 df e9 jal
11258: 13 01 c1 ff addi
1125c: 23 20 a1 00 sw
11260: ef f0 9f ed jal
11264: 13 01 c1 ff addi
11268: 23 20 a1 00 sw
1126c: ef f0 5f f0 jal
11270: 83 25 01 00 lw
11274: 03 26 41 00 lw
11278: 93 06 00 00 addi
1127c: 93 02 a0 02 addi
11280: 63 8e 55 00 beq
11284: 93 02 b0 02 addi
11288: 63 86 55 00 beq
1128c: 93 02 d0 02 addi
11290: 63 80 55 02 beq

00011294 sum:
11294: 33 05 c5 00 add
11298: 6f 00 00 02 jal

0001129c mul:
1129c: 33 05 c5 02 <unknown>
112a0: 6f 00 80 01 jal

000112a4 sub_2:
112a4: 33 05 a6 40 sub
112a8: 93 06 10 00 addi
112ac: 6f 00 c0 00 jal

000112b0 sub:
112b0: e3 4a c5 fe blt
112b4: 33 05 c5 40 sub

000112b8 write_out:
112b8: ef f0 1f f2 jal
112bc: ef f0 1f f7 jal

000112c0 _end:
112c0: 13 05 00 00 addi
112c4: 93 08 d0 05 addi
112c8: 73 00 00 00 ecall
