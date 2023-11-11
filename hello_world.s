.section .text

.global _start
_start:
.hello_world:
	movq $1, %rax
	movq $1, %rdi
	leaq [hello_world], %rsi
	movq $14, %rdx
	syscall	

.exit_system:
	movq $60, %rax
	movq $0, %rdi
	syscall

.section .data
hello_world:
	.asciz "Hello, World!\n"
