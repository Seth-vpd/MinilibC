BITS 64

section .text
global strstr

strstr:
    xor rax, rax
    cmp [rsi], byte 0
    je match
    jmp first

first:
    xor r11, r11
    cmp [rdi], byte 0
    je end
    mov r9, [rsi]
    cmp r9, [rdi]
    je search

search:
    mov r10b, byte[rsi + r11]
    cmp r10b, 0
    je match
    cmp [rdi + r11], r10b
    jne next
    inc r11
    jmp search

next:
    inc rdi
    jmp first

end:
    mov rax, 0
    ret

match:
    mov rax, rdi
    ret