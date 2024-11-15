BITS 64

section .text

global strpbrk

strpbrk:
    xor r9, r9
    jmp first_loop

increase_f:
    inc rdi
first_loop:
    mov r11b, byte[rdi]
    cmp r11b, 0
    je not_found
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

end:
    mov rax, rdi
    ret

not_found:
    mov rax, 0
    ret

;     xor rax, rax
;     jmp first_loop

; first_loop:
;     xor r11, r11
;     mov r10b, [rdi]
;     cmp r10b, 0
;     je end
;     jmp check

; check:
;     mov r11b, byte[rsi + r11]
;     cmp r11b, 0
;     je back
;     cmp r10b, r11b
;     je found
;     inc r11
;     jmp check


; back:
;     inc rdi
;     jmp first_loop

; end:
;     xor rax, rax
;     ret
; found:
;     mov rax, rdi
;     ret


;     mov r9, rdi
;     mov r10b, [rdi]
;     cmp r10b, 0
;     je end
;     inc rdi
;     mov rsi, r11
;     jmp check

; check:
;     mov r11b, [rsi]
;     cmp r11b, 0
;     je first_loop
;     cmp r11b, r10b
;     je found
;     inc rsi
;     jmp check

; found:
;     ;xor rax, rax
;     mov rax, r9
;     ret