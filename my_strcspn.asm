BITS 64

section .text
global strcspn

strcspn:
    xor r9, r9
    jmp first_loop

increase_f:
    inc r9
first_loop:
    mov r11b, byte[rdi + r9]
    cmp r11b, 0
    je end
    xor r10, r10
    jmp second_loop

increase_s:
    inc r10
second_loop:
    mov r12b, byte[rsi + r10]
    cmp r12b, 0
    je increase_f
    cmp r11b, r12b
    je end
    jmp increase_s

; emptyCase:
; 	xor rax, rax
; 	jmp loop


; loop:
; 	cmp byte[rdi + rax], 0
; 	je end
; 	inc rax
; 	jmp loop
end:
    mov rax, r9
    ret
