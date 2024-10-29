
exec3.x: file format ELF32-riscv


Disassembly of section .text:

000138f8 aes_rijndael_key_setup_enc:
138f8: 13 01 01 fd addi sp, sp, -48
138fc: 23 26 11 02 sw ra, 44(sp)
13900: 23 24 81 02 sw s0, 40(sp)
13904: 13 04 01 03 addi s0, sp, 48
13908: 13 87 06 00 addi a4, a3, 0
1390c: 93 07 06 00 addi a5, a2, 0
13910: 23 28 a4 fe sw a0, -16(s0)
13914: 23 26 b4 fe sw a1, -20(s0)
13918: 23 22 d4 fe sw a3, -28(s0)
1391c: 23 20 c4 fe sw a2, -32(s0)
13920: 03 25 c4 fe lw a0, -20(s0)
13924: 83 05 05 00 lb a1, 0(a0)
13928: 93 95 85 01 slli a1, a1, 24
1392c: 03 46 15 00 lbu a2, 1(a0)
13930: 13 16 06 01 slli a2, a2, 16
13934: b3 e5 c5 00 or a1, a1, a2
13938: 03 46 25 00 lbu a2, 2(a0)
1393c: 13 16 86 00 slli a2, a2, 8
13940: b3 e5 c5 00 or a1, a1, a2
13944: 03 45 35 00 lbu a0, 3(a0)
13948: 33 e5 a5 00 or a0, a1, a0
1394c: 83 25 04 ff lw a1, -16(s0)
13950: 23 a0 a5 00 sw a0, 0(a1)
13954: 03 25 c4 fe lw a0, -20(s0)
13958: 83 05 45 00 lb a1, 4(a0)
1395c: 93 95 85 01 slli a1, a1, 24
13960: 03 46 55 00 lbu a2, 5(a0)
13964: 13 16 06 01 slli a2, a2, 16
13968: b3 e5 c5 00 or a1, a1, a2
1396c: 03 46 65 00 lbu a2, 6(a0)
13970: 13 16 86 00 slli a2, a2, 8
13974: b3 e5 c5 00 or a1, a1, a2
13978: 03 45 75 00 lbu a0, 7(a0)
1397c: 33 e5 a5 00 or a0, a1, a0
13980: 83 25 04 ff lw a1, -16(s0)
13984: 23 a2 a5 00 sw a0, 4(a1)
13988: 03 25 c4 fe lw a0, -20(s0)
1398c: 83 05 85 00 lb a1, 8(a0)
13990: 93 95 85 01 slli a1, a1, 24
13994: 03 46 95 00 lbu a2, 9(a0)
13998: 13 16 06 01 slli a2, a2, 16
1399c: b3 e5 c5 00 or a1, a1, a2
139a0: 03 46 a5 00 lbu a2, 10(a0)
139a4: 13 16 86 00 slli a2, a2, 8
139a8: b3 e5 c5 00 or a1, a1, a2
139ac: 03 45 b5 00 lbu a0, 11(a0)
139b0: 33 e5 a5 00 or a0, a1, a0
139b4: 83 25 04 ff lw a1, -16(s0)
139b8: 23 a4 a5 00 sw a0, 8(a1)
139bc: 03 25 c4 fe lw a0, -20(s0)
139c0: 83 05 c5 00 lb a1, 12(a0)
139c4: 93 95 85 01 slli a1, a1, 24
139c8: 03 46 d5 00 lbu a2, 13(a0)
139cc: 13 16 06 01 slli a2, a2, 16
139d0: b3 e5 c5 00 or a1, a1, a2
139d4: 03 46 e5 00 lbu a2, 14(a0)
139d8: 13 16 86 00 slli a2, a2, 8
139dc: b3 e5 c5 00 or a1, a1, a2
139e0: 03 45 f5 00 lbu a0, 15(a0)
139e4: 33 e5 a5 00 or a0, a1, a0
139e8: 83 25 04 ff lw a1, -16(s0)
139ec: 23 a6 a5 00 sw a0, 12(a1)
139f0: 03 25 44 fe lw a0, -28(s0)
139f4: 83 25 04 fe lw a1, -32(s0)
139f8: 93 c5 05 08 xori a1, a1, 128
139fc: 33 e5 a5 00 or a0, a1, a0
13a00: 93 05 00 00 addi a1, zero, 0
13a04: 63 14 b5 12 bne a0, a1, 296
13a08: 6f 00 40 00 jal zero, 4
13a0c: 13 05 00 00 addi a0, zero, 0
13a10: 23 2e a4 fc sw a0, -36(s0)
13a14: 6f 00 40 00 jal zero, 4
13a18: 03 25 c4 fd lw a0, -36(s0)
13a1c: 93 05 90 00 addi a1, zero, 9
13a20: 63 c0 a5 10 blt a1, a0, 256
13a24: 6f 00 40 00 jal zero, 4
13a28: 03 25 04 ff lw a0, -16(s0)
13a2c: 03 25 c5 00 lw a0, 12(a0)
13a30: 23 2c a4 fc sw a0, -40(s0)
13a34: 03 25 04 ff lw a0, -16(s0)
13a38: 83 25 05 00 lw a1, 0(a0)
13a3c: 03 26 84 fd lw a2, -40(s0)
13a40: 93 56 e6 00 srli a3, a2, 14
13a44: 93 f6 c6 3f andi a3, a3, 1020
13a48: 37 17 01 00 lui a4, 17
13a4c: 13 07 87 0b addi a4, a4, 184
13a50: b3 06 d7 00 add a3, a4, a3
13a54: 83 c6 36 00 lbu a3, 3(a3)
13a58: 93 96 86 01 slli a3, a3, 24
13a5c: b3 c5 d5 00 xor a1, a1, a3
13a60: 93 56 66 00 srli a3, a2, 6
13a64: 93 f6 c6 3f andi a3, a3, 1020
13a68: b3 06 d7 00 add a3, a4, a3
13a6c: 83 c6 26 00 lbu a3, 2(a3)
13a70: 93 96 06 01 slli a3, a3, 16
13a74: b3 c5 d5 00 xor a1, a1, a3
13a78: 93 76 f6 0f andi a3, a2, 255
13a7c: 93 96 26 00 slli a3, a3, 2
13a80: b3 06 d7 00 add a3, a4, a3
13a84: 83 c6 16 00 lbu a3, 1(a3)
13a88: 93 96 86 00 slli a3, a3, 8
13a8c: b3 c5 d5 00 xor a1, a1, a3
13a90: 13 56 66 01 srli a2, a2, 22
13a94: 13 76 c6 3f andi a2, a2, 1020
13a98: 33 06 e6 00 add a2, a2, a4
13a9c: 03 46 06 00 lbu a2, 0(a2)
13aa0: b3 c5 c5 00 xor a1, a1, a2
13aa4: 03 26 c4 fd lw a2, -36(s0)
13aa8: b7 36 01 00 lui a3, 19
13aac: 93 86 86 8b addi a3, a3, -1864
13ab0: 13 16 26 00 slli a2, a2, 2
13ab4: 33 06 d6 00 add a2, a2, a3
13ab8: 03 26 06 00 lw a2, 0(a2)
13abc: b3 c5 c5 00 xor a1, a1, a2
13ac0: 23 28 b5 00 sw a1, 16(a0)
13ac4: 03 25 04 ff lw a0, -16(s0)
13ac8: 83 25 45 00 lw a1, 4(a0)
13acc: 03 26 05 01 lw a2, 16(a0)
13ad0: b3 c5 c5 00 xor a1, a1, a2
13ad4: 23 2a b5 00 sw a1, 20(a0)
13ad8: 03 25 04 ff lw a0, -16(s0)
13adc: 83 25 85 00 lw a1, 8(a0)
13ae0: 03 26 45 01 lw a2, 20(a0)
13ae4: b3 c5 c5 00 xor a1, a1, a2
13ae8: 23 2c b5 00 sw a1, 24(a0)
13aec: 03 25 04 ff lw a0, -16(s0)
13af0: 83 25 c5 00 lw a1, 12(a0)
13af4: 03 26 85 01 lw a2, 24(a0)
13af8: b3 c5 c5 00 xor a1, a1, a2
13afc: 23 2e b5 00 sw a1, 28(a0)
13b00: 03 25 04 ff lw a0, -16(s0)
13b04: 13 05 05 01 addi a0, a0, 16
13b08: 23 28 a4 fe sw a0, -16(s0)
13b0c: 6f 00 40 00 jal zero, 4
13b10: 03 25 c4 fd lw a0, -36(s0)
13b14: 13 05 15 00 addi a0, a0, 1
13b18: 23 2e a4 fc sw a0, -36(s0)
13b1c: 6f f0 df ef jal zero, -260
13b20: 13 05 a0 00 addi a0, zero, 10
13b24: 23 2a a4 fe sw a0, -12(s0)
13b28: 6f 00 40 46 jal zero, 1124
13b2c: 03 25 c4 fe lw a0, -20(s0)
13b30: 83 05 05 01 lb a1, 16(a0)
13b34: 93 95 85 01 slli a1, a1, 24
13b38: 03 46 15 01 lbu a2, 17(a0)
13b3c: 13 16 06 01 slli a2, a2, 16
13b40: b3 e5 c5 00 or a1, a1, a2
13b44: 03 46 25 01 lbu a2, 18(a0)
13b48: 13 16 86 00 slli a2, a2, 8
13b4c: b3 e5 c5 00 or a1, a1, a2
13b50: 03 45 35 01 lbu a0, 19(a0)
13b54: 33 e5 a5 00 or a0, a1, a0
13b58: 83 25 04 ff lw a1, -16(s0)
13b5c: 23 a8 a5 00 sw a0, 16(a1)
13b60: 03 25 c4 fe lw a0, -20(s0)
13b64: 83 05 45 01 lb a1, 20(a0)
13b68: 93 95 85 01 slli a1, a1, 24
13b6c: 03 46 55 01 lbu a2, 21(a0)
13b70: 13 16 06 01 slli a2, a2, 16
13b74: b3 e5 c5 00 or a1, a1, a2
13b78: 03 46 65 01 lbu a2, 22(a0)
13b7c: 13 16 86 00 slli a2, a2, 8
13b80: b3 e5 c5 00 or a1, a1, a2
13b84: 03 45 75 01 lbu a0, 23(a0)
13b88: 33 e5 a5 00 or a0, a1, a0
13b8c: 83 25 04 ff lw a1, -16(s0)
13b90: 23 aa a5 00 sw a0, 20(a1)
13b94: 03 25 44 fe lw a0, -28(s0)
13b98: 83 25 04 fe lw a1, -32(s0)
13b9c: 93 c5 05 0c xori a1, a1, 192
13ba0: 33 e5 a5 00 or a0, a1, a0
13ba4: 93 05 00 00 addi a1, zero, 0
13ba8: 63 12 b5 16 bne a0, a1, 356
13bac: 6f 00 40 00 jal zero, 4
13bb0: 13 05 00 00 addi a0, zero, 0
13bb4: 23 2e a4 fc sw a0, -36(s0)
13bb8: 6f 00 40 00 jal zero, 4
13bbc: 03 25 c4 fd lw a0, -36(s0)
13bc0: 93 05 70 00 addi a1, zero, 7
13bc4: 63 c2 a5 14 blt a1, a0, 324
13bc8: 6f 00 40 00 jal zero, 4
13bcc: 03 25 04 ff lw a0, -16(s0)
13bd0: 03 25 45 01 lw a0, 20(a0)
13bd4: 23 2c a4 fc sw a0, -40(s0)
13bd8: 03 25 04 ff lw a0, -16(s0)
13bdc: 83 25 05 00 lw a1, 0(a0)
13be0: 03 26 84 fd lw a2, -40(s0)
13be4: 93 56 e6 00 srli a3, a2, 14
13be8: 93 f6 c6 3f andi a3, a3, 1020
13bec: 37 17 01 00 lui a4, 17
13bf0: 13 07 87 0b addi a4, a4, 184
13bf4: b3 06 d7 00 add a3, a4, a3
13bf8: 83 c6 36 00 lbu a3, 3(a3)
13bfc: 93 96 86 01 slli a3, a3, 24
13c00: b3 c5 d5 00 xor a1, a1, a3
13c04: 93 56 66 00 srli a3, a2, 6
13c08: 93 f6 c6 3f andi a3, a3, 1020
13c0c: b3 06 d7 00 add a3, a4, a3
13c10: 83 c6 26 00 lbu a3, 2(a3)
13c14: 93 96 06 01 slli a3, a3, 16
13c18: b3 c5 d5 00 xor a1, a1, a3
13c1c: 93 76 f6 0f andi a3, a2, 255
13c20: 93 96 26 00 slli a3, a3, 2
13c24: b3 06 d7 00 add a3, a4, a3
13c28: 83 c6 16 00 lbu a3, 1(a3)
13c2c: 93 96 86 00 slli a3, a3, 8
13c30: b3 c5 d5 00 xor a1, a1, a3
13c34: 13 56 66 01 srli a2, a2, 22
13c38: 13 76 c6 3f andi a2, a2, 1020
13c3c: 33 06 e6 00 add a2, a2, a4
13c40: 03 46 06 00 lbu a2, 0(a2)
13c44: b3 c5 c5 00 xor a1, a1, a2
13c48: 03 26 c4 fd lw a2, -36(s0)
13c4c: b7 36 01 00 lui a3, 19
13c50: 93 86 86 8b addi a3, a3, -1864
13c54: 13 16 26 00 slli a2, a2, 2
13c58: 33 06 d6 00 add a2, a2, a3
13c5c: 03 26 06 00 lw a2, 0(a2)
13c60: b3 c5 c5 00 xor a1, a1, a2
13c64: 23 2c b5 00 sw a1, 24(a0)
13c68: 03 25 04 ff lw a0, -16(s0)
13c6c: 83 25 45 00 lw a1, 4(a0)
13c70: 03 26 85 01 lw a2, 24(a0)
13c74: b3 c5 c5 00 xor a1, a1, a2
13c78: 23 2e b5 00 sw a1, 28(a0)
13c7c: 03 25 04 ff lw a0, -16(s0)
13c80: 83 25 85 00 lw a1, 8(a0)
13c84: 03 26 c5 01 lw a2, 28(a0)
13c88: b3 c5 c5 00 xor a1, a1, a2
13c8c: 23 20 b5 02 sw a1, 32(a0)
13c90: 03 25 04 ff lw a0, -16(s0)
13c94: 83 25 c5 00 lw a1, 12(a0)
13c98: 03 26 05 02 lw a2, 32(a0)
13c9c: b3 c5 c5 00 xor a1, a1, a2
13ca0: 23 22 b5 02 sw a1, 36(a0)
13ca4: 03 25 c4 fd lw a0, -36(s0)
13ca8: 93 05 70 00 addi a1, zero, 7
13cac: 63 1a b5 00 bne a0, a1, 20
13cb0: 6f 00 40 00 jal zero, 4
13cb4: 13 05 c0 00 addi a0, zero, 12
13cb8: 23 2a a4 fe sw a0, -12(s0)
13cbc: 6f 00 00 2d jal zero, 720
13cc0: 03 25 04 ff lw a0, -16(s0)
13cc4: 83 25 05 01 lw a1, 16(a0)
13cc8: 03 26 45 02 lw a2, 36(a0)
13ccc: b3 c5 c5 00 xor a1, a1, a2
13cd0: 23 24 b5 02 sw a1, 40(a0)
13cd4: 03 25 04 ff lw a0, -16(s0)
13cd8: 83 25 45 01 lw a1, 20(a0)
13cdc: 03 26 85 02 lw a2, 40(a0)
13ce0: b3 c5 c5 00 xor a1, a1, a2
13ce4: 23 26 b5 02 sw a1, 44(a0)
13ce8: 03 25 04 ff lw a0, -16(s0)
13cec: 13 05 85 01 addi a0, a0, 24
13cf0: 23 28 a4 fe sw a0, -16(s0)
13cf4: 6f 00 40 00 jal zero, 4
13cf8: 03 25 c4 fd lw a0, -36(s0)
13cfc: 13 05 15 00 addi a0, a0, 1
13d00: 23 2e a4 fc sw a0, -36(s0)
13d04: 6f f0 9f eb jal zero, -328
13d08: 6f 00 40 00 jal zero, 4
13d0c: 03 25 c4 fe lw a0, -20(s0)
13d10: 83 05 85 01 lb a1, 24(a0)
13d14: 93 95 85 01 slli a1, a1, 24
13d18: 03 46 95 01 lbu a2, 25(a0)
13d1c: 13 16 06 01 slli a2, a2, 16
13d20: b3 e5 c5 00 or a1, a1, a2
13d24: 03 46 a5 01 lbu a2, 26(a0)
13d28: 13 16 86 00 slli a2, a2, 8
13d2c: b3 e5 c5 00 or a1, a1, a2
13d30: 03 45 b5 01 lbu a0, 27(a0)
13d34: 33 e5 a5 00 or a0, a1, a0
13d38: 83 25 04 ff lw a1, -16(s0)
13d3c: 23 ac a5 00 sw a0, 24(a1)
13d40: 03 25 c4 fe lw a0, -20(s0)
13d44: 83 05 c5 01 lb a1, 28(a0)
13d48: 93 95 85 01 slli a1, a1, 24
13d4c: 03 46 d5 01 lbu a2, 29(a0)
13d50: 13 16 06 01 slli a2, a2, 16
13d54: b3 e5 c5 00 or a1, a1, a2
13d58: 03 46 e5 01 lbu a2, 30(a0)
13d5c: 13 16 86 00 slli a2, a2, 8
13d60: b3 e5 c5 00 or a1, a1, a2
13d64: 03 45 f5 01 lbu a0, 31(a0)
13d68: 33 e5 a5 00 or a0, a1, a0
13d6c: 83 25 04 ff lw a1, -16(s0)
13d70: 23 ae a5 00 sw a0, 28(a1)
13d74: 03 25 44 fe lw a0, -28(s0)
13d78: 83 25 04 fe lw a1, -32(s0)
13d7c: 93 c5 05 10 xori a1, a1, 256
13d80: 33 e5 a5 00 or a0, a1, a0
13d84: 93 05 00 00 addi a1, zero, 0
13d88: 63 1c b5 1e bne a0, a1, 504
13d8c: 6f 00 40 00 jal zero, 4
13d90: 13 05 00 00 addi a0, zero, 0
13d94: 23 2e a4 fc sw a0, -36(s0)
13d98: 6f 00 40 00 jal zero, 4
13d9c: 03 25 c4 fd lw a0, -36(s0)
13da0: 93 05 60 00 addi a1, zero, 6
13da4: 63 cc a5 1c blt a1, a0, 472
13da8: 6f 00 40 00 jal zero, 4
13dac: 03 25 04 ff lw a0, -16(s0)
13db0: 03 25 c5 01 lw a0, 28(a0)
13db4: 23 2c a4 fc sw a0, -40(s0)
13db8: 03 25 04 ff lw a0, -16(s0)
13dbc: 83 25 05 00 lw a1, 0(a0)
13dc0: 03 26 84 fd lw a2, -40(s0)
13dc4: 93 56 e6 00 srli a3, a2, 14
13dc8: 93 f6 c6 3f andi a3, a3, 1020
13dcc: 37 17 01 00 lui a4, 17
13dd0: 13 07 87 0b addi a4, a4, 184
13dd4: b3 06 d7 00 add a3, a4, a3
13dd8: 83 c6 36 00 lbu a3, 3(a3)
13ddc: 93 96 86 01 slli a3, a3, 24
13de0: b3 c5 d5 00 xor a1, a1, a3
13de4: 93 56 66 00 srli a3, a2, 6
13de8: 93 f6 c6 3f andi a3, a3, 1020
13dec: b3 06 d7 00 add a3, a4, a3
13df0: 83 c6 26 00 lbu a3, 2(a3)
13df4: 93 96 06 01 slli a3, a3, 16
13df8: b3 c5 d5 00 xor a1, a1, a3
13dfc: 93 76 f6 0f andi a3, a2, 255
13e00: 93 96 26 00 slli a3, a3, 2
13e04: b3 06 d7 00 add a3, a4, a3
13e08: 83 c6 16 00 lbu a3, 1(a3)
13e0c: 93 96 86 00 slli a3, a3, 8
13e10: b3 c5 d5 00 xor a1, a1, a3
13e14: 13 56 66 01 srli a2, a2, 22
13e18: 13 76 c6 3f andi a2, a2, 1020
13e1c: 33 06 e6 00 add a2, a2, a4
13e20: 03 46 06 00 lbu a2, 0(a2)
13e24: b3 c5 c5 00 xor a1, a1, a2
13e28: 03 26 c4 fd lw a2, -36(s0)
13e2c: b7 36 01 00 lui a3, 19
13e30: 93 86 86 8b addi a3, a3, -1864
13e34: 13 16 26 00 slli a2, a2, 2
13e38: 33 06 d6 00 add a2, a2, a3
13e3c: 03 26 06 00 lw a2, 0(a2)
13e40: b3 c5 c5 00 xor a1, a1, a2
13e44: 23 20 b5 02 sw a1, 32(a0)
13e48: 03 25 04 ff lw a0, -16(s0)
13e4c: 83 25 45 00 lw a1, 4(a0)
13e50: 03 26 05 02 lw a2, 32(a0)
13e54: b3 c5 c5 00 xor a1, a1, a2
13e58: 23 22 b5 02 sw a1, 36(a0)
13e5c: 03 25 04 ff lw a0, -16(s0)
13e60: 83 25 85 00 lw a1, 8(a0)
13e64: 03 26 45 02 lw a2, 36(a0)
13e68: b3 c5 c5 00 xor a1, a1, a2
13e6c: 23 24 b5 02 sw a1, 40(a0)
13e70: 03 25 04 ff lw a0, -16(s0)
13e74: 83 25 c5 00 lw a1, 12(a0)
13e78: 03 26 85 02 lw a2, 40(a0)
13e7c: b3 c5 c5 00 xor a1, a1, a2
13e80: 23 26 b5 02 sw a1, 44(a0)
13e84: 03 25 c4 fd lw a0, -36(s0)
13e88: 93 05 60 00 addi a1, zero, 6
13e8c: 63 1a b5 00 bne a0, a1, 20
13e90: 6f 00 40 00 jal zero, 4
13e94: 13 05 e0 00 addi a0, zero, 14
13e98: 23 2a a4 fe sw a0, -12(s0)
13e9c: 6f 00 00 0f jal zero, 240
13ea0: 03 25 04 ff lw a0, -16(s0)
13ea4: 03 25 c5 02 lw a0, 44(a0)
13ea8: 23 2c a4 fc sw a0, -40(s0)
13eac: 03 25 04 ff lw a0, -16(s0)
13eb0: 83 25 05 01 lw a1, 16(a0)
13eb4: 03 26 84 fd lw a2, -40(s0)
13eb8: 93 56 66 01 srli a3, a2, 22
13ebc: 93 f6 c6 3f andi a3, a3, 1020
13ec0: 37 17 01 00 lui a4, 17
13ec4: 13 07 87 0b addi a4, a4, 184
13ec8: b3 06 d7 00 add a3, a4, a3
13ecc: 83 c6 36 00 lbu a3, 3(a3)
13ed0: 93 96 86 01 slli a3, a3, 24
13ed4: b3 c5 d5 00 xor a1, a1, a3
13ed8: 93 56 e6 00 srli a3, a2, 14
13edc: 93 f6 c6 3f andi a3, a3, 1020
13ee0: b3 06 d7 00 add a3, a4, a3
13ee4: 83 c6 26 00 lbu a3, 2(a3)
13ee8: 93 96 06 01 slli a3, a3, 16
13eec: b3 c5 d5 00 xor a1, a1, a3
13ef0: 93 56 66 00 srli a3, a2, 6
13ef4: 93 f6 c6 3f andi a3, a3, 1020
13ef8: b3 06 d7 00 add a3, a4, a3
13efc: 83 c6 16 00 lbu a3, 1(a3)
13f00: 93 96 86 00 slli a3, a3, 8
13f04: b3 c5 d5 00 xor a1, a1, a3
13f08: 13 76 f6 0f andi a2, a2, 255
13f0c: 13 16 26 00 slli a2, a2, 2
13f10: 33 06 e6 00 add a2, a2, a4
13f14: 03 46 06 00 lbu a2, 0(a2)
13f18: b3 c5 c5 00 xor a1, a1, a2
13f1c: 23 28 b5 02 sw a1, 48(a0)
13f20: 03 25 04 ff lw a0, -16(s0)
13f24: 83 25 45 01 lw a1, 20(a0)
13f28: 03 26 05 03 lw a2, 48(a0)
13f2c: b3 c5 c5 00 xor a1, a1, a2
13f30: 23 2a b5 02 sw a1, 52(a0)
13f34: 03 25 04 ff lw a0, -16(s0)
13f38: 83 25 85 01 lw a1, 24(a0)
13f3c: 03 26 45 03 lw a2, 52(a0)
13f40: b3 c5 c5 00 xor a1, a1, a2
13f44: 23 2c b5 02 sw a1, 56(a0)
13f48: 03 25 04 ff lw a0, -16(s0)
13f4c: 83 25 c5 01 lw a1, 28(a0)
13f50: 03 26 85 03 lw a2, 56(a0)
13f54: b3 c5 c5 00 xor a1, a1, a2
13f58: 23 2e b5 02 sw a1, 60(a0)
13f5c: 03 25 04 ff lw a0, -16(s0)
13f60: 13 05 05 02 addi a0, a0, 32
13f64: 23 28 a4 fe sw a0, -16(s0)
13f68: 6f 00 40 00 jal zero, 4
13f6c: 03 25 c4 fd lw a0, -36(s0)
13f70: 13 05 15 00 addi a0, a0, 1
13f74: 23 2e a4 fc sw a0, -36(s0)
13f78: 6f f0 5f e2 jal zero, -476
13f7c: 6f 00 40 00 jal zero, 4
13f80: 13 05 f0 ff addi a0, zero, -1
13f84: 23 2a a4 fe sw a0, -12(s0)
13f88: 6f 00 40 00 jal zero, 4
13f8c: 03 25 44 ff lw a0, -12(s0)
13f90: 03 24 81 02 lw s0, 40(sp)
13f94: 83 20 c1 02 lw ra, 44(sp)
13f98: 13 01 01 03 addi sp, sp, 48
13f9c: 67 80 00 00 jalr zero, 0(ra)

