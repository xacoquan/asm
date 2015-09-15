section .bss
buffer:
	         resb    255
section .text
	global _ft_cat
	extern		_ft_bzero

_ft_cat:
	mov		ecx, edi
	cmp		edi, -1
	jle		end

while:
	mov		rax, 0x2000003
	lea		rsi, [rel buffer]
	mov		edx, 255
	mov		ecx, edi
	push	rcx
	syscall
	pop		rcx
	jc		end
	cmp		rax, 0
	jle		end
	mov		edi, 1
	lea		rsi, [rel buffer]
	mov		edx, eax
	mov		eax, 0x2000004
	push	rcx
	syscall
	pop		rdi
	cmp		rax, -1
	jle		end
	jmp		while
	
end:
	ret
	