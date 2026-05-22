	.text
	.file	"datatype.c"
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	mov	w8, w0
	mov	w0, wzr
	str	wzr, [sp, #60]
	str	w8, [sp, #56]
	str	x1, [sp, #48]
	mov	w8, #48                         // =0x30
	strb	w8, [sp, #47]
	mov	w8, #1                          // =0x1
	strb	w8, [sp, #46]
	mov	w8, #2                          // =0x2
	strh	w8, [sp, #44]
	mov	w8, #3                          // =0x3
	strh	w8, [sp, #42]
	mov	w8, #4                          // =0x4
	str	w8, [sp, #36]
	mov	w8, #5                          // =0x5
	str	w8, [sp, #32]
	fmov	s0, #7.00000000
	str	s0, [sp, #28]
	fmov	s0, #17.00000000
	str	s0, [sp, #24]
	fmov	d0, #9.00000000
	str	d0, [sp, #16]
	fmov	d0, #19.00000000
	str	d0, [sp, #8]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.ident	"Android (12027248, based on r522817) clang version 18.0.1 (https://android.googlesource.com/toolchain/llvm-project d8003a456d14a3deb8054cdaa529ffbf02d9b262)"
	.section	".note.GNU-stack","",@progbits