00013fa0 aes_rijndael_encrypt:
13fa0: 13 01 01 fc addi sp, sp, -64
13fa4: 23 2e 11 02 sw ra, 60(sp)
13fa8: 23 2c 81 02 sw s0, 56(sp)
13fac: 13 04 01 04 addi s0, sp, 64
13fb0: 23 2a a4 fe sw a0, -12(s0)
13fb4: 23 28 b4 fe sw a1, -16(s0)
13fb8: 23 26 c4 fe sw a2, -20(s0)
13fbc: 23 24 d4 fe sw a3, -24(s0)
13fc0: 03 25 c4 fe lw a0, -20(s0)
13fc4: 83 05 05 00 lb a1, 0(a0)
13fc8: 93 95 85 01 slli a1, a1, 24
13fcc: 03 46 15 00 lbu a2, 1(a0)
13fd0: 13 16 06 01 slli a2, a2, 16
13fd4: b3 e5 c5 00 or a1, a1, a2
13fd8: 03 46 25 00 lbu a2, 2(a0)
13fdc: 13 16 86 00 slli a2, a2, 8
13fe0: b3 e5 c5 00 or a1, a1, a2
13fe4: 03 45 35 00 lbu a0, 3(a0)
13fe8: 33 e5 a5 00 or a0, a1, a0
13fec: 83 25 44 ff lw a1, -12(s0)
13ff0: 83 a5 05 00 lw a1, 0(a1)
13ff4: 33 45 b5 00 xor a0, a0, a1
13ff8: 23 22 a4 fe sw a0, -28(s0)
13ffc: 03 25 c4 fe lw a0, -20(s0)
14000: 83 05 45 00 lb a1, 4(a0)
14004: 93 95 85 01 slli a1, a1, 24
14008: 03 46 55 00 lbu a2, 5(a0)
1400c: 13 16 06 01 slli a2, a2, 16
14010: b3 e5 c5 00 or a1, a1, a2
14014: 03 46 65 00 lbu a2, 6(a0)
14018: 13 16 86 00 slli a2, a2, 8
1401c: b3 e5 c5 00 or a1, a1, a2
14020: 03 45 75 00 lbu a0, 7(a0)
14024: 33 e5 a5 00 or a0, a1, a0
14028: 83 25 44 ff lw a1, -12(s0)
1402c: 83 a5 45 00 lw a1, 4(a1)
14030: 33 45 b5 00 xor a0, a0, a1
14034: 23 20 a4 fe sw a0, -32(s0)
14038: 03 25 c4 fe lw a0, -20(s0)
1403c: 83 05 85 00 lb a1, 8(a0)
14040: 93 95 85 01 slli a1, a1, 24
14044: 03 46 95 00 lbu a2, 9(a0)
14048: 13 16 06 01 slli a2, a2, 16
1404c: b3 e5 c5 00 or a1, a1, a2
14050: 03 46 a5 00 lbu a2, 10(a0)
14054: 13 16 86 00 slli a2, a2, 8
14058: b3 e5 c5 00 or a1, a1, a2
1405c: 03 45 b5 00 lbu a0, 11(a0)
14060: 33 e5 a5 00 or a0, a1, a0
14064: 83 25 44 ff lw a1, -12(s0)
14068: 83 a5 85 00 lw a1, 8(a1)
1406c: 33 45 b5 00 xor a0, a0, a1
14070: 23 2e a4 fc sw a0, -36(s0)
14074: 03 25 c4 fe lw a0, -20(s0)
14078: 83 05 c5 00 lb a1, 12(a0)
1407c: 93 95 85 01 slli a1, a1, 24
14080: 03 46 d5 00 lbu a2, 13(a0)
14084: 13 16 06 01 slli a2, a2, 16
14088: b3 e5 c5 00 or a1, a1, a2
1408c: 03 46 e5 00 lbu a2, 14(a0)
14090: 13 16 86 00 slli a2, a2, 8
14094: b3 e5 c5 00 or a1, a1, a2
14098: 03 45 f5 00 lbu a0, 15(a0)
1409c: 33 e5 a5 00 or a0, a1, a0
140a0: 83 25 44 ff lw a1, -12(s0)
140a4: 83 a5 c5 00 lw a1, 12(a1)
140a8: 33 45 b5 00 xor a0, a0, a1
140ac: 23 2c a4 fc sw a0, -40(s0)
140b0: 03 25 04 ff lw a0, -16(s0)
140b4: 13 55 15 40 srai a0, a0, 1
140b8: 23 22 a4 fc sw a0, -60(s0)
140bc: 6f 00 40 00 jal zero, 4
140c0: 03 25 44 fe lw a0, -28(s0)
140c4: 13 55 65 01 srli a0, a0, 22
140c8: 13 75 c5 3f andi a0, a0, 1020
140cc: b7 05 01 00 lui a1, 16
140d0: 93 85 85 0b addi a1, a1, 184
140d4: 33 05 b5 00 add a0, a0, a1
140d8: 03 25 05 00 lw a0, 0(a0)
140dc: 03 26 04 fe lw a2, -32(s0)
140e0: b7 06 01 00 lui a3, 16
140e4: 93 86 86 4b addi a3, a3, 1208
140e8: 13 56 e6 00 srli a2, a2, 14
140ec: 13 76 c6 3f andi a2, a2, 1020
140f0: 33 06 d6 00 add a2, a2, a3
140f4: 03 26 06 00 lw a2, 0(a2)
140f8: 33 45 c5 00 xor a0, a0, a2
140fc: 03 26 c4 fd lw a2, -36(s0)
14100: 37 17 01 00 lui a4, 17
14104: 13 07 87 8b addi a4, a4, -1864
14108: 13 56 66 00 srli a2, a2, 6
1410c: 13 76 c6 3f andi a2, a2, 1020
14110: 33 06 e6 00 add a2, a2, a4
14114: 03 26 06 00 lw a2, 0(a2)
14118: 33 45 c5 00 xor a0, a0, a2
1411c: 03 46 84 fd lbu a2, -40(s0)
14120: b7 17 01 00 lui a5, 17
14124: 93 87 87 cb addi a5, a5, -840
14128: 13 16 26 00 slli a2, a2, 2
1412c: 33 06 f6 00 add a2, a2, a5
14130: 03 26 06 00 lw a2, 0(a2)
14134: 33 45 c5 00 xor a0, a0, a2
14138: 03 26 44 ff lw a2, -12(s0)
1413c: 03 26 06 01 lw a2, 16(a2)
14140: 33 45 c5 00 xor a0, a0, a2
14144: 23 2a a4 fc sw a0, -44(s0)
14148: 03 25 04 fe lw a0, -32(s0)
1414c: 13 55 65 01 srli a0, a0, 22
14150: 13 75 c5 3f andi a0, a0, 1020
14154: 33 05 b5 00 add a0, a0, a1
14158: 03 25 05 00 lw a0, 0(a0)
1415c: 03 26 c4 fd lw a2, -36(s0)
14160: 13 56 e6 00 srli a2, a2, 14
14164: 13 76 c6 3f andi a2, a2, 1020
14168: 33 06 d6 00 add a2, a2, a3
1416c: 03 26 06 00 lw a2, 0(a2)
14170: 33 45 c5 00 xor a0, a0, a2
14174: 03 26 84 fd lw a2, -40(s0)
14178: 13 56 66 00 srli a2, a2, 6
1417c: 13 76 c6 3f andi a2, a2, 1020
14180: 33 06 e6 00 add a2, a2, a4
14184: 03 26 06 00 lw a2, 0(a2)
14188: 33 45 c5 00 xor a0, a0, a2
1418c: 03 46 44 fe lbu a2, -28(s0)
14190: 13 16 26 00 slli a2, a2, 2
14194: 33 06 f6 00 add a2, a2, a5
14198: 03 26 06 00 lw a2, 0(a2)
1419c: 33 45 c5 00 xor a0, a0, a2
141a0: 03 26 44 ff lw a2, -12(s0)
141a4: 03 26 46 01 lw a2, 20(a2)
141a8: 33 45 c5 00 xor a0, a0, a2
141ac: 23 28 a4 fc sw a0, -48(s0)
141b0: 03 25 c4 fd lw a0, -36(s0)
141b4: 13 55 65 01 srli a0, a0, 22
141b8: 13 75 c5 3f andi a0, a0, 1020
141bc: 33 05 b5 00 add a0, a0, a1
141c0: 03 25 05 00 lw a0, 0(a0)
141c4: 03 26 84 fd lw a2, -40(s0)
141c8: 13 56 e6 00 srli a2, a2, 14
141cc: 13 76 c6 3f andi a2, a2, 1020
141d0: 33 06 d6 00 add a2, a2, a3
141d4: 03 26 06 00 lw a2, 0(a2)
141d8: 33 45 c5 00 xor a0, a0, a2
141dc: 03 26 44 fe lw a2, -28(s0)
141e0: 13 56 66 00 srli a2, a2, 6
141e4: 13 76 c6 3f andi a2, a2, 1020
141e8: 33 06 e6 00 add a2, a2, a4
141ec: 03 26 06 00 lw a2, 0(a2)
141f0: 33 45 c5 00 xor a0, a0, a2
141f4: 03 46 04 fe lbu a2, -32(s0)
141f8: 13 16 26 00 slli a2, a2, 2
141fc: 33 06 f6 00 add a2, a2, a5
14200: 03 26 06 00 lw a2, 0(a2)
14204: 33 45 c5 00 xor a0, a0, a2
14208: 03 26 44 ff lw a2, -12(s0)
1420c: 03 26 86 01 lw a2, 24(a2)
14210: 33 45 c5 00 xor a0, a0, a2
14214: 23 26 a4 fc sw a0, -52(s0)
14218: 03 25 84 fd lw a0, -40(s0)
1421c: 13 55 65 01 srli a0, a0, 22
14220: 13 75 c5 3f andi a0, a0, 1020
14224: 33 05 b5 00 add a0, a0, a1
14228: 03 25 05 00 lw a0, 0(a0)
1422c: 83 25 44 fe lw a1, -28(s0)
14230: 93 d5 e5 00 srli a1, a1, 14
14234: 93 f5 c5 3f andi a1, a1, 1020
14238: b3 85 d5 00 add a1, a1, a3
1423c: 83 a5 05 00 lw a1, 0(a1)
14240: 33 45 b5 00 xor a0, a0, a1
14244: 83 25 04 fe lw a1, -32(s0)
14248: 93 d5 65 00 srli a1, a1, 6
1424c: 93 f5 c5 3f andi a1, a1, 1020
14250: b3 85 e5 00 add a1, a1, a4
14254: 83 a5 05 00 lw a1, 0(a1)
14258: 33 45 b5 00 xor a0, a0, a1
1425c: 83 45 c4 fd lbu a1, -36(s0)
14260: 93 95 25 00 slli a1, a1, 2
14264: b3 85 f5 00 add a1, a1, a5
14268: 83 a5 05 00 lw a1, 0(a1)
1426c: 33 45 b5 00 xor a0, a0, a1
14270: 83 25 44 ff lw a1, -12(s0)
14274: 83 a5 c5 01 lw a1, 28(a1)
14278: 33 45 b5 00 xor a0, a0, a1
1427c: 23 24 a4 fc sw a0, -56(s0)
14280: 03 25 44 ff lw a0, -12(s0)
14284: 13 05 05 02 addi a0, a0, 32
14288: 23 2a a4 fe sw a0, -12(s0)
1428c: 03 25 44 fc lw a0, -60(s0)
14290: 13 05 f5 ff addi a0, a0, -1
14294: 23 22 a4 fc sw a0, -60(s0)
14298: 93 05 00 00 addi a1, zero, 0
1429c: 63 16 b5 00 bne a0, a1, 12
142a0: 6f 00 40 00 jal zero, 4
142a4: 6f 00 80 1c jal zero, 456
142a8: 03 25 44 fd lw a0, -44(s0)
142ac: 13 55 65 01 srli a0, a0, 22
142b0: 13 75 c5 3f andi a0, a0, 1020
142b4: b7 05 01 00 lui a1, 16
142b8: 93 85 85 0b addi a1, a1, 184
142bc: 33 05 b5 00 add a0, a0, a1
142c0: 03 25 05 00 lw a0, 0(a0)
142c4: 03 26 04 fd lw a2, -48(s0)
142c8: b7 06 01 00 lui a3, 16
142cc: 93 86 86 4b addi a3, a3, 1208
142d0: 13 56 e6 00 srli a2, a2, 14
142d4: 13 76 c6 3f andi a2, a2, 1020
142d8: 33 06 d6 00 add a2, a2, a3
142dc: 03 26 06 00 lw a2, 0(a2)
142e0: 33 45 c5 00 xor a0, a0, a2
142e4: 03 26 c4 fc lw a2, -52(s0)
142e8: 37 17 01 00 lui a4, 17
142ec: 13 07 87 8b addi a4, a4, -1864
142f0: 13 56 66 00 srli a2, a2, 6
142f4: 13 76 c6 3f andi a2, a2, 1020
142f8: 33 06 e6 00 add a2, a2, a4
142fc: 03 26 06 00 lw a2, 0(a2)
14300: 33 45 c5 00 xor a0, a0, a2
14304: 03 46 84 fc lbu a2, -56(s0)
14308: b7 17 01 00 lui a5, 17
1430c: 93 87 87 cb addi a5, a5, -840
14310: 13 16 26 00 slli a2, a2, 2
14314: 33 06 f6 00 add a2, a2, a5
14318: 03 26 06 00 lw a2, 0(a2)
1431c: 33 45 c5 00 xor a0, a0, a2
14320: 03 26 44 ff lw a2, -12(s0)
14324: 03 26 06 00 lw a2, 0(a2)
14328: 33 45 c5 00 xor a0, a0, a2
1432c: 23 22 a4 fe sw a0, -28(s0)
14330: 03 25 04 fd lw a0, -48(s0)
14334: 13 55 65 01 srli a0, a0, 22
14338: 13 75 c5 3f andi a0, a0, 1020
1433c: 33 05 b5 00 add a0, a0, a1
14340: 03 25 05 00 lw a0, 0(a0)
14344: 03 26 c4 fc lw a2, -52(s0)
14348: 13 56 e6 00 srli a2, a2, 14
1434c: 13 76 c6 3f andi a2, a2, 1020
14350: 33 06 d6 00 add a2, a2, a3
14354: 03 26 06 00 lw a2, 0(a2)
14358: 33 45 c5 00 xor a0, a0, a2
1435c: 03 26 84 fc lw a2, -56(s0)
14360: 13 56 66 00 srli a2, a2, 6
14364: 13 76 c6 3f andi a2, a2, 1020
14368: 33 06 e6 00 add a2, a2, a4
1436c: 03 26 06 00 lw a2, 0(a2)
14370: 33 45 c5 00 xor a0, a0, a2
14374: 03 46 44 fd lbu a2, -44(s0)
14378: 13 16 26 00 slli a2, a2, 2
1437c: 33 06 f6 00 add a2, a2, a5
14380: 03 26 06 00 lw a2, 0(a2)
14384: 33 45 c5 00 xor a0, a0, a2
14388: 03 26 44 ff lw a2, -12(s0)
1438c: 03 26 46 00 lw a2, 4(a2)
14390: 33 45 c5 00 xor a0, a0, a2
14394: 23 20 a4 fe sw a0, -32(s0)
14398: 03 25 c4 fc lw a0, -52(s0)
1439c: 13 55 65 01 srli a0, a0, 22
143a0: 13 75 c5 3f andi a0, a0, 1020
143a4: 33 05 b5 00 add a0, a0, a1
143a8: 03 25 05 00 lw a0, 0(a0)
143ac: 03 26 84 fc lw a2, -56(s0)
143b0: 13 56 e6 00 srli a2, a2, 14
143b4: 13 76 c6 3f andi a2, a2, 1020
143b8: 33 06 d6 00 add a2, a2, a3
143bc: 03 26 06 00 lw a2, 0(a2)
143c0: 33 45 c5 00 xor a0, a0, a2
143c4: 03 26 44 fd lw a2, -44(s0)
143c8: 13 56 66 00 srli a2, a2, 6
143cc: 13 76 c6 3f andi a2, a2, 1020
143d0: 33 06 e6 00 add a2, a2, a4
143d4: 03 26 06 00 lw a2, 0(a2)
143d8: 33 45 c5 00 xor a0, a0, a2
143dc: 03 46 04 fd lbu a2, -48(s0)
143e0: 13 16 26 00 slli a2, a2, 2
143e4: 33 06 f6 00 add a2, a2, a5
143e8: 03 26 06 00 lw a2, 0(a2)
143ec: 33 45 c5 00 xor a0, a0, a2
143f0: 03 26 44 ff lw a2, -12(s0)
143f4: 03 26 86 00 lw a2, 8(a2)
143f8: 33 45 c5 00 xor a0, a0, a2
143fc: 23 2e a4 fc sw a0, -36(s0)
14400: 03 25 84 fc lw a0, -56(s0)
14404: 13 55 65 01 srli a0, a0, 22
14408: 13 75 c5 3f andi a0, a0, 1020
1440c: 33 05 b5 00 add a0, a0, a1
14410: 03 25 05 00 lw a0, 0(a0)
14414: 83 25 44 fd lw a1, -44(s0)
14418: 93 d5 e5 00 srli a1, a1, 14
1441c: 93 f5 c5 3f andi a1, a1, 1020
14420: b3 85 d5 00 add a1, a1, a3
14424: 83 a5 05 00 lw a1, 0(a1)
14428: 33 45 b5 00 xor a0, a0, a1
1442c: 83 25 04 fd lw a1, -48(s0)
14430: 93 d5 65 00 srli a1, a1, 6
14434: 93 f5 c5 3f andi a1, a1, 1020
14438: b3 85 e5 00 add a1, a1, a4
1443c: 83 a5 05 00 lw a1, 0(a1)
14440: 33 45 b5 00 xor a0, a0, a1
14444: 83 45 c4 fc lbu a1, -52(s0)
14448: 93 95 25 00 slli a1, a1, 2
1444c: b3 85 f5 00 add a1, a1, a5
14450: 83 a5 05 00 lw a1, 0(a1)
14454: 33 45 b5 00 xor a0, a0, a1
14458: 83 25 44 ff lw a1, -12(s0)
1445c: 83 a5 c5 00 lw a1, 12(a1)
14460: 33 45 b5 00 xor a0, a0, a1
14464: 23 2c a4 fc sw a0, -40(s0)
14468: 6f f0 9f c5 jal zero, -936
1446c: 03 25 44 fd lw a0, -44(s0)
14470: 13 55 65 01 srli a0, a0, 22
14474: 13 75 c5 3f andi a0, a0, 1020
14478: b7 15 01 00 lui a1, 17
1447c: 93 85 85 0b addi a1, a1, 184
14480: 13 86 35 00 addi a2, a1, 3
14484: 33 05 c5 00 add a0, a0, a2
14488: 03 45 05 00 lbu a0, 0(a0)
1448c: 13 15 85 01 slli a0, a0, 24
14490: 83 26 04 fd lw a3, -48(s0)
14494: 93 d6 e6 00 srli a3, a3, 14
14498: 93 f6 c6 3f andi a3, a3, 1020
1449c: 13 87 25 00 addi a4, a1, 2
144a0: b3 86 e6 00 add a3, a3, a4
144a4: 83 c6 06 00 lbu a3, 0(a3)
144a8: 93 96 06 01 slli a3, a3, 16
144ac: 33 65 d5 00 or a0, a0, a3
144b0: 83 26 c4 fc lw a3, -52(s0)
144b4: 93 d6 66 00 srli a3, a3, 6
144b8: 93 f6 c6 3f andi a3, a3, 1020
144bc: 93 87 15 00 addi a5, a1, 1
144c0: b3 86 f6 00 add a3, a3, a5
144c4: 83 c6 06 00 lbu a3, 0(a3)
144c8: 93 96 86 00 slli a3, a3, 8
144cc: 33 65 d5 00 or a0, a0, a3
144d0: 83 46 84 fc lbu a3, -56(s0)
144d4: 93 96 26 00 slli a3, a3, 2
144d8: b3 86 b6 00 add a3, a3, a1
144dc: 83 c6 06 00 lbu a3, 0(a3)
144e0: 33 65 d5 00 or a0, a0, a3
144e4: 83 26 44 ff lw a3, -12(s0)
144e8: 83 a6 06 00 lw a3, 0(a3)
144ec: 33 45 d5 00 xor a0, a0, a3
144f0: 23 22 a4 fe sw a0, -28(s0)
144f4: 03 45 74 fe lbu a0, -25(s0)
144f8: 83 26 84 fe lw a3, -24(s0)
144fc: 23 80 a6 00 sb a0, 0(a3)
14500: 03 55 64 fe lhu a0, -26(s0)
14504: 83 26 84 fe lw a3, -24(s0)
14508: a3 80 a6 00 sb a0, 1(a3)
1450c: 03 25 44 fe lw a0, -28(s0)
14510: 13 55 85 00 srli a0, a0, 8
14514: 83 26 84 fe lw a3, -24(s0)
14518: 23 81 a6 00 sb a0, 2(a3)
1451c: 03 25 44 fe lw a0, -28(s0)
14520: 83 26 84 fe lw a3, -24(s0)
14524: a3 81 a6 00 sb a0, 3(a3)
14528: 03 25 04 fd lw a0, -48(s0)
1452c: 13 55 65 01 srli a0, a0, 22
14530: 13 75 c5 3f andi a0, a0, 1020
14534: 33 05 c5 00 add a0, a0, a2
14538: 03 45 05 00 lbu a0, 0(a0)
1453c: 13 15 85 01 slli a0, a0, 24
14540: 83 26 c4 fc lw a3, -52(s0)
14544: 93 d6 e6 00 srli a3, a3, 14
14548: 93 f6 c6 3f andi a3, a3, 1020
1454c: b3 86 e6 00 add a3, a3, a4
14550: 83 c6 06 00 lbu a3, 0(a3)
14554: 93 96 06 01 slli a3, a3, 16
14558: 33 65 d5 00 or a0, a0, a3
1455c: 83 26 84 fc lw a3, -56(s0)
14560: 93 d6 66 00 srli a3, a3, 6
14564: 93 f6 c6 3f andi a3, a3, 1020
14568: b3 86 f6 00 add a3, a3, a5
1456c: 83 c6 06 00 lbu a3, 0(a3)
14570: 93 96 86 00 slli a3, a3, 8
14574: 33 65 d5 00 or a0, a0, a3
14578: 83 46 44 fd lbu a3, -44(s0)
1457c: 93 96 26 00 slli a3, a3, 2
14580: b3 86 b6 00 add a3, a3, a1
14584: 83 c6 06 00 lbu a3, 0(a3)
14588: 33 65 d5 00 or a0, a0, a3
1458c: 83 26 44 ff lw a3, -12(s0)
14590: 83 a6 46 00 lw a3, 4(a3)
14594: 33 45 d5 00 xor a0, a0, a3
14598: 23 20 a4 fe sw a0, -32(s0)
1459c: 03 45 34 fe lbu a0, -29(s0)
145a0: 83 26 84 fe lw a3, -24(s0)
145a4: 23 82 a6 00 sb a0, 4(a3)
145a8: 03 55 24 fe lhu a0, -30(s0)
145ac: 83 26 84 fe lw a3, -24(s0)
145b0: a3 82 a6 00 sb a0, 5(a3)
145b4: 03 25 04 fe lw a0, -32(s0)
145b8: 13 55 85 00 srli a0, a0, 8
145bc: 83 26 84 fe lw a3, -24(s0)
145c0: 23 83 a6 00 sb a0, 6(a3)
145c4: 03 25 04 fe lw a0, -32(s0)
145c8: 83 26 84 fe lw a3, -24(s0)
145cc: a3 83 a6 00 sb a0, 7(a3)
145d0: 03 25 c4 fc lw a0, -52(s0)
145d4: 13 55 65 01 srli a0, a0, 22
145d8: 13 75 c5 3f andi a0, a0, 1020
145dc: 33 05 c5 00 add a0, a0, a2
145e0: 03 45 05 00 lbu a0, 0(a0)
145e4: 13 15 85 01 slli a0, a0, 24
145e8: 83 26 84 fc lw a3, -56(s0)
145ec: 93 d6 e6 00 srli a3, a3, 14
145f0: 93 f6 c6 3f andi a3, a3, 1020
145f4: b3 86 e6 00 add a3, a3, a4
145f8: 83 c6 06 00 lbu a3, 0(a3)
145fc: 93 96 06 01 slli a3, a3, 16
14600: 33 65 d5 00 or a0, a0, a3
14604: 83 26 44 fd lw a3, -44(s0)
14608: 93 d6 66 00 srli a3, a3, 6
1460c: 93 f6 c6 3f andi a3, a3, 1020
14610: b3 86 f6 00 add a3, a3, a5
14614: 83 c6 06 00 lbu a3, 0(a3)
14618: 93 96 86 00 slli a3, a3, 8
1461c: 33 65 d5 00 or a0, a0, a3
14620: 83 46 04 fd lbu a3, -48(s0)
14624: 93 96 26 00 slli a3, a3, 2
14628: b3 86 b6 00 add a3, a3, a1
1462c: 83 c6 06 00 lbu a3, 0(a3)
14630: 33 65 d5 00 or a0, a0, a3
14634: 83 26 44 ff lw a3, -12(s0)
14638: 83 a6 86 00 lw a3, 8(a3)
1463c: 33 45 d5 00 xor a0, a0, a3
14640: 23 2e a4 fc sw a0, -36(s0)
14644: 03 45 f4 fd lbu a0, -33(s0)
14648: 83 26 84 fe lw a3, -24(s0)
1464c: 23 84 a6 00 sb a0, 8(a3)
14650: 03 55 e4 fd lhu a0, -34(s0)
14654: 83 26 84 fe lw a3, -24(s0)
14658: a3 84 a6 00 sb a0, 9(a3)
1465c: 03 25 c4 fd lw a0, -36(s0)
14660: 13 55 85 00 srli a0, a0, 8
14664: 83 26 84 fe lw a3, -24(s0)
14668: 23 85 a6 00 sb a0, 10(a3)
1466c: 03 25 c4 fd lw a0, -36(s0)
14670: 83 26 84 fe lw a3, -24(s0)
14674: a3 85 a6 00 sb a0, 11(a3)
14678: 03 25 84 fc lw a0, -56(s0)
1467c: 13 55 65 01 srli a0, a0, 22
14680: 13 75 c5 3f andi a0, a0, 1020
14684: 33 05 c5 00 add a0, a0, a2
14688: 03 45 05 00 lbu a0, 0(a0)
1468c: 13 15 85 01 slli a0, a0, 24
14690: 03 26 44 fd lw a2, -44(s0)
14694: 13 56 e6 00 srli a2, a2, 14
14698: 13 76 c6 3f andi a2, a2, 1020
1469c: 33 06 e6 00 add a2, a2, a4
146a0: 03 46 06 00 lbu a2, 0(a2)
146a4: 13 16 06 01 slli a2, a2, 16
146a8: 33 65 c5 00 or a0, a0, a2
146ac: 03 26 04 fd lw a2, -48(s0)
146b0: 13 56 66 00 srli a2, a2, 6
146b4: 13 76 c6 3f andi a2, a2, 1020
146b8: 33 06 f6 00 add a2, a2, a5
146bc: 03 46 06 00 lbu a2, 0(a2)
146c0: 13 16 86 00 slli a2, a2, 8
146c4: 33 65 c5 00 or a0, a0, a2
146c8: 03 46 c4 fc lbu a2, -52(s0)
146cc: 13 16 26 00 slli a2, a2, 2
146d0: b3 05 b6 00 add a1, a2, a1
146d4: 83 c5 05 00 lbu a1, 0(a1)
146d8: 33 65 b5 00 or a0, a0, a1
146dc: 83 25 44 ff lw a1, -12(s0)
146e0: 83 a5 c5 00 lw a1, 12(a1)
146e4: 33 45 b5 00 xor a0, a0, a1
146e8: 23 2c a4 fc sw a0, -40(s0)
146ec: 03 45 b4 fd lbu a0, -37(s0)
146f0: 83 25 84 fe lw a1, -24(s0)
146f4: 23 86 a5 00 sb a0, 12(a1)
146f8: 03 55 a4 fd lhu a0, -38(s0)
146fc: 83 25 84 fe lw a1, -24(s0)
14700: a3 86 a5 00 sb a0, 13(a1)
14704: 03 25 84 fd lw a0, -40(s0)
14708: 13 55 85 00 srli a0, a0, 8
1470c: 83 25 84 fe lw a1, -24(s0)
14710: 23 87 a5 00 sb a0, 14(a1)
14714: 03 25 84 fd lw a0, -40(s0)
14718: 83 25 84 fe lw a1, -24(s0)
1471c: a3 87 a5 00 sb a0, 15(a1)
14720: 03 24 81 03 lw s0, 56(sp)
14724: 83 20 c1 03 lw ra, 60(sp)
14728: 13 01 01 04 addi sp, sp, 64
1472c: 67 80 00 00 jalr zero, 0(ra)

