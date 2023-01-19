cpu 8086
bits 16
org 0x100
push cs
call _program_main
int 0x20
ROTULO0:
; MODULO: os
_os_codesegment:
mov ax, cs
ROTULO1:
FIM_os_codesegment:
retf
_os_stacksegment:
mov ax, ss
ROTULO2:
FIM_os_stacksegment:
retf
; MODULO FIM: os
; MODULO: console
_console_writechar:
push bp
mov bp, sp
mov ax, [bp+6]
mov ah, 0xe
int 0x10
ROTULO3:
mov sp, bp
pop bp
FIM_console_writechar:
retf
_console_write:
push bp
mov bp, sp
ROTULO5:
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO8
jmp ROTULO9
ROTULO8:
mov ax, 65535
jmp ROTULO10
ROTULO9:
xor ax, ax
ROTULO10:
cmp ax, 0
jne ROTULO6
jmp ROTULO7
ROTULO6:
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di]
push ax
push cs
call _console_writechar
add sp, 2
inc word [bp+6]
jmp ROTULO5
ROTULO7:
ROTULO4:
mov sp, bp
pop bp
FIM_console_write:
retf
_console_writeline:
push bp
mov bp, sp
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di]
push es
push di
push cs
call _console_write
add sp, 4
mov ax, 13
push ax
push cs
call _console_writechar
add sp, 2
mov ax, 10
push ax
push cs
call _console_writechar
add sp, 2
ROTULO11:
mov sp, bp
pop bp
FIM_console_writeline:
retf
_console_writeuint16:
push bp
mov bp, sp
sub sp, 4
mov ax, [bp+6]
push ax
mov ax, 10
mov bx, ax
pop ax
xor dx, dx
div bx
mov ax, dx
mov [bp+-2], ax
mov ax, [bp+6]
push ax
mov ax, 10
mov bx, ax
pop ax
xor dx, dx
div bx
mov [bp+-4], ax
mov ax, [bp+-4]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO15
jmp ROTULO16
ROTULO15:
mov ax, 65535
jmp ROTULO17
ROTULO16:
xor ax, ax
ROTULO17:
cmp ax, 0
jne ROTULO13
jmp ROTULO14
ROTULO13:
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO14:
mov ax, 48
push ax
mov ax, [bp+-2]
pop bx
add ax, bx
push ax
push cs
call _console_writechar
add sp, 2
ROTULO12:
mov sp, bp
pop bp
FIM_console_writeuint16:
retf
_console_writeint16:
push bp
mov bp, sp
mov ax, [bp+6]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO21
jmp ROTULO22
ROTULO21:
mov ax, 65535
jmp ROTULO23
ROTULO22:
xor ax, ax
ROTULO23:
cmp ax, 0
jne ROTULO19
jmp ROTULO20
ROTULO19:
xor ax, ax
push ax
mov ax, [bp+6]
pop bx
sub ax, bx
mov [bp+6], ax
ROTULO20:
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO18:
mov sp, bp
pop bp
FIM_console_writeint16:
retf
_console_writeuint8:
push bp
mov bp, sp
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO24:
mov sp, bp
pop bp
FIM_console_writeuint8:
retf
_console_writeint8:
push bp
mov bp, sp
mov ax, [bp+6]
push ax
push cs
call _console_writeint16
add sp, 2
ROTULO25:
mov sp, bp
pop bp
FIM_console_writeint8:
retf
; MODULO FIM: console
; MODULO: program
jmp ROTULO26
_program_testeglobal:
times 2 db 0
ROTULO26:
_program_main:
push bp
mov bp, sp
sub sp, 4
jmp ROTULO28
ROTULO29:
db 79,105,101,101,101,101,101
times 1 db 0
ROTULO28:
mov ax, cs
mov word [bp+-4+2], ax
mov ax, ROTULO29
mov [bp+-4], ax
push word [bp+-4+2]
pop es
mov di, [bp+-4]
xor ax, ax
es mov al, [di]
push es
push di
push cs
call _console_write
add sp, 4
cs mov word [_program_testeglobal], 123
cs mov ax, [_program_testeglobal]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO27:
mov sp, bp
pop bp
FIM_program_main:
retf
; MODULO FIM: program
