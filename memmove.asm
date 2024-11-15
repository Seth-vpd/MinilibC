BITS 64
section .text
global memmove

memmove:
    xor rax, rax
    xor r9, r9
    jmp move

move:
    cmp r9, rdx
    je end
    mov r11b, byte[rsi + r9]
    mov byte[rdi + r9], r11b
    inc r9
    jmp move

end:
    mov rax, rdi
    ret