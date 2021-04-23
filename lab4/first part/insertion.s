	.file	"insertion.c"
	.option nopic
	.attribute arch, "rv64i2p0_a2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	InsertionSort
	.type	InsertionSort, @function
InsertionSort:
	li	a5,1
	ble	a0,a5,.L1
	mv	a7,a1
	addiw	t1,a0,-1
	li	a6,0
	li	a0,-1
	j	.L6
.L4:
	addi	a4,a4,1
	slli	a4,a4,2
	add	a4,a1,a4
	sw	a2,0(a4)
	addiw	a6,a6,1
	addi	a7,a7,4
	beq	a6,t1,.L1
.L6:
	lw	a2,4(a7)
	sext.w	a4,a6
	mv	a5,a7
	blt	a6,zero,.L4
.L3:
	lw	a3,0(a5)
	bgeu	a2,a3,.L4
	sw	a3,4(a5)
	addiw	a4,a4,-1
	addi	a5,a5,-4
	bne	a4,a0,.L3
	j	.L4
.L1:
	ret
	.size	InsertionSort, .-InsertionSort
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
