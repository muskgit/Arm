	.text
	.file	"2_branch.c"
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	str	x1, [sp, #16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	ldur	w8, [x29, #-8]
	subs	w8, w8, #1
	b.le	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	b	.LBB0_7
.LBB0_3:
	ldur	w8, [x29, #-8]
	subs	w8, w8, #1
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	printf
	b	.LBB0_6
.LBB0_5:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	printf
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	ldur	w8, [x29, #-8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	cbz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, #1
	b.eq	.LBB0_10
	b	.LBB0_11
.LBB0_9:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	printf
	b	.LBB0_12
.LBB0_10:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	printf
	b	.LBB0_12
.LBB0_11:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	b	.LBB0_12
.LBB0_12:
	mov	w0, wzr
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"goto 0\r\n"
	.size	.L.str, 9

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"goto 2\r\n"
	.size	.L.str.1, 9

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"argc is greater than 1\n"
	.size	.L.str.2, 24

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"argc is equal to 1\n"
	.size	.L.str.3, 20

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"argc is less than 1\n"
	.size	.L.str.4, 21

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"argc is 0\n"
	.size	.L.str.5, 11

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"argc is 1\n"
	.size	.L.str.6, 11

	.ident	"Android (12027248, based on r522817) clang version 18.0.1 (https://android.googlesource.com/toolchain/llvm-project d8003a456d14a3deb8054cdaa529ffbf02d9b262)"
	.section	".note.GNU-stack","",@progbits
