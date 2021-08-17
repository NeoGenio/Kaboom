org 0x7c00

mov ah, 0x00
mov al, 0x03
int 0x10

mov ah, 0x0b
mov bh, 0x00
mov bl, 0x01
int 0x10

mov ah, 0x0e

mov bx, string
call print

mov bx, string2
call print

print:
    mov al, [bx]
    cmp al, 0
    je print_end
    int 0x10
    add bx, 1
    jmp print

print_end:
    ret

string: db 'This is a string!', 0xa, 0xd, 0
string2: db 'This is also a string.', 0

end:
    jmp $

    times 510-($-$$) db 0

    dw 0xaa55