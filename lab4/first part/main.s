	.file	"main.c"
	.option nopic
	.attribute arch, "rv64i2p0_a2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC1:
	.string	"Source array:"
	.align	3
.LC2:
	.string	"%d "
	.align	3
.LC3:
	.string	"\nSorted array:"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-96
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	sd	s2,64(sp)
	sd	s3,56(sp)
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,8(sp)
	sd	a2,16(sp)
	sd	a3,24(sp)
	sd	a4,32(sp)
	sd	a5,40(sp)
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	puts
	addi	s0,sp,8
	addi	s2,sp,48
	mv	s1,s0
	lui	s3,%hi(.LC2)
.L2:
	lw	a1,0(s1)
	addi	a0,s3,%lo(.LC2)
	call	printf
	addi	s1,s1,4
	bne	s1,s2,.L2
	addi	a1,sp,8
	li	a0,10
	call	InsertionSort
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	puts
	lui	s1,%hi(.LC2)
.L3:
	lw	a1,0(s0)
	addi	a0,s1,%lo(.LC2)
	call	printf
	addi	s0,s0,4
	bne	s0,s2,.L3
	li	a0,0
	ld	ra,88(sp)
	ld	s0,80(sp)
	ld	s1,72(sp)
	ld	s2,64(sp)
	ld	s3,56(sp)
	addi	sp,sp,96
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.word	1
	.word	5
	.word	4
	.word	6
	.word	2
	.word	3
	.word	7
	.word	9
	.word	8
	.word	10
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
