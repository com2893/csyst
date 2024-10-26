[BITS 16]
[ORG 0x7C00]

start:
    ; Limpiar la pantalla
    mov ah, 0x0E
    mov si, msg
print_loop:
    lodsb
    cmp al, 0
    je hang
    int 0x10
    jmp print_loop

hang:
    jmp hang

msg db 'Hola desde el Bootloader!', 0
times 510 - ($ - $$) db 0
dw 0xAA55