00014730 aes_rijndael_key_setup_dec:
14730: 13 01 01 fc addi sp, sp, -64
14734: 23 2e 11 02 sw ra, 60(sp)
14738: 23 2c 81 02 sw s0, 56(sp)
1473c: 13 04 01 04 addi s0, sp, 64
14740: 13 87 06 00 addi a4, a3, 0
14744: 93 07 06 00 addi a5, a2, 0
14748: 23 28 a4 fe sw a0, -16(s0)
1474c: 23 26 b4 fe sw a1, -20(s0)
14750: 23 22 d4 fe sw a3, -28(s0)
14754: 23 20 c4 fe sw a2, -32(s0)
14758: 03 25 04 ff lw a0, -16(s0)
1475c: 83 25 c4 fe lw a1, -20(s0)
14760: 83 26 44 fe lw a3, -28(s0)
14764: 03 26 04 fe lw a2, -32(s0)
14768: 23 26 e4 fc sw a4, -52(s0)
1476c: 23 24 f4 fc sw a5, -56(s0)
14770: 97 f0 ff ff auipc ra, 1048575
14774: e7 80 80 18 jalr ra, 392(ra)
14778: 23 2e a4 fc sw a0, -36(s0)
1477c: 03 25 c4 fd lw a0, -36(s0)
14780: 93 05 f0 ff addi a1, zero, -1
14784: 63 ca a5 00 blt a1, a0, 20
14788: 6f 00 40 00 jal zero, 4
1478c: 03 25 c4 fd lw a0, -36(s0)
14790: 23 2a a4 fe sw a0, -12(s0)
14794: 6f 00 00 2d jal zero, 720
14798: 13 05 00 00 addi a0, zero, 0
1479c: 23 2c a4 fc sw a0, -40(s0)
147a0: 03 25 c4 fd lw a0, -36(s0)
147a4: 13 15 25 00 slli a0, a0, 2
147a8: 23 2a a4 fc sw a0, -44(s0)
147ac: 6f 00 40 00 jal zero, 4
147b0: 03 25 84 fd lw a0, -40(s0)
147b4: 83 25 44 fd lw a1, -44(s0)
147b8: 63 5c b5 16 bge a0, a1, 376
147bc: 6f 00 40 00 jal zero, 4
147c0: 03 25 04 ff lw a0, -16(s0)
147c4: 83 25 84 fd lw a1, -40(s0)
147c8: 93 95 25 00 slli a1, a1, 2
147cc: 33 05 b5 00 add a0, a0, a1
147d0: 03 25 05 00 lw a0, 0(a0)
147d4: 23 28 a4 fc sw a0, -48(s0)
147d8: 03 25 04 ff lw a0, -16(s0)
147dc: 83 25 44 fd lw a1, -44(s0)
147e0: 93 95 25 00 slli a1, a1, 2
147e4: b3 05 b5 00 add a1, a0, a1
147e8: 83 a5 05 00 lw a1, 0(a1)
147ec: 03 26 84 fd lw a2, -40(s0)
147f0: 13 16 26 00 slli a2, a2, 2
147f4: 33 05 c5 00 add a0, a0, a2
147f8: 23 20 b5 00 sw a1, 0(a0)
147fc: 03 25 04 fd lw a0, -48(s0)
14800: 83 25 04 ff lw a1, -16(s0)
14804: 03 26 44 fd lw a2, -44(s0)
14808: 13 16 26 00 slli a2, a2, 2
1480c: b3 85 c5 00 add a1, a1, a2
14810: 23 a0 a5 00 sw a0, 0(a1)
14814: 03 25 04 ff lw a0, -16(s0)
14818: 83 25 84 fd lw a1, -40(s0)
1481c: 93 95 25 00 slli a1, a1, 2
14820: 33 85 a5 00 add a0, a1, a0
14824: 03 25 45 00 lw a0, 4(a0)
14828: 23 28 a4 fc sw a0, -48(s0)
1482c: 03 25 04 ff lw a0, -16(s0)
14830: 83 25 44 fd lw a1, -44(s0)
14834: 93 95 25 00 slli a1, a1, 2
14838: b3 85 a5 00 add a1, a1, a0
1483c: 83 a5 45 00 lw a1, 4(a1)
14840: 03 26 84 fd lw a2, -40(s0)
14844: 13 16 26 00 slli a2, a2, 2
14848: 33 05 a6 00 add a0, a2, a0
1484c: 23 22 b5 00 sw a1, 4(a0)
14850: 03 25 04 fd lw a0, -48(s0)
14854: 83 25 04 ff lw a1, -16(s0)
14858: 03 26 44 fd lw a2, -44(s0)
1485c: 13 16 26 00 slli a2, a2, 2
14860: b3 05 b6 00 add a1, a2, a1
14864: 23 a2 a5 00 sw a0, 4(a1)
14868: 03 25 04 ff lw a0, -16(s0)
1486c: 83 25 84 fd lw a1, -40(s0)
14870: 93 95 25 00 slli a1, a1, 2
14874: 33 85 a5 00 add a0, a1, a0
14878: 03 25 85 00 lw a0, 8(a0)
1487c: 23 28 a4 fc sw a0, -48(s0)
14880: 03 25 04 ff lw a0, -16(s0)
14884: 83 25 44 fd lw a1, -44(s0)
14888: 93 95 25 00 slli a1, a1, 2
1488c: b3 85 a5 00 add a1, a1, a0
14890: 83 a5 85 00 lw a1, 8(a1)
14894: 03 26 84 fd lw a2, -40(s0)
14898: 13 16 26 00 slli a2, a2, 2
1489c: 33 05 a6 00 add a0, a2, a0
148a0: 23 24 b5 00 sw a1, 8(a0)
148a4: 03 25 04 fd lw a0, -48(s0)
148a8: 83 25 04 ff lw a1, -16(s0)
148ac: 03 26 44 fd lw a2, -44(s0)
148b0: 13 16 26 00 slli a2, a2, 2
148b4: b3 05 b6 00 add a1, a2, a1
148b8: 23 a4 a5 00 sw a0, 8(a1)
148bc: 03 25 04 ff lw a0, -16(s0)
148c0: 83 25 84 fd lw a1, -40(s0)
148c4: 93 95 25 00 slli a1, a1, 2
148c8: 33 85 a5 00 add a0, a1, a0
148cc: 03 25 c5 00 lw a0, 12(a0)
148d0: 23 28 a4 fc sw a0, -48(s0)
148d4: 03 25 04 ff lw a0, -16(s0)
148d8: 83 25 44 fd lw a1, -44(s0)
148dc: 93 95 25 00 slli a1, a1, 2
148e0: b3 85 a5 00 add a1, a1, a0
148e4: 83 a5 c5 00 lw a1, 12(a1)
148e8: 03 26 84 fd lw a2, -40(s0)
148ec: 13 16 26 00 slli a2, a2, 2
148f0: 33 05 a6 00 add a0, a2, a0
148f4: 23 26 b5 00 sw a1, 12(a0)
148f8: 03 25 04 fd lw a0, -48(s0)
148fc: 83 25 04 ff lw a1, -16(s0)
14900: 03 26 44 fd lw a2, -44(s0)
14904: 13 16 26 00 slli a2, a2, 2
14908: b3 05 b6 00 add a1, a2, a1
1490c: 23 a6 a5 00 sw a0, 12(a1)
14910: 6f 00 40 00 jal zero, 4
14914: 03 25 84 fd lw a0, -40(s0)
14918: 13 05 45 00 addi a0, a0, 4
1491c: 23 2c a4 fc sw a0, -40(s0)
14920: 03 25 44 fd lw a0, -44(s0)
14924: 13 05 c5 ff addi a0, a0, -4
14928: 23 2a a4 fc sw a0, -44(s0)
1492c: 6f f0 5f e8 jal zero, -380
14930: 13 05 10 00 addi a0, zero, 1
14934: 23 2c a4 fc sw a0, -40(s0)
14938: 6f 00 40 00 jal zero, 4
1493c: 03 25 84 fd lw a0, -40(s0)
14940: 83 25 c4 fd lw a1, -36(s0)
14944: 63 5a b5 10 bge a0, a1, 276
14948: 6f 00 40 00 jal zero, 4
1494c: 03 25 04 ff lw a0, -16(s0)
14950: 13 05 05 01 addi a0, a0, 16
14954: 23 28 a4 fe sw a0, -16(s0)
14958: 13 05 00 00 addi a0, zero, 0
1495c: 23 2a a4 fc sw a0, -44(s0)
14960: 6f 00 40 00 jal zero, 4
14964: 03 25 44 fd lw a0, -44(s0)
14968: 93 05 30 00 addi a1, zero, 3
1496c: 63 cc a5 0c blt a1, a0, 216
14970: 6f 00 40 00 jal zero, 4
14974: 03 25 04 ff lw a0, -16(s0)
14978: 83 25 44 fd lw a1, -44(s0)
1497c: 93 95 25 00 slli a1, a1, 2
14980: 33 05 b5 00 add a0, a0, a1
14984: 83 25 05 00 lw a1, 0(a0)
14988: 13 d6 65 01 srli a2, a1, 22
1498c: 13 76 c6 3f andi a2, a2, 1020
14990: b7 16 01 00 lui a3, 17
14994: 93 86 86 0b addi a3, a3, 184
14998: 33 06 d6 00 add a2, a2, a3
1499c: 03 46 06 00 lbu a2, 0(a2)
149a0: 13 16 26 00 slli a2, a2, 2
149a4: 37 17 01 00 lui a4, 17
149a8: 13 07 87 4b addi a4, a4, 1208
149ac: 33 06 e6 00 add a2, a2, a4
149b0: 03 26 06 00 lw a2, 0(a2)
149b4: 13 d7 e5 00 srli a4, a1, 14
149b8: 13 77 c7 3f andi a4, a4, 1020
149bc: 33 07 d7 00 add a4, a4, a3
149c0: 03 47 07 00 lbu a4, 0(a4)
149c4: 13 17 27 00 slli a4, a4, 2
149c8: b7 27 01 00 lui a5, 18
149cc: 93 87 87 8b addi a5, a5, -1864
149d0: 33 07 f7 00 add a4, a4, a5
149d4: 03 27 07 00 lw a4, 0(a4)
149d8: 33 46 e6 00 xor a2, a2, a4
149dc: 13 d7 65 00 srli a4, a1, 6
149e0: 13 77 c7 3f andi a4, a4, 1020
149e4: 33 07 d7 00 add a4, a4, a3
149e8: 03 47 07 00 lbu a4, 0(a4)
149ec: 13 17 27 00 slli a4, a4, 2
149f0: b7 27 01 00 lui a5, 18
149f4: 93 87 87 cb addi a5, a5, -840
149f8: 33 07 f7 00 add a4, a4, a5
149fc: 03 27 07 00 lw a4, 0(a4)
14a00: 33 46 e6 00 xor a2, a2, a4
14a04: 93 f5 f5 0f andi a1, a1, 255
14a08: 93 95 25 00 slli a1, a1, 2
14a0c: b3 85 d5 00 add a1, a1, a3
14a10: 83 c5 05 00 lbu a1, 0(a1)
14a14: 93 95 25 00 slli a1, a1, 2
14a18: b7 26 01 00 lui a3, 18
14a1c: 93 86 86 0b addi a3, a3, 184
14a20: b3 85 d5 00 add a1, a1, a3
14a24: 83 a5 05 00 lw a1, 0(a1)
14a28: b3 45 b6 00 xor a1, a2, a1
14a2c: 23 20 b5 00 sw a1, 0(a0)
14a30: 6f 00 40 00 jal zero, 4
14a34: 03 25 44 fd lw a0, -44(s0)
14a38: 13 05 15 00 addi a0, a0, 1
14a3c: 23 2a a4 fc sw a0, -44(s0)
14a40: 6f f0 5f f2 jal zero, -220
14a44: 6f 00 40 00 jal zero, 4
14a48: 03 25 84 fd lw a0, -40(s0)
14a4c: 13 05 15 00 addi a0, a0, 1
14a50: 23 2c a4 fc sw a0, -40(s0)
14a54: 6f f0 9f ee jal zero, -280
14a58: 03 25 c4 fd lw a0, -36(s0)
14a5c: 23 2a a4 fe sw a0, -12(s0)
14a60: 6f 00 40 00 jal zero, 4
14a64: 03 25 44 ff lw a0, -12(s0)
14a68: 03 24 81 03 lw s0, 56(sp)
14a6c: 83 20 c1 03 lw ra, 60(sp)
14a70: 13 01 01 04 addi sp, sp, 64
14a74: 67 80 00 00 jalr zero, 0(ra)

