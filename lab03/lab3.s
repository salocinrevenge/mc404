	.text
	.file	"lab3.c"
	.globl	read                    # -- Begin function read
	.p2align	2
	.type	read,@function
read:                                   # @read
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	addi	s0, sp, 48
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	lw	a2, -20(s0)
	sw	a0, -28(s0)
	sw	a1, -32(s0)
	sw	a2, -36(s0)
	lw	a3, -28(s0)
	lw	a4, -32(s0)
	lw	a5, -36(s0)
	#APP
	mv a0, a3           # file descriptor
mv a1, a4           # buffer 
mv a2, a5           # size 
li a7, 63           # syscall read (63) 
ecall 
mv a6, a0
	#NO_APP
	sw	a6, -24(s0)
	lw	a0, -24(s0)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	read, .Lfunc_end0-read
                                        # -- End function
	.globl	write                   # -- Begin function write
	.p2align	2
	.type	write,@function
write:                                  # @write
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	lw	a2, -20(s0)
	sw	a0, -24(s0)
	sw	a1, -28(s0)
	sw	a2, -32(s0)
	lw	a3, -24(s0)
	lw	a4, -28(s0)
	lw	a5, -32(s0)
	#APP
	mv a0, a3           # file descriptor
mv a1, a4           # buffer 
mv a2, a5           # size 
li a7, 64           # syscall write (64) 
ecall
	#NO_APP
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	write, .Lfunc_end1-write
                                        # -- End function
	.globl	modulo                  # -- Begin function modulo
	.p2align	2
	.type	modulo,@function
modulo:                                 # @modulo
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	addi	a1, zero, -1
	blt	a1, a0, .LBB2_2
	j	.LBB2_1
.LBB2_1:
	lw	a0, -16(s0)
	mv	a1, zero
	sub	a0, a1, a0
	sw	a0, -12(s0)
	j	.LBB2_3
.LBB2_2:
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB2_3
.LBB2_3:
	lw	a0, -12(s0)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	modulo, .Lfunc_end2-modulo
                                        # -- End function
	.globl	removerZeros            # -- Begin function removerZeros
	.p2align	2
	.type	removerZeros,@function
removerZeros:                           # @removerZeros
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	addi	a0, zero, 2
	sw	a0, -20(s0)
	mv	a1, zero
	sw	a1, -24(s0)
	sw	a0, -16(s0)
	j	.LBB3_1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -16(s0)
	addi	a1, zero, 34
	blt	a1, a0, .LBB3_14
	j	.LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addi	a1, zero, 120
	beq	a0, a1, .LBB3_8
	j	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addi	a1, zero, 48
	beq	a0, a1, .LBB3_8
	j	.LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	mv	a1, zero
	beq	a0, a1, .LBB3_8
	j	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addi	a1, zero, 10
	beq	a0, a1, .LBB3_8
	j	.LBB3_6
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addi	a1, zero, 98
	beq	a0, a1, .LBB3_8
	j	.LBB3_7
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	addi	a0, zero, 1
	sw	a0, -24(s0)
	j	.LBB3_8
.LBB3_8:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -24(s0)
	mv	a1, zero
	beq	a0, a1, .LBB3_10
	j	.LBB3_9
.LBB3_9:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	add	a1, a0, a1
	lb	a1, 0(a1)
	lw	a2, -20(s0)
	add	a0, a0, a2
	sb	a1, 0(a0)
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB3_10
.LBB3_10:                               #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addi	a1, zero, 10
	bne	a0, a1, .LBB3_12
	j	.LBB3_11
.LBB3_11:
	j	.LBB3_14
.LBB3_12:                               #   in Loop: Header=BB3_1 Depth=1
	j	.LBB3_13
.LBB3_13:                               #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB3_1
.LBB3_14:
	lw	a0, -20(s0)
	addi	a0, a0, -1
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	removerZeros, .Lfunc_end3-removerZeros
                                        # -- End function
	.globl	xToI                    # -- Begin function xToI
	.p2align	2
	.type	xToI,@function
