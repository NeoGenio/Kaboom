org 0x7c00

mov ah, 0x00
mov al, 0x03
int 0x10

mov ah, 0x0b
mov bh, 0x00
mov bl, 0x01
int 0x10

mov bx, string
call print_string

mov bx, string2
call print_string

mov dx, 0x12ab
call print_hex

jmp $

%include 'print_string.s'
%include 'print_hex.s'

string: db 'Char test: ABC abc', 0xa, 0xd, 0
string2: db 'Hex test: ', 0

times 510-($-$$) db 0

dw 0xaa55