00014a78 aes_rijndael_decrypt:
14a78: 13 01 01 fc addi sp, sp, -64
14a7c: 23 2e 11 02 sw ra, 60(sp)
14a80: 23 2c 81 02 sw s0, 56(sp)
14a84: 13 04 01 04 addi s0, sp, 64
14a88: 23 2a a4 fe sw a0, -12(s0)
14a8c: 23 28 b4 fe sw a1, -16(s0)
14a90: 23 26 c4 fe sw a2, -20(s0)
14a94: 23 24 d4 fe sw a3, -24(s0)
14a98: 03 25 c4 fe lw a0, -20(s0)
14a9c: 83 05 05 00 lb a1, 0(a0)
14aa0: 93 95 85 01 slli a1, a1, 24
14aa4: 03 46 15 00 lbu a2, 1(a0)
14aa8: 13 16 06 01 slli a2, a2, 16
14aac: b3 e5 c5 00 or a1, a1, a2
14ab0: 03 46 25 00 lbu a2, 2(a0)
14ab4: 13 16 86 00 slli a2, a2, 8
14ab8: b3 e5 c5 00 or a1, a1, a2
14abc: 03 45 35 00 lbu a0, 3(a0)
14ac0: 33 e5 a5 00 or a0, a1, a0
14ac4: 83 25 44 ff lw a1, -12(s0)
14ac8: 83 a5 05 00 lw a1, 0(a1)
14acc: 33 45 b5 00 xor a0, a0, a1
14ad0: 23 22 a4 fe sw a0, -28(s0)
14ad4: 03 25 c4 fe lw a0, -20(s0)
14ad8: 83 05 45 00 lb a1, 4(a0)
14adc: 93 95 85 01 slli a1, a1, 24
14ae0: 03 46 55 00 lbu a2, 5(a0)
14ae4: 13 16 06 01 slli a2, a2, 16
14ae8: b3 e5 c5 00 or a1, a1, a2
14aec: 03 46 65 00 lbu a2, 6(a0)
14af0: 13 16 86 00 slli a2, a2, 8
14af4: b3 e5 c5 00 or a1, a1, a2
14af8: 03 45 75 00 lbu a0, 7(a0)
14afc: 33 e5 a5 00 or a0, a1, a0
14b00: 83 25 44 ff lw a1, -12(s0)
14b04: 83 a5 45 00 lw a1, 4(a1)
14b08: 33 45 b5 00 xor a0, a0, a1
14b0c: 23 20 a4 fe sw a0, -32(s0)
14b10: 03 25 c4 fe lw a0, -20(s0)
14b14: 83 05 85 00 lb a1, 8(a0)
14b18: 93 95 85 01 slli a1, a1, 24
14b1c: 03 46 95 00 lbu a2, 9(a0)
14b20: 13 16 06 01 slli a2, a2, 16
14b24: b3 e5 c5 00 or a1, a1, a2
14b28: 03 46 a5 00 lbu a2, 10(a0)
14b2c: 13 16 86 00 slli a2, a2, 8
14b30: b3 e5 c5 00 or a1, a1, a2
14b34: 03 45 b5 00 lbu a0, 11(a0)
14b38: 33 e5 a5 00 or a0, a1, a0
14b3c: 83 25 44 ff lw a1, -12(s0)
14b40: 83 a5 85 00 lw a1, 8(a1)
14b44: 33 45 b5 00 xor a0, a0, a1
14b48: 23 2e a4 fc sw a0, -36(s0)
14b4c: 03 25 c4 fe lw a0, -20(s0)
14b50: 83 05 c5 00 lb a1, 12(a0)
14b54: 93 95 85 01 slli a1, a1, 24
14b58: 03 46 d5 00 lbu a2, 13(a0)
14b5c: 13 16 06 01 slli a2, a2, 16
14b60: b3 e5 c5 00 or a1, a1, a2
14b64: 03 46 e5 00 lbu a2, 14(a0)
14b68: 13 16 86 00 slli a2, a2, 8
14b6c: b3 e5 c5 00 or a1, a1, a2
14b70: 03 45 f5 00 lbu a0, 15(a0)
14b74: 33 e5 a5 00 or a0, a1, a0
14b78: 83 25 44 ff lw a1, -12(s0)
14b7c: 83 a5 c5 00 lw a1, 12(a1)
14b80: 33 45 b5 00 xor a0, a0, a1
14b84: 23 2c a4 fc sw a0, -40(s0)
14b88: 03 25 04 ff lw a0, -16(s0)
14b8c: 13 55 15 40 srai a0, a0, 1
14b90: 23 22 a4 fc sw a0, -60(s0)
14b94: 6f 00 40 00 jal zero, 4
14b98: 03 25 44 fe lw a0, -28(s0)
14b9c: 13 55 65 01 srli a0, a0, 22
14ba0: 13 75 c5 3f andi a0, a0, 1020
14ba4: b7 15 01 00 lui a1, 17
14ba8: 93 85 85 4b addi a1, a1, 1208
14bac: 33 05 b5 00 add a0, a0, a1
14bb0: 03 25 05 00 lw a0, 0(a0)
14bb4: 03 26 84 fd lw a2, -40(s0)
14bb8: b7 26 01 00 lui a3, 18
14bbc: 93 86 86 8b addi a3, a3, -1864
14bc0: 13 56 e6 00 srli a2, a2, 14
14bc4: 13 76 c6 3f andi a2, a2, 1020
14bc8: 33 06 d6 00 add a2, a2, a3
14bcc: 03 26 06 00 lw a2, 0(a2)
14bd0: 33 45 c5 00 xor a0, a0, a2
14bd4: 03 26 c4 fd lw a2, -36(s0)
14bd8: 37 27 01 00 lui a4, 18
14bdc: 13 07 87 cb addi a4, a4, -840
14be0: 13 56 66 00 srli a2, a2, 6
14be4: 13 76 c6 3f andi a2, a2, 1020
14be8: 33 06 e6 00 add a2, a2, a4
14bec: 03 26 06 00 lw a2, 0(a2)
14bf0: 33 45 c5 00 xor a0, a0, a2
14bf4: 03 46 04 fe lbu a2, -32(s0)
14bf8: b7 27 01 00 lui a5, 18
14bfc: 93 87 87 0b addi a5, a5, 184
14c00: 13 16 26 00 slli a2, a2, 2
14c04: 33 06 f6 00 add a2, a2, a5
14c08: 03 26 06 00 lw a2, 0(a2)
14c0c: 33 45 c5 00 xor a0, a0, a2
14c10: 03 26 44 ff lw a2, -12(s0)
14c14: 03 26 06 01 lw a2, 16(a2)
14c18: 33 45 c5 00 xor a0, a0, a2
14c1c: 23 2a a4 fc sw a0, -44(s0)
14c20: 03 25 04 fe lw a0, -32(s0)
14c24: 13 55 65 01 srli a0, a0, 22
14c28: 13 75 c5 3f andi a0, a0, 1020
14c2c: 33 05 b5 00 add a0, a0, a1
14c30: 03 25 05 00 lw a0, 0(a0)
14c34: 03 26 44 fe lw a2, -28(s0)
14c38: 13 56 e6 00 srli a2, a2, 14
14c3c: 13 76 c6 3f andi a2, a2, 1020
14c40: 33 06 d6 00 add a2, a2, a3
14c44: 03 26 06 00 lw a2, 0(a2)
14c48: 33 45 c5 00 xor a0, a0, a2
14c4c: 03 26 84 fd lw a2, -40(s0)
14c50: 13 56 66 00 srli a2, a2, 6
14c54: 13 76 c6 3f andi a2, a2, 1020
14c58: 33 06 e6 00 add a2, a2, a4
14c5c: 03 26 06 00 lw a2, 0(a2)
14c60: 33 45 c5 00 xor a0, a0, a2
14c64: 03 46 c4 fd lbu a2, -36(s0)
14c68: 13 16 26 00 slli a2, a2, 2
14c6c: 33 06 f6 00 add a2, a2, a5
14c70: 03 26 06 00 lw a2, 0(a2)
14c74: 33 45 c5 00 xor a0, a0, a2
14c78: 03 26 44 ff lw a2, -12(s0)
14c7c: 03 26 46 01 lw a2, 20(a2)
14c80: 33 45 c5 00 xor a0, a0, a2
14c84: 23 28 a4 fc sw a0, -48(s0)
14c88: 03 25 c4 fd lw a0, -36(s0)
14c8c: 13 55 65 01 srli a0, a0, 22
14c90: 13 75 c5 3f andi a0, a0, 1020
14c94: 33 05 b5 00 add a0, a0, a1
14c98: 03 25 05 00 lw a0, 0(a0)
14c9c: 03 26 04 fe lw a2, -32(s0)
14ca0: 13 56 e6 00 srli a2, a2, 14
14ca4: 13 76 c6 3f andi a2, a2, 1020
14ca8: 33 06 d6 00 add a2, a2, a3
14cac: 03 26 06 00 lw a2, 0(a2)
14cb0: 33 45 c5 00 xor a0, a0, a2
14cb4: 03 26 44 fe lw a2, -28(s0)
14cb8: 13 56 66 00 srli a2, a2, 6
14cbc: 13 76 c6 3f andi a2, a2, 1020
14cc0: 33 06 e6 00 add a2, a2, a4
14cc4: 03 26 06 00 lw a2, 0(a2)
14cc8: 33 45 c5 00 xor a0, a0, a2
14ccc: 03 46 84 fd lbu a2, -40(s0)
14cd0: 13 16 26 00 slli a2, a2, 2
14cd4: 33 06 f6 00 add a2, a2, a5
14cd8: 03 26 06 00 lw a2, 0(a2)
14cdc: 33 45 c5 00 xor a0, a0, a2
14ce0: 03 26 44 ff lw a2, -12(s0)
14ce4: 03 26 86 01 lw a2, 24(a2)
14ce8: 33 45 c5 00 xor a0, a0, a2
14cec: 23 26 a4 fc sw a0, -52(s0)
14cf0: 03 25 84 fd lw a0, -40(s0)
14cf4: 13 55 65 01 srli a0, a0, 22
14cf8: 13 75 c5 3f andi a0, a0, 1020
14cfc: 33 05 b5 00 add a0, a0, a1
14d00: 03 25 05 00 lw a0, 0(a0)
14d04: 83 25 c4 fd lw a1, -36(s0)
14d08: 93 d5 e5 00 srli a1, a1, 14
14d0c: 93 f5 c5 3f andi a1, a1, 1020
14d10: b3 85 d5 00 add a1, a1, a3
14d14: 83 a5 05 00 lw a1, 0(a1)
14d18: 33 45 b5 00 xor a0, a0, a1
14d1c: 83 25 04 fe lw a1, -32(s0)
14d20: 93 d5 65 00 srli a1, a1, 6
14d24: 93 f5 c5 3f andi a1, a1, 1020
14d28: b3 85 e5 00 add a1, a1, a4
14d2c: 83 a5 05 00 lw a1, 0(a1)
14d30: 33 45 b5 00 xor a0, a0, a1
14d34: 83 45 44 fe lbu a1, -28(s0)
14d38: 93 95 25 00 slli a1, a1, 2
14d3c: b3 85 f5 00 add a1, a1, a5
14d40: 83 a5 05 00 lw a1, 0(a1)
14d44: 33 45 b5 00 xor a0, a0, a1
14d48: 83 25 44 ff lw a1, -12(s0)
14d4c: 83 a5 c5 01 lw a1, 28(a1)
14d50: 33 45 b5 00 xor a0, a0, a1
14d54: 23 24 a4 fc sw a0, -56(s0)
14d58: 03 25 44 ff lw a0, -12(s0)
14d5c: 13 05 05 02 addi a0, a0, 32
14d60: 23 2a a4 fe sw a0, -12(s0)
14d64: 03 25 44 fc lw a0, -60(s0)
14d68: 13 05 f5 ff addi a0, a0, -1
14d6c: 23 22 a4 fc sw a0, -60(s0)
14d70: 93 05 00 00 addi a1, zero, 0
14d74: 63 16 b5 00 bne a0, a1, 12
14d78: 6f 00 40 00 jal zero, 4
14d7c: 6f 00 80 1c jal zero, 456
14d80: 03 25 44 fd lw a0, -44(s0)
14d84: 13 55 65 01 srli a0, a0, 22
14d88: 13 75 c5 3f andi a0, a0, 1020
14d8c: b7 15 01 00 lui a1, 17
14d90: 93 85 85 4b addi a1, a1, 1208
14d94: 33 05 b5 00 add a0, a0, a1
14d98: 03 25 05 00 lw a0, 0(a0)
14d9c: 03 26 84 fc lw a2, -56(s0)
14da0: b7 26 01 00 lui a3, 18
14da4: 93 86 86 8b addi a3, a3, -1864
14da8: 13 56 e6 00 srli a2, a2, 14
14dac: 13 76 c6 3f andi a2, a2, 1020
14db0: 33 06 d6 00 add a2, a2, a3
14db4: 03 26 06 00 lw a2, 0(a2)
14db8: 33 45 c5 00 xor a0, a0, a2
14dbc: 03 26 c4 fc lw a2, -52(s0)
14dc0: 37 27 01 00 lui a4, 18
14dc4: 13 07 87 cb addi a4, a4, -840
14dc8: 13 56 66 00 srli a2, a2, 6
14dcc: 13 76 c6 3f andi a2, a2, 1020
14dd0: 33 06 e6 00 add a2, a2, a4
14dd4: 03 26 06 00 lw a2, 0(a2)
14dd8: 33 45 c5 00 xor a0, a0, a2
14ddc: 03 46 04 fd lbu a2, -48(s0)
14de0: b7 27 01 00 lui a5, 18
14de4: 93 87 87 0b addi a5, a5, 184
14de8: 13 16 26 00 slli a2, a2, 2
14dec: 33 06 f6 00 add a2, a2, a5
14df0: 03 26 06 00 lw a2, 0(a2)
14df4: 33 45 c5 00 xor a0, a0, a2
14df8: 03 26 44 ff lw a2, -12(s0)
14dfc: 03 26 06 00 lw a2, 0(a2)
14e00: 33 45 c5 00 xor a0, a0, a2
14e04: 23 22 a4 fe sw a0, -28(s0)
14e08: 03 25 04 fd lw a0, -48(s0)
14e0c: 13 55 65 01 srli a0, a0, 22
14e10: 13 75 c5 3f andi a0, a0, 1020
14e14: 33 05 b5 00 add a0, a0, a1
14e18: 03 25 05 00 lw a0, 0(a0)
14e1c: 03 26 44 fd lw a2, -44(s0)
14e20: 13 56 e6 00 srli a2, a2, 14
14e24: 13 76 c6 3f andi a2, a2, 1020
14e28: 33 06 d6 00 add a2, a2, a3
14e2c: 03 26 06 00 lw a2, 0(a2)
14e30: 33 45 c5 00 xor a0, a0, a2
14e34: 03 26 84 fc lw a2, -56(s0)
14e38: 13 56 66 00 srli a2, a2, 6
14e3c: 13 76 c6 3f andi a2, a2, 1020
14e40: 33 06 e6 00 add a2, a2, a4
14e44: 03 26 06 00 lw a2, 0(a2)
14e48: 33 45 c5 00 xor a0, a0, a2
14e4c: 03 46 c4 fc lbu a2, -52(s0)
14e50: 13 16 26 00 slli a2, a2, 2
14e54: 33 06 f6 00 add a2, a2, a5
14e58: 03 26 06 00 lw a2, 0(a2)
14e5c: 33 45 c5 00 xor a0, a0, a2
14e60: 03 26 44 ff lw a2, -12(s0)
14e64: 03 26 46 00 lw a2, 4(a2)
14e68: 33 45 c5 00 xor a0, a0, a2
14e6c: 23 20 a4 fe sw a0, -32(s0)
14e70: 03 25 c4 fc lw a0, -52(s0)
14e74: 13 55 65 01 srli a0, a0, 22
14e78: 13 75 c5 3f andi a0, a0, 1020
14e7c: 33 05 b5 00 add a0, a0, a1
14e80: 03 25 05 00 lw a0, 0(a0)
14e84: 03 26 04 fd lw a2, -48(s0)
14e88: 13 56 e6 00 srli a2, a2, 14
14e8c: 13 76 c6 3f andi a2, a2, 1020
14e90: 33 06 d6 00 add a2, a2, a3
14e94: 03 26 06 00 lw a2, 0(a2)
14e98: 33 45 c5 00 xor a0, a0, a2
14e9c: 03 26 44 fd lw a2, -44(s0)
14ea0: 13 56 66 00 srli a2, a2, 6
14ea4: 13 76 c6 3f andi a2, a2, 1020
14ea8: 33 06 e6 00 add a2, a2, a4
14eac: 03 26 06 00 lw a2, 0(a2)
14eb0: 33 45 c5 00 xor a0, a0, a2
14eb4: 03 46 84 fc lbu a2, -56(s0)
14eb8: 13 16 26 00 slli a2, a2, 2
14ebc: 33 06 f6 00 add a2, a2, a5
14ec0: 03 26 06 00 lw a2, 0(a2)
14ec4: 33 45 c5 00 xor a0, a0, a2
14ec8: 03 26 44 ff lw a2, -12(s0)
14ecc: 03 26 86 00 lw a2, 8(a2)
14ed0: 33 45 c5 00 xor a0, a0, a2
14ed4: 23 2e a4 fc sw a0, -36(s0)
14ed8: 03 25 84 fc lw a0, -56(s0)
14edc: 13 55 65 01 srli a0, a0, 22
14ee0: 13 75 c5 3f andi a0, a0, 1020
14ee4: 33 05 b5 00 add a0, a0, a1
14ee8: 03 25 05 00 lw a0, 0(a0)
14eec: 83 25 c4 fc lw a1, -52(s0)
14ef0: 93 d5 e5 00 srli a1, a1, 14
14ef4: 93 f5 c5 3f andi a1, a1, 1020
14ef8: b3 85 d5 00 add a1, a1, a3
14efc: 83 a5 05 00 lw a1, 0(a1)
14f00: 33 45 b5 00 xor a0, a0, a1
14f04: 83 25 04 fd lw a1, -48(s0)
14f08: 93 d5 65 00 srli a1, a1, 6
14f0c: 93 f5 c5 3f andi a1, a1, 1020
14f10: b3 85 e5 00 add a1, a1, a4
14f14: 83 a5 05 00 lw a1, 0(a1)
14f18: 33 45 b5 00 xor a0, a0, a1
14f1c: 83 45 44 fd lbu a1, -44(s0)
14f20: 93 95 25 00 slli a1, a1, 2
14f24: b3 85 f5 00 add a1, a1, a5
14f28: 83 a5 05 00 lw a1, 0(a1)
14f2c: 33 45 b5 00 xor a0, a0, a1
14f30: 83 25 44 ff lw a1, -12(s0)
14f34: 83 a5 c5 00 lw a1, 12(a1)
14f38: 33 45 b5 00 xor a0, a0, a1
14f3c: 23 2c a4 fc sw a0, -40(s0)
14f40: 6f f0 9f c5 jal zero, -936
14f44: 03 25 44 fd lw a0, -44(s0)
14f48: 13 55 65 01 srli a0, a0, 22
14f4c: 13 75 c5 3f andi a0, a0, 1020
14f50: b7 25 01 00 lui a1, 18
14f54: 93 85 85 4b addi a1, a1, 1208
14f58: 13 86 35 00 addi a2, a1, 3
14f5c: 33 05 c5 00 add a0, a0, a2
14f60: 03 45 05 00 lbu a0, 0(a0)
14f64: 13 15 85 01 slli a0, a0, 24
14f68: 83 26 84 fc lw a3, -56(s0)
14f6c: 93 d6 e6 00 srli a3, a3, 14
14f70: 93 f6 c6 3f andi a3, a3, 1020
14f74: 13 87 25 00 addi a4, a1, 2
14f78: b3 86 e6 00 add a3, a3, a4
14f7c: 83 c6 06 00 lbu a3, 0(a3)
14f80: 93 96 06 01 slli a3, a3, 16
14f84: 33 65 d5 00 or a0, a0, a3
14f88: 83 26 c4 fc lw a3, -52(s0)
14f8c: 93 d6 66 00 srli a3, a3, 6
14f90: 93 f6 c6 3f andi a3, a3, 1020
14f94: 93 87 15 00 addi a5, a1, 1
14f98: b3 86 f6 00 add a3, a3, a5
14f9c: 83 c6 06 00 lbu a3, 0(a3)
14fa0: 93 96 86 00 slli a3, a3, 8
14fa4: 33 65 d5 00 or a0, a0, a3
14fa8: 83 46 04 fd lbu a3, -48(s0)
14fac: 93 96 26 00 slli a3, a3, 2
14fb0: b3 86 b6 00 add a3, a3, a1
14fb4: 83 c6 06 00 lbu a3, 0(a3)
14fb8: 33 65 d5 00 or a0, a0, a3
14fbc: 83 26 44 ff lw a3, -12(s0)
14fc0: 83 a6 06 00 lw a3, 0(a3)
14fc4: 33 45 d5 00 xor a0, a0, a3
14fc8: 23 22 a4 fe sw a0, -28(s0)
14fcc: 03 45 74 fe lbu a0, -25(s0)
14fd0: 83 26 84 fe lw a3, -24(s0)
14fd4: 23 80 a6 00 sb a0, 0(a3)
14fd8: 03 55 64 fe lhu a0, -26(s0)
14fdc: 83 26 84 fe lw a3, -24(s0)
14fe0: a3 80 a6 00 sb a0, 1(a3)
14fe4: 03 25 44 fe lw a0, -28(s0)
14fe8: 13 55 85 00 srli a0, a0, 8
14fec: 83 26 84 fe lw a3, -24(s0)
14ff0: 23 81 a6 00 sb a0, 2(a3)
14ff4: 03 25 44 fe lw a0, -28(s0)
14ff8: 83 26 84 fe lw a3, -24(s0)
14ffc: a3 81 a6 00 sb a0, 3(a3)
15000: 03 25 04 fd lw a0, -48(s0)
15004: 13 55 65 01 srli a0, a0, 22
15008: 13 75 c5 3f andi a0, a0, 1020
1500c: 33 05 c5 00 add a0, a0, a2
15010: 03 45 05 00 lbu a0, 0(a0)
15014: 13 15 85 01 slli a0, a0, 24
15018: 83 26 44 fd lw a3, -44(s0)
1501c: 93 d6 e6 00 srli a3, a3, 14
15020: 93 f6 c6 3f andi a3, a3, 1020
15024: b3 86 e6 00 add a3, a3, a4
15028: 83 c6 06 00 lbu a3, 0(a3)
1502c: 93 96 06 01 slli a3, a3, 16
15030: 33 65 d5 00 or a0, a0, a3
15034: 83 26 84 fc lw a3, -56(s0)
15038: 93 d6 66 00 srli a3, a3, 6
1503c: 93 f6 c6 3f andi a3, a3, 1020
15040: b3 86 f6 00 add a3, a3, a5
15044: 83 c6 06 00 lbu a3, 0(a3)
15048: 93 96 86 00 slli a3, a3, 8
1504c: 33 65 d5 00 or a0, a0, a3
15050: 83 46 c4 fc lbu a3, -52(s0)
15054: 93 96 26 00 slli a3, a3, 2
15058: b3 86 b6 00 add a3, a3, a1
1505c: 83 c6 06 00 lbu a3, 0(a3)
15060: 33 65 d5 00 or a0, a0, a3
15064: 83 26 44 ff lw a3, -12(s0)
15068: 83 a6 46 00 lw a3, 4(a3)
1506c: 33 45 d5 00 xor a0, a0, a3
15070: 23 20 a4 fe sw a0, -32(s0)
15074: 03 45 34 fe lbu a0, -29(s0)
15078: 83 26 84 fe lw a3, -24(s0)
1507c: 23 82 a6 00 sb a0, 4(a3)
15080: 03 55 24 fe lhu a0, -30(s0)
15084: 83 26 84 fe lw a3, -24(s0)
15088: a3 82 a6 00 sb a0, 5(a3)
1508c: 03 25 04 fe lw a0, -32(s0)
15090: 13 55 85 00 srli a0, a0, 8
15094: 83 26 84 fe lw a3, -24(s0)
15098: 23 83 a6 00 sb a0, 6(a3)
1509c: 03 25 04 fe lw a0, -32(s0)
150a0: 83 26 84 fe lw a3, -24(s0)
150a4: a3 83 a6 00 sb a0, 7(a3)
150a8: 03 25 c4 fc lw a0, -52(s0)
150ac: 13 55 65 01 srli a0, a0, 22
150b0: 13 75 c5 3f andi a0, a0, 1020
150b4: 33 05 c5 00 add a0, a0, a2
150b8: 03 45 05 00 lbu a0, 0(a0)
150bc: 13 15 85 01 slli a0, a0, 24
150c0: 83 26 04 fd lw a3, -48(s0)
150c4: 93 d6 e6 00 srli a3, a3, 14
150c8: 93 f6 c6 3f andi a3, a3, 1020
150cc: b3 86 e6 00 add a3, a3, a4
150d0: 83 c6 06 00 lbu a3, 0(a3)
150d4: 93 96 06 01 slli a3, a3, 16
150d8: 33 65 d5 00 or a0, a0, a3
150dc: 83 26 44 fd lw a3, -44(s0)
150e0: 93 d6 66 00 srli a3, a3, 6
150e4: 93 f6 c6 3f andi a3, a3, 1020
150e8: b3 86 f6 00 add a3, a3, a5
150ec: 83 c6 06 00 lbu a3, 0(a3)
150f0: 93 96 86 00 slli a3, a3, 8
150f4: 33 65 d5 00 or a0, a0, a3
150f8: 83 46 84 fc lbu a3, -56(s0)
150fc: 93 96 26 00 slli a3, a3, 2
15100: b3 86 b6 00 add a3, a3, a1
15104: 83 c6 06 00 lbu a3, 0(a3)
15108: 33 65 d5 00 or a0, a0, a3
1510c: 83 26 44 ff lw a3, -12(s0)
15110: 83 a6 86 00 lw a3, 8(a3)
15114: 33 45 d5 00 xor a0, a0, a3
15118: 23 2e a4 fc sw a0, -36(s0)
1511c: 03 45 f4 fd lbu a0, -33(s0)
15120: 83 26 84 fe lw a3, -24(s0)
15124: 23 84 a6 00 sb a0, 8(a3)
15128: 03 55 e4 fd lhu a0, -34(s0)
1512c: 83 26 84 fe lw a3, -24(s0)
15130: a3 84 a6 00 sb a0, 9(a3)
15134: 03 25 c4 fd lw a0, -36(s0)
15138: 13 55 85 00 srli a0, a0, 8
1513c: 83 26 84 fe lw a3, -24(s0)
15140: 23 85 a6 00 sb a0, 10(a3)
15144: 03 25 c4 fd lw a0, -36(s0)
15148: 83 26 84 fe lw a3, -24(s0)
1514c: a3 85 a6 00 sb a0, 11(a3)
15150: 03 25 84 fc lw a0, -56(s0)
15154: 13 55 65 01 srli a0, a0, 22
15158: 13 75 c5 3f andi a0, a0, 1020
1515c: 33 05 c5 00 add a0, a0, a2
15160: 03 45 05 00 lbu a0, 0(a0)
15164: 13 15 85 01 slli a0, a0, 24
15168: 03 26 c4 fc lw a2, -52(s0)
1516c: 13 56 e6 00 srli a2, a2, 14
15170: 13 76 c6 3f andi a2, a2, 1020
15174: 33 06 e6 00 add a2, a2, a4
15178: 03 46 06 00 lbu a2, 0(a2)
1517c: 13 16 06 01 slli a2, a2, 16
15180: 33 65 c5 00 or a0, a0, a2
15184: 03 26 04 fd lw a2, -48(s0)
15188: 13 56 66 00 srli a2, a2, 6
1518c: 13 76 c6 3f andi a2, a2, 1020
15190: 33 06 f6 00 add a2, a2, a5
15194: 03 46 06 00 lbu a2, 0(a2)
15198: 13 16 86 00 slli a2, a2, 8
1519c: 33 65 c5 00 or a0, a0, a2
151a0: 03 46 44 fd lbu a2, -44(s0)
151a4: 13 16 26 00 slli a2, a2, 2
151a8: b3 05 b6 00 add a1, a2, a1
151ac: 83 c5 05 00 lbu a1, 0(a1)
151b0: 33 65 b5 00 or a0, a0, a1
151b4: 83 25 44 ff lw a1, -12(s0)
151b8: 83 a5 c5 00 lw a1, 12(a1)
151bc: 33 45 b5 00 xor a0, a0, a1
151c0: 23 2c a4 fc sw a0, -40(s0)
151c4: 03 45 b4 fd lbu a0, -37(s0)
151c8: 83 25 84 fe lw a1, -24(s0)
151cc: 23 86 a5 00 sb a0, 12(a1)
151d0: 03 55 a4 fd lhu a0, -38(s0)
151d4: 83 25 84 fe lw a1, -24(s0)
151d8: a3 86 a5 00 sb a0, 13(a1)
151dc: 03 25 84 fd lw a0, -40(s0)
151e0: 13 55 85 00 srli a0, a0, 8
151e4: 83 25 84 fe lw a1, -24(s0)
151e8: 23 87 a5 00 sb a0, 14(a1)
151ec: 03 25 84 fd lw a0, -40(s0)
151f0: 83 25 84 fe lw a1, -24(s0)
151f4: a3 87 a5 00 sb a0, 15(a1)
151f8: 03 24 81 03 lw s0, 56(sp)
151fc: 83 20 c1 03 lw ra, 60(sp)
15200: 13 01 01 04 addi sp, sp, 64
15204: 67 80 00 00 jalr zero, 0(ra)

