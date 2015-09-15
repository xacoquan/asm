%define	SYSCALL_WRITE		0x2000004
%define	STDOUT				1

default	rel

extern	_ft_strlen

section	.data
	char: db	0, 0

section	.text

	global	_ft_putchar_fd

_ft_putchar_fd:
	push	rsi
	mov		[char],			rdi
	mov		rdx,			rax
	lea		rsi,			[char]
	pop		rdi				
	mov		rax,			SYSCALL_WRITE
	syscall

	ret