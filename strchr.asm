BITS 64

section .text
global strchr

strchr:
    xor rax, rax
    jmp loop
    
loop:
    mov r11b, [rdi]
    cmp r11b, 0
    je end
    cmp [rdi], sil
    je match
    inc rdi
    jmp loop

match:
    mov rax, rdi
    ret

end:
    cmp sil, 0
    je match
    xor rax, rax
    ret
