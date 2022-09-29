dim shared __print_string_var__ as string * 255

sub __print_char(c as integer)
    asm nasm  "mov al, [bp+4]"
    asm osasm "movb al, 4[bp]"

    asm nasm  "mov ah, 0xe"
    asm osasm "movb ah, #0xe"

    asm nasm  "int 0x10"
    asm osasm "int #0x10"
end sub

sub __print_enter()
    asm nasm  "mov ah, 0xe"
    asm osasm "movb ah, #0xe"

    asm nasm  "mov al, 13"
    asm osasm "movb al, #13"

    asm nasm  "int 0x10"
    asm osasm "int #0x10"

    asm nasm  "mov al, 10"
    asm osasm "movb al, #10"

    asm nasm  "int 0x10"
    asm osasm "int #0x10"
end sub