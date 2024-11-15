BITS 64
section .text
global memset
memset:
    xor rax, rax
    xor r9, r9
    jmp cpy

cpy:
    cmp r9, rdx
    je end
    mov byte[rdi + r9], sil
    inc r9
    jmp cpy

end:
    mov rax, rdi
    ret