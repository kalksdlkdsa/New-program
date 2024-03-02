org 0x7C00
bits 16
start:
    jmp main
main:
    ; setup data segment
    mov ax, 0 ; can't write to es/ds directly
    mov ds, ax
    mov ss, ax
    mov sp, 0x7C00
    hlt
.halt:
    jmp .halt
times 510-($-%%) db 0
dw 0AA55h