00015208 aes_decrypt_init:
15208: 13 01 01 fd addi sp, sp, -48
1520c: 23 26 11 02 sw ra, 44(sp)
15210: 23 24 81 02 sw s0, 40(sp)
15214: 13 04 01 03 addi s0, sp, 48
15218: 93 06 06 00 addi a3, a2, 0
1521c: 13 87 05 00 addi a4, a1, 0
15220: 23 28 a4 fe sw a0, -16(s0)
15224: 23 26 c4 fe sw a2, -20(s0)
15228: 23 24 b4 fe sw a1, -24(s0)
1522c: 03 25 44 fe lw a0, -28(s0)
15230: 93 05 00 00 addi a1, zero, 0
15234: 63 1a b5 00 bne a0, a1, 20
15238: 6f 00 40 00 jal zero, 4
1523c: 13 05 00 00 addi a0, zero, 0
15240: 23 2a a4 fe sw a0, -12(s0)
15244: 6f 00 00 07 jal zero, 112
15248: 03 25 44 fe lw a0, -28(s0)
1524c: 83 25 04 ff lw a1, -16(s0)
15250: 03 26 c4 fe lw a2, -20(s0)
15254: 83 26 84 fe lw a3, -24(s0)
15258: 13 d7 d6 01 srli a4, a3, 29
1525c: 13 16 36 00 slli a2, a2, 3
15260: 33 66 e6 00 or a2, a2, a4
15264: 93 96 36 00 slli a3, a3, 3
15268: 23 2e c4 fc sw a2, -36(s0)
1526c: 13 86 06 00 addi a2, a3, 0
15270: 83 26 c4 fd lw a3, -36(s0)
15274: 97 f0 ff ff auipc ra, 1048575
15278: e7 80 c0 4b jalr ra, 1212(ra)
1527c: 23 20 a4 fe sw a0, -32(s0)
15280: 03 25 04 fe lw a0, -32(s0)
15284: 93 05 f0 ff addi a1, zero, -1
15288: 63 ca a5 00 blt a1, a0, 20
1528c: 6f 00 40 00 jal zero, 4
15290: 13 05 00 00 addi a0, zero, 0
15294: 23 2a a4 fe sw a0, -12(s0)
15298: 6f 00 c0 01 jal zero, 28
1529c: 03 25 04 fe lw a0, -32(s0)
152a0: 83 25 44 fe lw a1, -28(s0)
152a4: 23 a8 a5 0e sw a0, 240(a1)
152a8: 03 25 44 fe lw a0, -28(s0)
152ac: 23 2a a4 fe sw a0, -12(s0)
152b0: 6f 00 40 00 jal zero, 4
152b4: 03 25 44 ff lw a0, -12(s0)
152b8: 03 24 81 02 lw s0, 40(sp)
152bc: 83 20 c1 02 lw ra, 44(sp)
152c0: 13 01 01 03 addi sp, sp, 48
152c4: 67 80 00 00 jalr zero, 0(ra)

