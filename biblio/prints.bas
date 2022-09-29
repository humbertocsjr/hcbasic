

sub __print_str(txt as string)
    asm nasm  "mov si, [bp+4]"
    asm osasm "mov si, 4[bp]"

    asm nasm  "mov ax, [bp+6]"
    asm osasm "mov ax, 6[bp]"

    asm nasm  "mov ds, ax"
    asm osasm "mov ds, ax"

    asm nasm  "xor ax, ax"
    asm osasm "xor ax, ax"

    asm nasm  "lodsb"
    asm osasm "lodsb"

    asm nasm  "mov cx, ax"
    asm osasm "mov cx, ax"

    asm nasm  "__print_str_loop:"
    asm osasm "__print_str_loop:"

    asm nasm  "  lodsb"
    asm osasm "  lodsb"

    asm nasm  "  cmp al, 0"
    asm osasm "  cmpb al, #0"

    asm nasm  "  je __print_str_end"
    asm osasm "  je __print_str_end"

    asm nasm  "  mov ah, 0xe"
    asm osasm "  movb ah, #0xe"

    asm nasm  "  int 0x10"
    asm osasm "  int #0x10"

    asm nasm  "loop __print_str_loop"
    asm osasm "loop __print_str_loop"

    asm nasm  "__print_str_end:"
    asm osasm "__print_str_end:"
end sub