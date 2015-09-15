section .text
	global _ft_strnew
	extern _malloc
	extern _ft_bzero

_ft_strnew:
	inc		rdi
	cmp		rdi,	0
	je		error
	push	rdi
	call	_malloc
	pop		rdi
	cmp		rax,	0
	je		error
	mov		rsi,	rdi
	mov		rdi,	rax
	call	_ft_bzero
	ret

error:
	mov		rax,	0
	ret