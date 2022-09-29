' Informa posicao do codigo
asm nasm "org 0x100"
' O OSASM faz isso sozinho quando usado o OSASMCOM

' Reserva apos o executavel 64 KiB de memoria para Stack
asm nasm  "mov ax, cs"
asm osasm "mov ax, cs"

asm nasm  "mov bx, __FIM__"
asm osasm "mov bx, #__FIM__"

asm nasm  "mov cl, 4"
asm osasm "movb cl, #4"

asm nasm  "shr bx, cl"
asm osasm "shr bx, cl"

asm nasm  "add ax, bx"
asm osasm "add ax, bx"

asm nasm  "inc ax"
asm osasm "inc ax"

asm nasm  "mov ds, ax"
asm osasm "mov ds, ax"

asm nasm  "mov es, ax"
asm osasm "mov es, ax"

asm nasm  "mov ss, ax"
asm osasm "mov ss, ax"

asm nasm  "cs"
asm osasm "seg cs"

asm nasm  "mov [__SP__], sp"
asm osasm "mov __SP__, sp"

asm nasm  "mov sp, 0xffff"
asm osasm "mov sp, #0xffff"

' Chama o codigo principal

asm nasm  "call __INICIO__"
asm osasm "call __INICIO__"

asm nasm  "cs"
asm osasm "seg cs"

asm nasm  "mov sp, [__SP__]"
asm osasm "mov sp, __SP__"

asm nasm  "mov ax, cs"
asm osasm "mov ax, cs"

asm nasm  "mov ss, ax"
asm osasm "mov ss, ax"

asm nasm  "ret"
asm osasm "ret"

asm nasm  "__SP__:"
asm osasm "__SP__:"

asm nasm  "dw 0"
asm osasm ".zerow 1"

asm nasm  "__INICIO__:"
asm osasm "__INICIO__:"
' Inicio do codigo principal do programa