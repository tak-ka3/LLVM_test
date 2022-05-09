	.text
	.file	"test_vector.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function main
.LCPI0_0:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
.LCPI0_1:
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
.LCPI0_2:
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	16                      # 0x10
.LCPI0_3:
	.long	24                      # 0x18
	.long	24                      # 0x18
	.long	24                      # 0x18
	.long	24                      # 0x18
.LCPI0_4:
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
.LCPI0_5:
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
.LCPI0_6:
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$39880, %rsp            # imm = 0x9BC8
	.cfi_def_cfa_offset 39888
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [0,1,2,3]
	movl	$12, %eax
	movdqa	.LCPI0_1(%rip), %xmm10  # xmm10 = [8,8,8,8]
	movdqa	.LCPI0_2(%rip), %xmm11  # xmm11 = [16,16,16,16]
	movdqa	.LCPI0_3(%rip), %xmm1   # xmm1 = [24,24,24,24]
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm2
	paddd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm3
	paddd	%xmm10, %xmm3
	movdqa	%xmm2, -176(%rsp,%rax,4)
	movdqa	%xmm3, -160(%rsp,%rax,4)
	movdqa	%xmm2, %xmm3
	paddd	%xmm11, %xmm3
	paddd	%xmm1, %xmm2
	movdqa	%xmm3, -144(%rsp,%rax,4)
	movdqa	%xmm2, -128(%rsp,%rax,4)
	paddd	%xmm11, %xmm0
	addq	$16, %rax
	cmpq	$10012, %rax            # imm = 0x271C
	jne	.LBB0_1
# %bb.2:                                # %.preheader
	movdqa	.LCPI0_0(%rip), %xmm6   # xmm6 = [0,1,2,3]
	pxor	%xmm2, %xmm2
	movl	$12, %eax
	movdqa	.LCPI0_4(%rip), %xmm8   # xmm8 = [4,4,4,4]
	movdqa	.LCPI0_5(%rip), %xmm12  # xmm12 = [5,5,5,5]
	movdqa	.LCPI0_6(%rip), %xmm9   # xmm9 = [12,12,12,12]
	pxor	%xmm4, %xmm4
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movdqa	%xmm6, %xmm3
	paddd	%xmm8, %xmm3
	movdqa	-176(%rsp,%rax,4), %xmm5
	movdqa	-160(%rsp,%rax,4), %xmm7
	movdqa	-144(%rsp,%rax,4), %xmm1
	movdqa	-128(%rsp,%rax,4), %xmm0
	pshufd	$245, %xmm5, %xmm13     # xmm13 = xmm5[1,1,3,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm14     # xmm14 = xmm5[0,2,2,3]
	pshufd	$245, %xmm6, %xmm5      # xmm5 = xmm6[1,1,3,3]
	pmuludq	%xmm13, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm14   # xmm14 = xmm14[0],xmm5[0],xmm14[1],xmm5[1]
	pshufd	$245, %xmm7, %xmm5      # xmm5 = xmm7[1,1,3,3]
	pmuludq	%xmm3, %xmm7
	pshufd	$232, %xmm7, %xmm13     # xmm13 = xmm7[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm13   # xmm13 = xmm13[0],xmm3[0],xmm13[1],xmm3[1]
	paddd	%xmm12, %xmm2
	paddd	%xmm12, %xmm4
	movdqa	%xmm6, %xmm3
	paddd	%xmm10, %xmm3
	movdqa	%xmm6, %xmm5
	paddd	%xmm9, %xmm5
	pshufd	$245, %xmm1, %xmm7      # xmm7 = xmm1[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm7, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	pshufd	$245, %xmm0, %xmm3      # xmm3 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm3, %xmm5
	pshufd	$232, %xmm5, %xmm3      # xmm3 = xmm5[0,2,2,3]
	punpckldq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	paddd	%xmm12, %xmm2
	paddd	%xmm14, %xmm2
	paddd	%xmm1, %xmm2
	paddd	%xmm12, %xmm4
	paddd	%xmm13, %xmm4
	paddd	%xmm0, %xmm4
	paddd	%xmm11, %xmm6
	addq	$16, %rax
	cmpq	$10012, %rax            # imm = 0x271C
	jne	.LBB0_3
# %bb.4:
	paddd	%xmm2, %xmm4
	pshufd	$78, %xmm4, %xmm0       # xmm0 = xmm4[2,3,0,1]
	paddd	%xmm4, %xmm0
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	addq	$39880, %rsp            # imm = 0x9BC8
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
