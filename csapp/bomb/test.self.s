	# .file	"test.c"
	# .text
	# .section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello, World from %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	subq	$8, %rsp
	movl	$1, %edx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	// call	__printf_chk@PLT
	movl	$0, %eax
	addq	$8, %rsp
	ret
# .LFE23:
# 	.size	main, .-main
# 	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
# 	.section	.note.GNU-stack,"",@progbits
