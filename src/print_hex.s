print_hex:
    pusha
    mov cx, 0

hex_loop:
    cmp cx, 4
    je hex_end

    mov ax, dx
    and ax, 0x000f
    add al, 0x30
    cmp al, 0x39
    jle move
    add al, 0x7

move:
    mov bx, hex_string + 5
    sub bx, cx
    mov [bx], al
    ror dx, 4

    add cx, 1
    jmp hex_loop

hex_end:
    mov bx, hex_string
    call print_string

    popa
    ret

hex_string: db '0x0000', 0