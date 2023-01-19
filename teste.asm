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
ja ROTULO14
jmp ROTULO15
ROTULO14:
mov ax, 65535
jmp ROTULO16
ROTULO15:
xor ax, ax
ROTULO16:
cmp ax, 0
jne ROTULO12
jmp ROTULO13
ROTULO12:
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO13:
mov ax, 48
push ax
mov ax, [bp+-2]
pop bx
add ax, bx
push ax
push cs
call _console_writechar
add sp, 2
ROTULO11:
mov sp, bp
pop bp
FIM_console_writeuint16:
retf
; MODULO FIM: console
; MODULO: program
_program_main:
push bp
mov bp, sp
sub sp, 4
jmp ROTULO18
ROTULO19:
db 65,105,101,101,101,101,101
times 1 db 0
ROTULO18:
mov ax, cs
mov word [bp+-4+2], ax
mov ax, ROTULO19
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
ROTULO17:
mov sp, bp
pop bp
FIM_program_main:
retf
; MODULO FIM: program