xToI:                                   # @xToI
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	addi	s0, sp, 48
	mv	a1, a0
	sb	a0, -13(s0)
	lui	a0, 419414
	addi	a0, a0, 1123
	sw	a0, -20(s0)
	lui	a0, 402964
	addi	a0, a0, -1736
	sw	a0, -24(s0)
	lui	a0, 226147
	addi	a0, a0, 1332
	sw	a0, -28(s0)
	lui	a0, 209699
	addi	a0, a0, 304
	sw	a0, -32(s0)
	mv	a0, zero
	sw	a0, -36(s0)
	j	.LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	addi	a1, zero, 15
	blt	a1, a0, .LBB4_6
	j	.LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	lbu	a0, -13(s0)
	lw	a1, -36(s0)
	addi	a2, s0, -32
	add	a1, a2, a1
	lbu	a1, 0(a1)
	bne	a0, a1, .LBB4_4
	j	.LBB4_3
.LBB4_3:
	lw	a0, -36(s0)
	sw	a0, -12(s0)
	j	.LBB4_7
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	j	.LBB4_5
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB4_1
.LBB4_6:
	mv	a0, zero
	sw	a0, -12(s0)
	j	.LBB4_7
.LBB4_7:
	lw	a0, -12(s0)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end4:
	.size	xToI, .Lfunc_end4-xToI
                                        # -- End function
	.globl	gerarInt                # -- Begin function gerarInt
	.p2align	2
	.type	gerarInt,@function
gerarInt:                               # @gerarInt
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	addi	s0, sp, 48
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	mv	a0, zero
	sw	a0, -20(s0)
	sw	a0, -28(s0)
	sw	a0, -32(s0)
	sw	a0, -36(s0)
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	addi	a1, zero, 48
	bne	a0, a1, .LBB5_4
	j	.LBB5_1
.LBB5_1:
	lw	a0, -12(s0)
	lbu	a0, 1(a0)
	addi	a1, zero, 120
	bne	a0, a1, .LBB5_3
	j	.LBB5_2
.LBB5_2:
	addi	a0, zero, 2
	sw	a0, -20(s0)
	addi	a0, zero, 1
	sw	a0, -36(s0)
	j	.LBB5_3
.LBB5_3:
	j	.LBB5_4
.LBB5_4:
	j	.LBB5_5
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	lw	a1, -16(s0)
	bge	a0, a1, .LBB5_16
	j	.LBB5_6
