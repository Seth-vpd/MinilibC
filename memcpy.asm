BITS 64
section .text
global memcpy

memcpy:
    xor rax, rax
    xor r9, r9
    jmp cpy

cpy:
    cmp r9, rdx
    je end
    mov r11b, byte[rsi + r9]
    mov byte[rdi + r9], r11b
    inc r9
    jmp cpy

end:
    mov rax, rdi
    ret