000152c8 aes_decrypt:
152c8: 13 01 01 fe addi sp, sp, -32
152cc: 23 2e 11 00 sw ra, 28(sp)
152d0: 23 2c 81 00 sw s0, 24(sp)
152d4: 13 04 01 02 addi s0, sp, 32
152d8: 23 2a a4 fe sw a0, -12(s0)
152dc: 23 28 b4 fe sw a1, -16(s0)
152e0: 23 26 c4 fe sw a2, -20(s0)
152e4: 03 25 44 ff lw a0, -12(s0)
152e8: 23 24 a4 fe sw a0, -24(s0)
152ec: 03 25 44 ff lw a0, -12(s0)
152f0: 83 25 84 fe lw a1, -24(s0)
152f4: 83 a5 05 0f lw a1, 240(a1)
152f8: 03 26 04 ff lw a2, -16(s0)
152fc: 83 26 c4 fe lw a3, -20(s0)
15300: 97 f0 ff ff auipc ra, 1048575
15304: e7 80 80 77 jalr ra, 1912(ra)
15308: 03 24 81 01 lw s0, 24(sp)
1530c: 83 20 c1 01 lw ra, 28(sp)
15310: 13 01 01 02 addi sp, sp, 32
15314: 67 80 00 00 jalr zero, 0(ra)