.LBB5_6:                                #   in Loop: Header=BB5_5 Depth=1
	lw	a0, -12(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	mv	a1, zero
	beq	a0, a1, .LBB5_8
	j	.LBB5_7
.LBB5_7:                                #   in Loop: Header=BB5_5 Depth=1
	lw	a0, -12(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addi	a1, zero, 10
	bne	a0, a1, .LBB5_9
	j	.LBB5_8
.LBB5_8:
	j	.LBB5_16
.LBB5_9:                                #   in Loop: Header=BB5_5 Depth=1
	lw	a0, -12(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addi	a1, zero, 45
	bne	a0, a1, .LBB5_11
	j	.LBB5_10
.LBB5_10:                               #   in Loop: Header=BB5_5 Depth=1
	addi	a0, zero, 1
	sw	a0, -32(s0)
	j	.LBB5_15
.LBB5_11:                               #   in Loop: Header=BB5_5 Depth=1
	lw	a0, -36(s0)
	mv	a1, zero
	beq	a0, a1, .LBB5_13
	j	.LBB5_12
.LBB5_12:                               #   in Loop: Header=BB5_5 Depth=1
	lw	a0, -28(s0)
	slli	a0, a0, 4
	sw	a0, -28(s0)
	j	.LBB5_14
.LBB5_13:                               #   in Loop: Header=BB5_5 Depth=1
	lw	a0, -28(s0)
	addi	a1, zero, 10
	mul	a0, a0, a1
	sw	a0, -28(s0)
	j	.LBB5_14
.LBB5_14:                               #   in Loop: Header=BB5_5 Depth=1
	lw	a0, -12(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	call	xToI
	lw	a1, -28(s0)
	add	a0, a1, a0
	sw	a0, -28(s0)
	j	.LBB5_15
.LBB5_15:                               #   in Loop: Header=BB5_5 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB5_5
.LBB5_16:
	lw	a0, -32(s0)
	mv	a1, zero
	beq	a0, a1, .LBB5_18
	j	.LBB5_17
.LBB5_17:
	lw	a0, -28(s0)
	mv	a1, zero
	sub	a0, a1, a0
	sw	a0, -28(s0)
	j	.LBB5_18
.LBB5_18:
	lw	a0, -28(s0)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end5:
	.size	gerarInt, .Lfunc_end5-gerarInt
                                        # -- End function
	.globl	setar                   # -- Begin function setar
	.p2align	2
	.type	setar,@function
setar:                                  # @setar
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	mv	a3, a2
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sb	a2, -17(s0)
	mv	a0, zero
	sw	a0, -24(s0)
	j	.LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	lw	a1, -16(s0)
	bge	a0, a1, .LBB6_4
	j	.LBB6_2
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
	lb	a0, -17(s0)
	lw	a1, -12(s0)
	lw	a2, -24(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB6_3
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB6_1
.LBB6_4:
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	add	a0, a1, a0
	addi	a1, zero, 10
	sb	a1, -1(a0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end6:
	.size	setar, .Lfunc_end6-setar
                                        # -- End function
	.globl	intToBinary             # -- Begin function intToBinary
	.p2align	2
	.type	intToBinary,@function
intToBinary:                            # @intToBinary
# %bb.0:
	addi	sp, sp, -80
	sw	ra, 76(sp)
	sw	s0, 72(sp)
	addi	s0, sp, 80
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	mv	a0, zero
	sw	a0, -20(s0)
	lw	a0, -12(s0)
	addi	a1, zero, -1
	blt	a1, a0, .LBB7_2
	j	.LBB7_1
.LBB7_1:
	addi	a0, zero, 1
	sw	a0, -20(s0)
	j	.LBB7_2
.LBB7_2:
	addi	a0, s0, -53
	addi	a1, zero, 33
	addi	a2, zero, 48
	call	setar
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	addi	a1, a1, 48
	andi	a2, a1, 255
	addi	a1, zero, 35
	call	setar
	mv	a0, zero
	sw	a0, -60(s0)
	j	.LBB7_3
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	mv	a1, zero
	mv	a2, a1
	sw	a2, -72(s0)
	beq	a0, a1, .LBB7_5
	j	.LBB7_4
.LBB7_4:                                #   in Loop: Header=BB7_3 Depth=1
	lw	a0, -12(s0)
	not	a0, a0
	snez	a0, a0
	sw	a0, -72(s0)
	j	.LBB7_5
.LBB7_5:                                #   in Loop: Header=BB7_3 Depth=1
	lw	a0, -72(s0)
	andi	a0, a0, 1
	mv	a1, zero
	beq	a0, a1, .LBB7_7
	j	.LBB7_6
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=1
	lw	a0, -12(s0)
	andi	a0, a0, 1
	sw	a0, -64(s0)
	lw	a0, -64(s0)
	addi	a0, a0, 48
	lw	a1, -60(s0)
	addi	a2, s0, -53
	add	a1, a2, a1
	sb	a0, 0(a1)
	lw	a0, -12(s0)
	srai	a0, a0, 1
	sw	a0, -12(s0)
	lw	a0, -60(s0)
	addi	a0, a0, 1
	sw	a0, -60(s0)
	j	.LBB7_3
.LBB7_7:
	lw	a0, -12(s0)
	addi	a1, zero, -1
	bne	a0, a1, .LBB7_9
	j	.LBB7_8
.LBB7_8:
	lw	a0, -12(s0)
	andi	a0, a0, 1
	sw	a0, -64(s0)
	lw	a0, -64(s0)
	addi	a0, a0, 48
	lw	a1, -60(s0)
	addi	a2, s0, -53
	add	a1, a2, a1
	sb	a0, 0(a1)
	lw	a0, -12(s0)
	srai	a0, a0, 1
	sw	a0, -12(s0)
	lw	a0, -60(s0)
	addi	a0, a0, 1
	sw	a0, -60(s0)
	j	.LBB7_9
.LBB7_9:
	lw	a0, -16(s0)
	addi	a1, zero, 48
	sb	a1, 0(a0)
	lw	a0, -16(s0)
	addi	a1, zero, 98
	sb	a1, 1(a0)
	lw	a0, -60(s0)
	addi	a1, zero, 34
	sub	a0, a1, a0
	sw	a0, -68(s0)
	lw	a0, -60(s0)
	addi	a0, a0, -1
	sw	a0, -60(s0)
	j	.LBB7_10
.LBB7_10:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -60(s0)
	mv	a1, zero
	blt	a0, a1, .LBB7_13
	j	.LBB7_11
.LBB7_11:                               #   in Loop: Header=BB7_10 Depth=1
	lw	a0, -60(s0)
	addi	a1, s0, -53
	add	a0, a1, a0
	lb	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a2, -68(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB7_12
.LBB7_12:                               #   in Loop: Header=BB7_10 Depth=1
	lw	a0, -60(s0)
	addi	a0, a0, -1
	sw	a0, -60(s0)
	lw	a0, -68(s0)
	addi	a0, a0, 1
	sw	a0, -68(s0)
	j	.LBB7_10
.LBB7_13:
	lw	a0, -16(s0)
	lw	a1, -68(s0)
	add	a0, a0, a1
	addi	a1, zero, 10
	sb	a1, 0(a0)
	lw	s0, 72(sp)
	lw	ra, 76(sp)
	addi	sp, sp, 80
	ret
.Lfunc_end7:
	.size	intToBinary, .Lfunc_end7-intToBinary
                                        # -- End function
	.globl	intToHex                # -- Begin function intToHex
	.p2align	2
	.type	intToHex,@function
intToHex:                               # @intToHex
# %bb.0:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	addi	s0, sp, 64
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lui	a0, 419414
	addi	a0, a0, 1123
	sw	a0, -20(s0)
	lui	a0, 402964
	addi	a0, a0, -1736
	sw	a0, -24(s0)
	lui	a0, 226147
	addi	a0, a0, 1332
	sw	a0, -28(s0)
	lui	a0, 209699
	addi	a0, a0, 304
	sw	a0, -32(s0)
	addi	a0, s0, -40
	addi	a1, zero, 8
	addi	a2, zero, 48
	sw	a2, -52(s0)
	call	setar
	lw	a0, -16(s0)
	addi	a1, zero, 35
	lw	a2, -52(s0)
	call	setar
	mv	a0, zero
	sw	a0, -44(s0)
	j	.LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -44(s0)
	addi	a1, zero, 7
	blt	a1, a0, .LBB8_4
	j	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -44(s0)
	slli	a1, a0, 2
	addi	a2, zero, 15
	sll	a2, a2, a1
	lw	a3, -12(s0)
	and	a2, a2, a3
	srl	a1, a2, a1
	addi	a2, s0, -32
	add	a1, a2, a1
	lb	a1, 0(a1)
	addi	a2, s0, -40
	add	a0, a2, a0
	sb	a1, 0(a0)
	j	.LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -44(s0)
	addi	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB8_1
.LBB8_4:
	lw	a0, -16(s0)
	addi	a1, zero, 48
	sb	a1, 0(a0)
	lw	a0, -16(s0)
	addi	a1, zero, 120
	sb	a1, 1(a0)
	addi	a0, zero, 2
	sw	a0, -48(s0)
	lw	a0, -44(s0)
	addi	a0, a0, -1
	sw	a0, -44(s0)
	j	.LBB8_5
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -44(s0)
	mv	a1, zero
	blt	a0, a1, .LBB8_8
	j	.LBB8_6
.LBB8_6:                                #   in Loop: Header=BB8_5 Depth=1
	lw	a0, -44(s0)
	addi	a1, s0, -40
	add	a0, a1, a0
	lb	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a2, -48(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB8_7
.LBB8_7:                                #   in Loop: Header=BB8_5 Depth=1
	lw	a0, -44(s0)
	addi	a0, a0, -1
	sw	a0, -44(s0)
	lw	a0, -48(s0)
	addi	a0, a0, 1
	sw	a0, -48(s0)
	j	.LBB8_5
.LBB8_8:
	lw	a0, -16(s0)
	lw	a1, -48(s0)
	add	a0, a0, a1
	addi	a1, zero, 10
	sb	a1, 0(a0)
	lw	s0, 56(sp)
	lw	ra, 60(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end8:
	.size	intToHex, .Lfunc_end8-intToHex
                                        # -- End function
	.globl	endless                 # -- Begin function endless
	.p2align	2
	.type	endless,@function
endless:                                # @endless
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	mv	a0, zero
	sw	a0, -16(s0)
	addi	a1, zero, 255
	sw	a1, -20(s0)
	sw	a0, -24(s0)
	j	.LBB9_1
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	addi	a1, zero, 3
	blt	a1, a0, .LBB9_4
	j	.LBB9_2
.LBB9_2:                                #   in Loop: Header=BB9_1 Depth=1
	lw	a0, -16(s0)
	slli	a0, a0, 8
	sw	a0, -16(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	slli	a1, a1, 3
	sll	a0, a0, a1
	lw	a2, -12(s0)
	and	a0, a0, a2
	srl	a0, a0, a1
	lw	a1, -16(s0)
	add	a0, a1, a0
	sw	a0, -16(s0)
	j	.LBB9_3
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB9_1
.LBB9_4:
	lw	a0, -16(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end9:
	.size	endless, .Lfunc_end9-endless
                                        # -- End function
	.globl	intToStr                # -- Begin function intToStr
	.p2align	2
	.type	intToStr,@function
intToStr:                               # @intToStr
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	addi	s0, sp, 48
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	addi	a2, zero, 48
	call	setar
	mv	a0, zero
	sw	a0, -24(s0)
	sw	a0, -28(s0)
	lw	a0, -12(s0)
	addi	a1, zero, -1
	blt	a1, a0, .LBB10_2
	j	.LBB10_1
.LBB10_1:
	lw	a0, -16(s0)
	addi	a1, zero, 45
	sb	a1, 0(a0)
	addi	a0, zero, 1
	sw	a0, -28(s0)
	lw	a0, -12(s0)
	mv	a1, zero
	sub	a0, a1, a0
	sw	a0, -12(s0)
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB10_2
.LBB10_2:
	j	.LBB10_3
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	mv	a1, zero
	beq	a0, a1, .LBB10_5
	j	.LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_3 Depth=1
	lw	a0, -12(s0)
	lui	a1, 419430
	addi	a1, a1, 1639
	mulh	a2, a0, a1
	srli	a3, a2, 31
	srai	a2, a2, 2
	add	a2, a2, a3
	addi	a3, zero, 10
	mul	a2, a2, a3
	sub	a0, a0, a2
	sw	a1, -40(s0)
	call	modulo
	addi	a0, a0, 48
	lw	a1, -16(s0)
	lw	a2, -24(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lw	a0, -12(s0)
	lw	a1, -40(s0)
	mulh	a0, a0, a1
	srli	a2, a0, 31
	srai	a0, a0, 2
	add	a0, a0, a2
	sw	a0, -12(s0)
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB10_3
.LBB10_5:
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	addi	a1, zero, 10
	sb	a1, 0(a0)
	lw	a0, -24(s0)
	sw	a0, -36(s0)
	lw	a0, -24(s0)
	addi	a0, a0, -1
	sw	a0, -24(s0)
	j	.LBB10_6
.LBB10_6:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	bge	a0, a1, .LBB10_9
	j	.LBB10_7
.LBB10_7:                               #   in Loop: Header=BB10_6 Depth=1
	lw	a0, -16(s0)
	lw	a1, -28(s0)
	add	a0, a0, a1
	lb	a0, 0(a0)
	sb	a0, -29(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	add	a1, a0, a1
	lb	a1, 0(a1)
	lw	a2, -28(s0)
	add	a0, a0, a2
	sb	a1, 0(a0)
	lb	a0, -29(s0)
	lw	a1, -16(s0)
	lw	a2, -24(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB10_8
.LBB10_8:                               #   in Loop: Header=BB10_6 Depth=1
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -24(s0)
	addi	a0, a0, -1
	sw	a0, -24(s0)
	j	.LBB10_6
.LBB10_9:
	lw	a0, -36(s0)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end10:
	.size	intToStr, .Lfunc_end10-intToStr
                                        # -- End function
	.globl	unsToStr                # -- Begin function unsToStr
	.p2align	2
	.type	unsToStr,@function
unsToStr:                               # @unsToStr
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	addi	s0, sp, 48
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	addi	a2, zero, 48
	call	setar
	mv	a0, zero
	sw	a0, -24(s0)
	j	.LBB11_1
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	mv	a1, zero
	beq	a0, a1, .LBB11_3
	j	.LBB11_2
.LBB11_2:                               #   in Loop: Header=BB11_1 Depth=1
	lw	a0, -12(s0)
	lui	a1, 838861
	addi	a1, a1, -819
	mulhu	a2, a0, a1
	srli	a2, a2, 3
	addi	a3, zero, 10
	mul	a2, a2, a3
	sub	a0, a0, a2
	ori	a0, a0, 48
	lw	a2, -16(s0)
	lw	a3, -24(s0)
	add	a2, a2, a3
	sb	a0, 0(a2)
	lw	a0, -12(s0)
	mulhu	a0, a0, a1
	srli	a0, a0, 3
	sw	a0, -12(s0)
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB11_1
.LBB11_3:
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	addi	a1, zero, 10
	sb	a1, 0(a0)
	lw	a0, -24(s0)
	sw	a0, -28(s0)
	lw	a0, -24(s0)
	addi	a0, a0, -1
	sw	a0, -24(s0)
	mv	a0, zero
	sw	a0, -36(s0)
	j	.LBB11_4
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	lw	a1, -24(s0)
	bge	a0, a1, .LBB11_7
	j	.LBB11_5
.LBB11_5:                               #   in Loop: Header=BB11_4 Depth=1
	lw	a0, -16(s0)
	lw	a1, -36(s0)
	add	a0, a0, a1
	lb	a0, 0(a0)
	sb	a0, -29(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	add	a1, a0, a1
	lb	a1, 0(a1)
	lw	a2, -36(s0)
	add	a0, a0, a2
	sb	a1, 0(a0)
	lb	a0, -29(s0)
	lw	a1, -16(s0)
	lw	a2, -24(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB11_6
.LBB11_6:                               #   in Loop: Header=BB11_4 Depth=1
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	lw	a0, -24(s0)
	addi	a0, a0, -1
	sw	a0, -24(s0)
	j	.LBB11_4
.LBB11_7:
	lw	a0, -28(s0)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end11:
	.size	unsToStr, .Lfunc_end11-unsToStr
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -96
	sw	ra, 92(sp)
	sw	s0, 88(sp)
	addi	s0, sp, 96
	mv	a0, zero
	sw	a0, -12(s0)
	addi	a1, s0, -36
	addi	a2, zero, 11
	sw	a0, -80(s0)
	sw	a1, -84(s0)
	call	read
	sw	a0, -16(s0)
	lw	a1, -16(s0)
	lw	a0, -84(s0)
	call	gerarInt
	sw	a0, -40(s0)
	lw	a0, -40(s0)
	addi	a1, s0, -75
	sw	a1, -88(s0)
	call	intToBinary
	lw	a0, -88(s0)
	call	removerZeros
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	addi	a2, a0, 1
	addi	a0, zero, 1
	sw	a0, -92(s0)
	lw	a1, -88(s0)
	call	write
	lw	a0, -40(s0)
	addi	a1, zero, 35
	lw	a2, -88(s0)
	sw	a1, -96(s0)
	mv	a1, a2
	lw	a2, -96(s0)
	call	intToStr
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	addi	a2, a0, 1
	lw	a0, -92(s0)
	lw	a1, -88(s0)
	call	write
	lw	a0, -40(s0)
	lw	a1, -88(s0)
	call	intToHex
	lw	a0, -88(s0)
	call	removerZeros
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	addi	a2, a0, 1
	lw	a0, -92(s0)
	lw	a1, -88(s0)
	call	write
	lw	a0, -40(s0)
	call	endless
	lw	a1, -88(s0)
	lw	a2, -96(s0)
	call	unsToStr
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	addi	a2, a0, 1
	lw	a0, -92(s0)
	lw	a1, -88(s0)
	call	write
	lw	a0, -80(s0)
	lw	s0, 88(sp)
	lw	ra, 92(sp)
	addi	sp, sp, 96
	ret
.Lfunc_end12:
	.size	main, .Lfunc_end12-main
                                        # -- End function
	.globl	_start                  # -- Begin function _start
	.p2align	2
	.type	_start,@function
_start:                                 # @_start
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	call	main
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end13:
	.size	_start, .Lfunc_end13-_start
                                        # -- End function
	.type	.L__const.xToI.caracs,@object # @__const.xToI.caracs
	.section	.rodata.cst16,"aM",@progbits,16
.L__const.xToI.caracs:
	.ascii	"0123456789abcdef"
	.size	.L__const.xToI.caracs, 16

	.type	.L__const.intToHex.caracs,@object # @__const.intToHex.caracs
.L__const.intToHex.caracs:
	.ascii	"0123456789abcdef"
	.size	.L__const.intToHex.caracs, 16

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read
	.addrsig_sym write
	.addrsig_sym modulo
	.addrsig_sym removerZeros
	.addrsig_sym xToI
	.addrsig_sym gerarInt
	.addrsig_sym setar
	.addrsig_sym intToBinary
	.addrsig_sym intToHex
	.addrsig_sym endless
	.addrsig_sym intToStr
	.addrsig_sym unsToStr
	.addrsig_sym main
