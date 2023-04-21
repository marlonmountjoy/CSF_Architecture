	.file	"numArgs.c" 		# source file info
	.text				# start the text section
	.section	.rodata		# start the read-only data section
.LC0:
	.string	"Argument %d: %s\n" 	# format string for printf
	.text				# return to the text section
	.globl	main			# declare main function
	.type	main, @function		# declare type main a function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp			# save the old base pointer
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp		# move the stack pointer to the base pointer
	.cfi_def_cfa_register 6
	subq	$32, %rsp		# allocate space on the stack
	movl	%edi, -20(%rbp)		# store argc in the stack
	movq	%rsi, -32(%rbp)		# store argv in the stack
	movl	$0, -4(%rbp)		# initialize loop counter
	jmp	.L2			# jump to loop condition check
.L3:
	movl	-4(%rbp), %eax		# load loop counter
	cltq
	leaq	0(,%rax,8), %rdx		# calculate the address of the current argument string
	movq	-32(%rbp), %rax		# load argv
	addq	%rdx, %rax		# add the offset to argv
	movq	(%rax), %rdx		# load the current argument string
	movl	-4(%rbp), %eax		# load loop counter
	movl	%eax, %esi		# set the loop counter as the first argument for printf
	leaq	.LC0(%rip), %rax		# load the format string
	movq	%rax, %rdi		# set the format string as the second argument for printf
	movl	$0, %eax		# zero out %eax 
	call	printf@PLT		# call printf function
	addl	$1, -4(%rbp)		# increment loop counter
.L2:
	movl	-4(%rbp), %eax		# load loop counter
	cmpl	-20(%rbp), %eax		# compare loop counter with argc
	jl	.L3			# if loop counter < argc, jump to loop body
	movl	$0, %eax		# set return value to 0
	leave				# restore the stack
	.cfi_def_cfa 7, 8
	ret				# return from main
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