00015318 aes_decrypt_deinit:
15318: 13 01 01 ff addi sp, sp, -16
1531c: 23 26 11 00 sw ra, 12(sp)
15320: 23 24 81 00 sw s0, 8(sp)
15324: 13 04 01 01 addi s0, sp, 16
15328: 23 2a a4 fe sw a0, -12(s0)
1532c: 03 24 81 00 lw s0, 8(sp)
15330: 83 20 c1 00 lw ra, 12(sp)
15334: 13 01 01 01 addi sp, sp, 16
15338: 67 80 00 00 jalr zero, 0(ra)

0001533c aes_encrypt_init:
1533c: 13 01 01 fd addi sp, sp, -48
15340: 23 26 11 02 sw ra, 44(sp)
15344: 23 24 81 02 sw s0, 40(sp)
15348: 13 04 01 03 addi s0, sp, 48
1534c: 93 06 06 00 addi a3, a2, 0
15350: 13 87 05 00 addi a4, a1, 0
15354: 23 28 a4 fe sw a0, -16(s0)
15358: 23 26 c4 fe sw a2, -20(s0)
1535c: 23 24 b4 fe sw a1, -24(s0)
15360: 03 25 44 fe lw a0, -28(s0)
15364: 93 05 00 00 addi a1, zero, 0
15368: 63 1a b5 00 bne a0, a1, 20
1536c: 6f 00 40 00 jal zero, 4
15370: 13 05 00 00 addi a0, zero, 0
15374: 23 2a a4 fe sw a0, -12(s0)
15378: 6f 00 00 07 jal zero, 112
1537c: 03 25 44 fe lw a0, -28(s0)
15380: 83 25 04 ff lw a1, -16(s0)
15384: 03 26 c4 fe lw a2, -20(s0)
15388: 83 26 84 fe lw a3, -24(s0)
1538c: 13 d7 d6 01 srli a4, a3, 29
15390: 13 16 36 00 slli a2, a2, 3
15394: 33 66 e6 00 or a2, a2, a4
15398: 93 96 36 00 slli a3, a3, 3
1539c: 23 2e c4 fc sw a2, -36(s0)
153a0: 13 86 06 00 addi a2, a3, 0
153a4: 83 26 c4 fd lw a3, -36(s0)
153a8: 97 e0 ff ff auipc ra, 1048574
153ac: e7 80 00 55 jalr ra, 1360(ra)
153b0: 23 20 a4 fe sw a0, -32(s0)
153b4: 03 25 04 fe lw a0, -32(s0)
153b8: 93 05 f0 ff addi a1, zero, -1
153bc: 63 ca a5 00 blt a1, a0, 20
153c0: 6f 00 40 00 jal zero, 4
153c4: 13 05 00 00 addi a0, zero, 0
153c8: 23 2a a4 fe sw a0, -12(s0)
153cc: 6f 00 c0 01 jal zero, 28
153d0: 03 25 04 fe lw a0, -32(s0)
153d4: 83 25 44 fe lw a1, -28(s0)
153d8: 23 a8 a5 0e sw a0, 240(a1)
153dc: 03 25 44 fe lw a0, -28(s0)
153e0: 23 2a a4 fe sw a0, -12(s0)
153e4: 6f 00 40 00 jal zero, 4
153e8: 03 25 44 ff lw a0, -12(s0)
153ec: 03 24 81 02 lw s0, 40(sp)
153f0: 83 20 c1 02 lw ra, 44(sp)
153f4: 13 01 01 03 addi sp, sp, 48
153f8: 67 80 00 00 jalr zero, 0(ra)

