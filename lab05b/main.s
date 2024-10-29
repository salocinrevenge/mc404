	.text
	.file	"lab05.c"
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
	.globl	elevado                 # -- Begin function elevado
	.p2align	2
	.type	elevado,@function
elevado:                                # @elevado
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	addi	a0, zero, 1
	sw	a0, -20(s0)
	mv	a0, zero
	sw	a0, -24(s0)
	j	.LBB2_1
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	lw	a1, -16(s0)
	bge	a0, a1, .LBB2_4
	j	.LBB2_2
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -12(s0)
	lw	a1, -20(s0)
	mul	a0, a1, a0
	sw	a0, -20(s0)
	j	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB2_1
.LBB2_4:
	lw	a0, -20(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	elevado, .Lfunc_end2-elevado
                                        # -- End function
	.globl	gerarString             # -- Begin function gerarString
	.p2align	2
	.type	gerarString,@function
gerarString:                            # @gerarString
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	addi	s0, sp, 48
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	addi	a1, zero, -1
	blt	a1, a0, .LBB3_2
	j	.LBB3_1
.LBB3_1:
	lw	a0, -16(s0)
	addi	a1, zero, 45
	sb	a1, 0(a0)
	lw	a0, -12(s0)
	mv	a1, zero
	sub	a0, a1, a0
	sw	a0, -12(s0)
	j	.LBB3_3
.LBB3_2:
	lw	a0, -16(s0)
	addi	a1, zero, 43
	sb	a1, 0(a0)
	j	.LBB3_3
.LBB3_3:
	addi	a0, zero, 1
	sw	a0, -24(s0)
	j	.LBB3_4
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	addi	a1, zero, 4
	blt	a1, a0, .LBB3_7
	j	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_4 Depth=1
	lw	a0, -12(s0)
	lw	a1, -24(s0)
	addi	a2, zero, 4
	sub	a1, a2, a1
	addi	a3, zero, 10
	sw	a0, -28(s0)
	mv	a0, a3
	sw	a2, -32(s0)
	sw	a3, -36(s0)
	call	elevado
	lw	a1, -28(s0)
	div	a0, a1, a0
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	addi	a0, a0, 48
	lw	a1, -16(s0)
	lw	a2, -24(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	lw	a2, -32(s0)
	sub	a1, a2, a1
	lw	a3, -36(s0)
	sw	a0, -40(s0)
	mv	a0, a3
	call	elevado
	lw	a1, -40(s0)
	mul	a0, a1, a0
	lw	a1, -12(s0)
	sub	a0, a1, a0
	sw	a0, -12(s0)
	j	.LBB3_6
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB3_4
.LBB3_7:
	lw	a0, -16(s0)
	mv	a1, zero
	sb	a1, 5(a0)
	lw	a0, -16(s0)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end3:
	.size	gerarString, .Lfunc_end3-gerarString
                                        # -- End function
	.globl	unir                    # -- Begin function unir
	.p2align	2
	.type	unir,@function
unir:                                   # @unir
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	mv	a0, zero
	sw	a0, -24(s0)
	j	.LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	mv	a1, zero
	beq	a0, a1, .LBB4_4
	j	.LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	lw	a0, -12(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	lb	a0, 0(a0)
	lw	a2, -20(s0)
	add	a1, a2, a1
	sb	a0, 0(a1)
	j	.LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB4_1
.LBB4_4:
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	addi	a2, a1, 1
	sw	a2, -24(s0)
	add	a0, a0, a1
	addi	a1, zero, 32
	sb	a1, 0(a0)
	mv	a0, zero
	sw	a0, -28(s0)
	j	.LBB4_5
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -16(s0)
	lw	a1, -28(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	mv	a1, zero
	beq	a0, a1, .LBB4_8
	j	.LBB4_6
.LBB4_6:                                #   in Loop: Header=BB4_5 Depth=1
	lw	a0, -16(s0)
	lw	a1, -28(s0)
	add	a0, a0, a1
	lb	a0, 0(a0)
	lw	a1, -20(s0)
	lw	a2, -24(s0)
	addi	a3, a2, 1
	sw	a3, -24(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB4_7
.LBB4_7:                                #   in Loop: Header=BB4_5 Depth=1
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB4_5
.LBB4_8:
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	addi	a1, zero, 10
	sb	a1, 0(a0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	mv	a1, zero
	sb	a1, 0(a0)
	lw	a0, -20(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	unir, .Lfunc_end4-unir
                                        # -- End function
	.globl	lerNum                  # -- Begin function lerNum
	.p2align	2
	.type	lerNum,@function
lerNum:                                 # @lerNum
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	mv	a0, zero
	sw	a0, -20(s0)
	lw	a0, -16(s0)
	lw	a1, -12(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addi	a1, zero, 45
	bne	a0, a1, .LBB5_2
	j	.LBB5_1
.LBB5_1:
	addi	a0, zero, 1
	sw	a0, -20(s0)
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB5_5
.LBB5_2:
	lw	a0, -16(s0)
	lw	a1, -12(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addi	a1, zero, 43
	bne	a0, a1, .LBB5_4
	j	.LBB5_3
.LBB5_3:
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB5_4
.LBB5_4:
	j	.LBB5_5
.LBB5_5:
	mv	a0, zero
	sw	a0, -24(s0)
	j	.LBB5_6
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -16(s0)
	lw	a1, -12(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	mv	a1, zero
	addi	a2, zero, 32
	sw	a1, -28(s0)
	beq	a0, a2, .LBB5_9
	j	.LBB5_7
.LBB5_7:                                #   in Loop: Header=BB5_6 Depth=1
	lw	a0, -16(s0)
	lw	a1, -12(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	mv	a1, zero
	addi	a2, zero, 10
	sw	a1, -28(s0)
	beq	a0, a2, .LBB5_9
	j	.LBB5_8
.LBB5_8:                                #   in Loop: Header=BB5_6 Depth=1
	lw	a0, -16(s0)
	lw	a1, -12(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	snez	a0, a0
	sw	a0, -28(s0)
	j	.LBB5_9
.LBB5_9:                                #   in Loop: Header=BB5_6 Depth=1
	lw	a0, -28(s0)
	andi	a0, a0, 1
	mv	a1, zero
	beq	a0, a1, .LBB5_11
	j	.LBB5_10
.LBB5_10:                               #   in Loop: Header=BB5_6 Depth=1
	lw	a0, -24(s0)
	addi	a1, zero, 10
	mul	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -12(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	addi	a0, a0, -48
	sw	a0, -24(s0)
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB5_6
.LBB5_11:
	lw	a0, -20(s0)
	mv	a1, zero
	beq	a0, a1, .LBB5_13
	j	.LBB5_12
.LBB5_12:
	lw	a0, -24(s0)
	mv	a1, zero
	sub	a0, a1, a0
	sw	a0, -24(s0)
	j	.LBB5_13
.LBB5_13:
	lw	a0, -24(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end5:
	.size	lerNum, .Lfunc_end5-lerNum
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -144
	sw	ra, 140(sp)
	sw	s0, 136(sp)
	addi	s0, sp, 144
	mv	a0, zero
	addi	a1, s0, -20
	addi	a2, zero, 12
	sw	a0, -116(s0)
	sw	a1, -120(s0)
	call	read
	addi	a1, s0, -40
	addi	a2, zero, 20
	lw	a3, -116(s0)
	sw	a0, -124(s0)
	mv	a0, a3
	sw	a1, -128(s0)
	call	read
	lw	a1, -116(s0)
	sw	a0, -132(s0)
	mv	a0, a1
	lw	a1, -120(s0)
	call	lerNum
	sw	a0, -44(s0)
	addi	a0, zero, 6
	lw	a1, -120(s0)
	call	lerNum
	sw	a0, -48(s0)
	lw	a0, -116(s0)
	lw	a1, -128(s0)
	call	lerNum
	sw	a0, -52(s0)
	addi	a0, zero, 5
	lw	a1, -128(s0)
	call	lerNum
	sw	a0, -56(s0)
	addi	a0, zero, 10
	lw	a1, -128(s0)
	call	lerNum
	sw	a0, -60(s0)
	addi	a0, zero, 15
	lw	a1, -128(s0)
	call	lerNum
	sw	a0, -64(s0)
	lw	a0, -64(s0)
	lw	a1, -52(s0)
	sub	a0, a0, a1
	addi	a1, zero, 3
	mul	a0, a0, a1
	lui	a2, 419430
	addi	a2, a2, 1639
	mulh	a0, a0, a2
	srli	a3, a0, 31
	srai	a0, a0, 2
	add	a0, a0, a3
	sw	a0, -92(s0)
	lw	a0, -64(s0)
	lw	a3, -56(s0)
	sub	a0, a0, a3
	mul	a0, a0, a1
	mulh	a0, a0, a2
	srli	a3, a0, 31
	srai	a0, a0, 2
	add	a0, a0, a3
	sw	a0, -96(s0)
	lw	a0, -64(s0)
	lw	a3, -60(s0)
	sub	a0, a0, a3
	mul	a0, a0, a1
	mulh	a0, a0, a2
	srli	a1, a0, 31
	srai	a0, a0, 2
	add	a0, a0, a1
	sw	a0, -100(s0)
	lw	a0, -92(s0)
	mul	a0, a0, a0
	lw	a1, -100(s0)
	mul	a1, a1, a1
	sub	a0, a0, a1
	lw	a1, -48(s0)
	div	a0, a0, a1
	add	a0, a0, a1
	srli	a1, a0, 31
	add	a0, a0, a1
	srai	a0, a0, 1
	sw	a0, -84(s0)
	lw	a0, -92(s0)
	mul	a0, a0, a0
	lw	a1, -96(s0)
	mul	a1, a1, a1
	sub	a0, a0, a1
	lw	a1, -44(s0)
	div	a0, a0, a1
	add	a0, a0, a1
	srli	a1, a0, 31
	add	a0, a0, a1
	srai	a0, a0, 1
	sw	a0, -88(s0)
	lw	a0, -84(s0)
	addi	a1, s0, -106
	call	gerarString
	lw	a1, -88(s0)
	addi	a2, s0, -112
	sw	a0, -136(s0)
	mv	a0, a1
	mv	a1, a2
	call	gerarString
	addi	a2, s0, -77
	lw	a1, -136(s0)
	sw	a0, -140(s0)
	mv	a0, a1
	lw	a1, -140(s0)
	call	unir
	addi	a1, zero, 1
	addi	a2, zero, 13
	sw	a0, -144(s0)
	mv	a0, a1
	lw	a1, -144(s0)
	call	write
	lw	a0, -116(s0)
	lw	s0, 136(sp)
	lw	ra, 140(sp)
	addi	sp, sp, 144
	ret
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read
	.addrsig_sym write
	.addrsig_sym elevado
	.addrsig_sym gerarString
	.addrsig_sym unir
	.addrsig_sym lerNum
	
_end:
	li a0, 0
	li a7, 93
	ecall
