	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	arm7tdmi
	.eabi_attribute	6, 2	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 1	@ Tag_THUMB_ISA_use
	.eabi_attribute	34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"datatype.c"
	.globl	main                            @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                              @ @main
main:
	.fnstart
@ %bb.0:
	.pad	#56
	sub	sp, sp, #56
	mov	r2, r0
	mov	r0, #0
	str	r0, [sp, #52]
	str	r2, [sp, #48]
	str	r1, [sp, #44]
	mov	r1, #48
	strb	r1, [sp, #43]
	mov	r1, #1
	strb	r1, [sp, #42]
	mov	r1, #2
	strh	r1, [sp, #40]
	mov	r1, #3
	strh	r1, [sp, #38]
	mov	r1, #4
	str	r1, [sp, #32]
	mov	r1, #5
	str	r1, [sp, #28]
	mov	r1, #14680064
	orr	r1, r1, #1073741824
	str	r1, [sp, #24]
	mov	r1, #25690112
	orr	r1, r1, #1073741824
	str	r1, [sp, #20]
	mov	r1, #2228224
	orr	r1, r1, #1073741824
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	mov	r1, #3342336
	orr	r1, r1, #1073741824
	str	r1, [sp, #4]
	str	r0, [sp]
	add	sp, sp, #56
	bx	lr
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cantunwind
	.fnend
                                        @ -- End function
	.ident	"Android (12027248, based on r522817) clang version 18.0.1 (https://android.googlesource.com/toolchain/llvm-project d8003a456d14a3deb8054cdaa529ffbf02d9b262)"
	.section	".note.GNU-stack","",%progbits
