sub __print_int(valor as integer)
    asm nasm  "mov ax, [bp+4]"
    asm osasm "mov ax, 4[bp]"

    asm nasm  "xor dx, dx"
    asm osasm "xor dx, dx"

    asm nasm  "cmp ax, 0"
    asm osasm "cmp ax, #0"

    asm nasm  "je __print_int_end"
    asm osasm "je __print_int_end"

    asm nasm  "mov bx, 10"
    asm osasm "mov bx, #10"

    asm nasm  "div bx"
    asm osasm "div bx"

    asm nasm  "cmp ax, 0"
    asm osasm "cmp ax, #0"

    asm nasm  "je __print_int_end"
    asm osasm "je __print_int_end"

    asm nasm  "push dx"
    asm osasm "push dx"

    asm nasm  "push ax"
    asm osasm "push ax"

    asm nasm  "call __print_int"
    asm osasm "call __print_int"

    asm nasm  "add sp, 2"
    asm osasm "add sp, #2"

    asm nasm  "pop dx"
    asm osasm "pop dx"

    asm nasm  "__print_int_end:"
    asm osasm "__print_int_end:"

    asm nasm  "mov ax, dx"
    asm osasm "mov ax, dx"

    asm nasm  "add ax, '0'"
    asm osasm "add ax, #'0'"

    asm nasm  "mov ah, 0xe"
    asm osasm "movb ah, #0xe"

    asm nasm  "int 0x10"
    asm osasm "int #0x10"
end sub