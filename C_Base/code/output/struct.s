	.text
	.file	"struct.cpp"
	.globl	_Z12testFunction10TestStructi   // -- Begin function _Z12testFunction10TestStructi
	.p2align	2
	.type	_Z12testFunction10TestStructi,@function
_Z12testFunction10TestStructi:          // @_Z12testFunction10TestStructi
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	x9, x8
	mov	x8, x0
	str	x8, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [x0]
	ldr	w11, [sp, #4]
	mov	w10, #1                         // =0x1
	mul	w10, w10, w11
	add	x8, x8, w10, sxtw
	str	x8, [x9]
	ldr	x8, [x0, #8]
	ldr	w11, [sp, #4]
	mov	w10, #2                         // =0x2
	mul	w10, w10, w11
	add	x8, x8, w10, sxtw
	str	x8, [x9, #8]
	ldr	x8, [x0, #16]
	ldr	w11, [sp, #4]
	mov	w10, #3                         // =0x3
	mul	w10, w10, w11
	add	x8, x8, w10, sxtw
	str	x8, [x9, #16]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	_Z12testFunction10TestStructi, .Lfunc_end0-_Z12testFunction10TestStructi
	.cfi_endproc
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, wzr
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	x8, #1                          // =0x1
	stur	x8, [x29, #-40]
	mov	x8, #2                          // =0x2
	stur	x8, [x29, #-32]
	mov	x8, #3                          // =0x3
	stur	x8, [x29, #-24]
	ldur	q0, [x29, #-40]
	add	x0, sp, #16
	str	q0, [sp, #16]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #32]
	ldur	w1, [x29, #-8]
	add	x8, sp, #48
	bl	_Z12testFunction10TestStructi
	ldr	x1, [sp, #48]
	ldr	x2, [sp, #56]
	ldr	x3, [sp, #64]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	.cfi_def_cfa wsp, 128
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%lu, %lu, %lu\n"
	.size	.L.str, 15

	.ident	"Android (12027248, based on r522817) clang version 18.0.1 (https://android.googlesource.com/toolchain/llvm-project d8003a456d14a3deb8054cdaa529ffbf02d9b262)"
	.section	".note.GNU-stack","",@progbits
