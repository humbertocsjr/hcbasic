cpu 8086
bits 16
org 0x100
push cs
call _os_start2
ROTULO0:
; MODULO: os
_os_start2:
push bp
mov bp, sp
sub sp, 4
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
push es
push di
push cs
call _program_main
add sp, 4
int 0x20
ROTULO1:
mov sp, bp
pop bp
FIM_os_start2:
retf
_os_codesegment:
mov ax, cs
ROTULO2:
FIM_os_codesegment:
retf
_os_stacksegment:
mov ax, ss
ROTULO3:
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
ROTULO4:
mov sp, bp
pop bp
FIM_console_writechar:
retf
_console_write:
push bp
mov bp, sp
inc word [bp+6]
ROTULO6:
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO9
jmp ROTULO10
ROTULO9:
mov ax, 65535
jmp ROTULO11
ROTULO10:
xor ax, ax
ROTULO11:
cmp ax, 0
jne ROTULO7
jmp ROTULO8
ROTULO7:
xor ax, ax
es mov al, [di+0]
push ax
push cs
call _console_writechar
add sp, 2
inc word [bp+6]
jmp ROTULO6
ROTULO8:
ROTULO5:
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
ROTULO12:
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
ja ROTULO16
jmp ROTULO17
ROTULO16:
mov ax, 65535
jmp ROTULO18
ROTULO17:
xor ax, ax
ROTULO18:
cmp ax, 0
jne ROTULO14
jmp ROTULO15
ROTULO14:
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO15:
mov ax, 48
push ax
mov ax, [bp+-2]
pop bx
add ax, bx
push ax
push cs
call _console_writechar
add sp, 2
ROTULO13:
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
jb ROTULO22
jmp ROTULO23
ROTULO22:
mov ax, 65535
jmp ROTULO24
ROTULO23:
xor ax, ax
ROTULO24:
cmp ax, 0
jne ROTULO20
jmp ROTULO21
ROTULO20:
xor ax, ax
push ax
mov ax, [bp+6]
pop bx
sub ax, bx
mov [bp+6], ax
ROTULO21:
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO19:
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
ROTULO25:
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
ROTULO26:
mov sp, bp
pop bp
FIM_console_writeint8:
retf
; MODULO FIM: console
; MODULO: program
jmp ROTULO27
_program_testeglobal:
times 2 db 0
ROTULO27:
_program_main:
push bp
mov bp, sp
sub sp, 8
jmp ROTULO29
ROTULO30:
db 7
db 79,105,101,101,101,101,101
times 1 db 0
ROTULO29:
mov ax, cs
mov word [bp+-4+2], ax
mov ax, ROTULO30
mov [bp+-4], ax
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push cs
call _console_write
add sp, 4
push word [bp+-4+2]
pop es
mov di, [bp+-4]
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
ROTULO31:
mov ax, [bp+-8]
push ax
mov ax, 5
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO34
jmp ROTULO35
ROTULO34:
mov ax, 65535
jmp ROTULO36
ROTULO35:
xor ax, ax
ROTULO36:
cmp ax, 0
jne ROTULO32
jmp ROTULO33
ROTULO32:
mov ax, [bp+-8]
push ax
push cs
call _console_writeuint16
add sp, 2
inc word [bp+-8]
jmp ROTULO31
ROTULO33:
ROTULO28:
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
jmp ROTULO37
ROTULO37:
mov sp, bp
pop bp
FIM_program_soma:
retf
_program_teste:
mov ax, 456
jmp ROTULO38
ROTULO38:
FIM_program_teste:
retf
; MODULO FIM: program
