	// .file	"test.c"
	// .text
	// .section	.rodata.str1.1,"aMS",@progbits,1
.globl	main
    .LC0:
    .string	"Hello, World from %d\n"
main:
    pushq %rbp
    movq $0x100, %rbp
    .L1:
        subq    $1, %rbp
        movq	$1, %rdi
        leaq	.LC0(%rip), %rsi
        movq	%rbp, %rdx
        call	__printf_chk@PLT
    .L2:
        test %rbp, %rbp
        jle .L3
        jmp .L1
    .L3:
        popq    %rbp
        ret
