push bp
mov bp, sp
sub sp, 4
cpu 8086
bits 16
org 0x100
mov ax, cs
mov [bp-2], ax
mov word [bp-4], 0x80
mov al, [0x80]
xor ah, ah
mov si, ax
add si, 0x80
mov byte [si+1], 0
push word [bp+-4+2]
pop es
mov di, [bp+-4]
xor ax, ax
es mov al, [di]
push es
push di
push cs
call _program_main
add sp, 4
int 0x20
ROTULO0:
mov sp, bp
pop bp
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
inc word [bp+6]
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
sub sp, 8
jmp ROTULO28
ROTULO29:
db 7
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
mov ax, 2
push ax
mov ax, 1
push ax
push cs
call _program_soma
add sp, 4
push ax
push cs
call _console_writeuint16
add sp, 2
cs mov word [_program_testeglobal], 123
cs mov ax, [_program_testeglobal]
push ax
push cs
call _console_writeuint16
add sp, 2
push cs
call _program_teste
push ax
push cs
call _console_writeuint16
add sp, 2
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
mov ax, 15
push ax
mov ax, 15
push ax
push cs
call _program_soma
add sp, 4
mov [bp+-6], ax
mov ax, [bp+-6]
push ax
push cs
call _console_writeuint16
add sp, 2
mov word [bp+-8], 1
ROTULO30:
mov ax, [bp+-8]
push ax
mov ax, 5
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO33
jmp ROTULO34
ROTULO33:
mov ax, 65535
jmp ROTULO35
ROTULO34:
xor ax, ax
ROTULO35:
cmp ax, 0
jne ROTULO31
jmp ROTULO32
ROTULO31:
mov ax, [bp+-8]
push ax
push cs
call _console_writeuint16
add sp, 2
inc word [bp+-8]
jmp ROTULO30
ROTULO32:
ROTULO27:
mov sp, bp
pop bp
FIM_program_main:
retf
_program_soma:
push bp
mov bp, sp
mov ax, [bp+6]
push ax
mov ax, [bp+8]
pop bx
add ax, bx
jmp ROTULO36
ROTULO36:
mov sp, bp
pop bp
FIM_program_soma:
retf
_program_teste:
mov ax, 456
jmp ROTULO37
ROTULO37:
FIM_program_teste:
retf
; MODULO FIM: program