000153fc aes_encrypt:
153fc: 13 01 01 fe addi sp, sp, -32
15400: 23 2e 11 00 sw ra, 28(sp)
15404: 23 2c 81 00 sw s0, 24(sp)
15408: 13 04 01 02 addi s0, sp, 32
1540c: 23 2a a4 fe sw a0, -12(s0)
15410: 23 28 b4 fe sw a1, -16(s0)
15414: 23 26 c4 fe sw a2, -20(s0)
15418: 03 25 44 ff lw a0, -12(s0)
1541c: 23 24 a4 fe sw a0, -24(s0)
15420: 03 25 44 ff lw a0, -12(s0)
15424: 83 25 84 fe lw a1, -24(s0)
15428: 83 a5 05 0f lw a1, 240(a1)
1542c: 03 26 04 ff lw a2, -16(s0)
15430: 83 26 c4 fe lw a3, -20(s0)
15434: 97 f0 ff ff auipc ra, 1048575
15438: e7 80 c0 b6 jalr ra, -1172(ra)
1543c: 03 24 81 01 lw s0, 24(sp)
15440: 83 20 c1 01 lw ra, 28(sp)
15444: 13 01 01 02 addi sp, sp, 32
15448: 67 80 00 00 jalr zero, 0(ra)

0001544c aes_encrypt_deinit:
1544c: 13 01 01 ff addi sp, sp, -16
15450: 23 26 11 00 sw ra, 12(sp)
15454: 23 24 81 00 sw s0, 8(sp)
15458: 13 04 01 01 addi s0, sp, 16
1545c: 23 2a a4 fe sw a0, -12(s0)
15460: 03 24 81 00 lw s0, 8(sp)
15464: 83 20 c1 00 lw ra, 12(sp)
15468: 13 01 01 01 addi sp, sp, 16
1546c: 67 80 00 00 jalr zero, 0(ra)

00015470 main:
15470: 13 01 01 fb addi sp, sp, -80
15474: 23 26 11 04 sw ra, 76(sp)
15478: 23 24 81 04 sw s0, 72(sp)
1547c: 13 04 01 05 addi s0, sp, 80
15480: 13 05 00 00 addi a0, zero, 0
15484: 23 2a a4 fe sw a0, -12(s0)
15488: 93 05 10 00 addi a1, zero, 1
1548c: a3 03 b4 fe sb a1, -25(s0)
15490: 23 2e a4 fc sw a0, -36(s0)
15494: 23 2c a4 fc sw a0, -40(s0)
15498: 6f 00 40 00 jal zero, 4
1549c: 03 25 84 fd lw a0, -40(s0)
154a0: 83 25 c4 fd lw a1, -36(s0)
154a4: 13 96 75 00 slli a2, a1, 7
154a8: 13 55 95 01 srli a0, a0, 25
154ac: 33 65 c5 00 or a0, a0, a2
154b0: 93 d5 95 01 srli a1, a1, 25
154b4: 33 65 b5 00 or a0, a0, a1
154b8: 93 05 00 00 addi a1, zero, 0
154bc: 63 18 b5 04 bne a0, a1, 80
154c0: 6f 00 40 00 jal zero, 4
154c4: 03 45 74 fe lbu a0, -25(s0)
154c8: 93 05 70 00 addi a1, zero, 7
154cc: b3 05 b5 02 <unknown>
154d0: 33 45 b5 00 xor a0, a0, a1
154d4: a3 03 a4 fe sb a0, -25(s0)
154d8: 83 25 04 ff lw a1, -16(s0)
154dc: 03 26 84 fd lw a2, -40(s0)
154e0: b3 85 c5 00 add a1, a1, a2
154e4: 23 80 a5 00 sb a0, 0(a1)
154e8: 6f 00 40 00 jal zero, 4
154ec: 03 25 c4 fd lw a0, -36(s0)
154f0: 83 25 84 fd lw a1, -40(s0)
154f4: 13 86 45 00 addi a2, a1, 4
154f8: b3 35 b6 00 sltu a1, a2, a1
154fc: 33 05 b5 00 add a0, a0, a1
15500: 23 2c c4 fc sw a2, -40(s0)
15504: 23 2e a4 fc sw a0, -36(s0)
15508: 6f f0 5f f9 jal zero, -108
1550c: 37 35 01 00 lui a0, 19
15510: 13 05 05 8e addi a0, a0, -1824
15514: 93 05 00 01 addi a1, zero, 16
15518: 13 06 00 00 addi a2, zero, 0
1551c: 23 2a c4 fa sw a2, -76(s0)
15520: 97 00 00 00 auipc ra, 0
15524: e7 80 c0 e1 jalr ra, -484(ra)
15528: 23 2a a4 fc sw a0, -44(s0)
1552c: 03 25 44 fb lw a0, -76(s0)
15530: 23 26 a4 fc sw a0, -52(s0)
15534: 23 24 a4 fc sw a0, -56(s0)
15538: 6f 00 40 00 jal zero, 4
1553c: 03 25 84 fc lw a0, -56(s0)
15540: 83 25 c4 fc lw a1, -52(s0)
15544: 13 96 75 00 slli a2, a1, 7
15548: 13 55 95 01 srli a0, a0, 25
1554c: 33 65 c5 00 or a0, a0, a2
15550: 93 d5 95 01 srli a1, a1, 25
15554: 33 65 b5 00 or a0, a0, a1
15558: 93 05 00 00 addi a1, zero, 0
1555c: 63 16 b5 04 bne a0, a1, 76
15560: 6f 00 40 00 jal zero, 4
15564: 03 25 44 fd lw a0, -44(s0)
15568: 83 25 04 ff lw a1, -16(s0)
1556c: 03 26 84 fc lw a2, -56(s0)
15570: b3 85 c5 00 add a1, a1, a2
15574: 83 26 c4 fe lw a3, -20(s0)
15578: 33 86 c6 00 add a2, a3, a2
1557c: 97 00 00 00 auipc ra, 0
15580: e7 80 00 e8 jalr ra, -384(ra)
15584: 6f 00 40 00 jal zero, 4
15588: 03 25 c4 fc lw a0, -52(s0)
1558c: 83 25 84 fc lw a1, -56(s0)
15590: 13 86 05 01 addi a2, a1, 16
15594: b3 35 b6 00 sltu a1, a2, a1
15598: 33 05 b5 00 add a0, a0, a1
1559c: 23 24 c4 fc sw a2, -56(s0)
155a0: 23 26 a4 fc sw a0, -52(s0)
155a4: 6f f0 9f f9 jal zero, -104
155a8: 03 25 44 fd lw a0, -44(s0)
155ac: 97 00 00 00 auipc ra, 0
155b0: e7 80 00 ea jalr ra, -352(ra)
155b4: 37 35 01 00 lui a0, 19
155b8: 13 05 05 8e addi a0, a0, -1824
155bc: 93 05 00 01 addi a1, zero, 16
155c0: 13 06 00 00 addi a2, zero, 0
155c4: 23 28 c4 fa sw a2, -80(s0)
155c8: 97 00 00 00 auipc ra, 0
155cc: e7 80 00 c4 jalr ra, -960(ra)
155d0: 23 22 a4 fc sw a0, -60(s0)
155d4: 03 25 04 fb lw a0, -80(s0)
155d8: 23 2e a4 fa sw a0, -68(s0)
155dc: 23 2c a4 fa sw a0, -72(s0)
155e0: 6f 00 40 00 jal zero, 4
155e4: 03 25 84 fb lw a0, -72(s0)
155e8: 83 25 c4 fb lw a1, -68(s0)
155ec: 13 96 75 00 slli a2, a1, 7
155f0: 13 55 95 01 srli a0, a0, 25
155f4: 33 65 c5 00 or a0, a0, a2
155f8: 93 d5 95 01 srli a1, a1, 25
155fc: 33 65 b5 00 or a0, a0, a1
15600: 93 05 00 00 addi a1, zero, 0
15604: 63 16 b5 04 bne a0, a1, 76
15608: 6f 00 40 00 jal zero, 4
1560c: 03 25 44 fc lw a0, -60(s0)
15610: 83 25 c4 fe lw a1, -20(s0)
15614: 03 26 84 fb lw a2, -72(s0)
15618: b3 85 c5 00 add a1, a1, a2
1561c: 83 26 84 fe lw a3, -24(s0)
15620: 33 86 c6 00 add a2, a3, a2
15624: 97 00 00 00 auipc ra, 0
15628: e7 80 40 ca jalr ra, -860(ra)
1562c: 6f 00 40 00 jal zero, 4
15630: 03 25 c4 fb lw a0, -68(s0)
15634: 83 25 84 fb lw a1, -72(s0)
15638: 13 86 05 01 addi a2, a1, 16
1563c: b3 35 b6 00 sltu a1, a2, a1
15640: 33 05 b5 00 add a0, a0, a1
15644: 23 2c c4 fa sw a2, -72(s0)
15648: 23 2e a4 fa sw a0, -68(s0)
1564c: 6f f0 9f f9 jal zero, -104
15650: 03 25 44 fc lw a0, -60(s0)
15654: 97 00 00 00 auipc ra, 0
15658: e7 80 40 cc jalr ra, -828(ra)
1565c: 13 05 00 00 addi a0, zero, 0
15660: 03 24 81 04 lw s0, 72(sp)
15664: 83 20 c1 04 lw ra, 76(sp)
15668: 13 01 01 05 addi sp, sp, 80
1566c: 67 80 00 00 jalr zero, 0(ra)
