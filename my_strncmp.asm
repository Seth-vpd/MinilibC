BITS 64
section .text
global strncmp

strncmp:
	xor rax, rax
	;xor rax, rax
	jmp loop

loop:
	mov r10b, [rdi]
	mov r11b, [rsi]
	cmp r10b, 0
	je end
	cmp r11b, 0
	je end
	cmp r10b, r11b
	jne end
	dec rdx
	jz end
    inc rdi
	inc rsi
	jmp loop
end:
	xor rax, rax
	sub r10b, r11b
	movsx rax, r10b
	ret