BITS 64
section .text
global strcmp

strcmp:
	xor rax, rax
	jmp loop

loop:
	mov r10b, byte[rdi + rax]
	mov r11b, byte[rsi + rax]
	cmp r10b, 0
	je end
	cmp r11b, 0
	je end
	cmp r10b, r11b
	jne end
	inc rax
	jmp loop
end:
	sub r10b, r11b
	movsx rax, r10b
	ret
