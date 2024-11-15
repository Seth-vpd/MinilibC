BITS 64

section .text

global strcasecmp

strcasecmp:
    xor rax, rax
    jmp loop

loop:
    mov r10b, byte[rdi + rax]
    mov r11b, byte[rsi + rax]
    cmp r10b, 0
    je end
    cmp r11b, 0
    je end
    call check_f
    call check_s
    cmp r10b, r11b
    jne end
    inc rax
    jmp loop

check_f:
    cmp r10b, 'a'
    jge toUpper_f
    ret

toUpper_f:
    sub r10b, 32
    ret

check_s:
    cmp r11b, 'a'
    jge toUpper_s
    ret

toUpper_s:
    sub r11b, 32
    ret
; recheck_s:
;     cmp r10b, 'z'
;     jle toUpper
;     jmp back

; toUpper:
;     sub r10b, 32
;     jmp back

; back:
;     cmp r10b, r11b
;     jne end
;     inc rax
;     jmp loop

end:
    sub r10b, r11b
    movsx rax, r10b
    ret
