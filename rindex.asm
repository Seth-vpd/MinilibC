BITS 64
section .text
global rindex

rindex:
    xor rax, rax
    jmp check_match

check_match:
    mov r11b, [rdi]
    cmp r11b, 0
    je end
    cmp r11b, sil
    jne continue
    mov rax, rdi

continue:
    inc rdi
    jmp check_match

end:
    cmp sil, 0
    je match
    ret

match:
    mov rax, rdi
    ret