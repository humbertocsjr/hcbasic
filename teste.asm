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
; MODULO: string
_string_length:
push bp
mov bp, sp
sub sp, 2
mov word [bp+-2], 0
inc word [bp+6]
ROTULO5:
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
inc word [bp+-2]
inc word [bp+6]
jmp ROTULO5
ROTULO7:
mov ax, [bp+-2]
jmp ROTULO4
ROTULO4:
mov sp, bp
pop bp
FIM_string_length:
retf
; MODULO FIM: string
; MODULO: file
_file_open:
push bp
mov bp, sp
sub sp, 2
mov ax, 0x3d02
push ds
push word [bp+12]
pop ds
mov dx, [bp+10]
inc dx
int 0x21
pushf
mov [bp-2], ax
popf
pop ds
jnc .fim
xor ax, ax
jmp ROTULO11
.fim:
mov ax, [bp+-2]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], ax
mov ax, 1
jmp ROTULO11
ROTULO11:
mov sp, bp
pop bp
FIM_file_open:
retf
_file_create:
push bp
mov bp, sp
sub sp, 2
mov ax, 0x3c00
push ds
push word [bp+12]
pop ds
xor cx, cx
mov dx, [bp+10]
inc dx
int 0x21
pushf
mov [bp-2], ax
popf
pop ds
jnc .fim
xor ax, ax
jmp ROTULO12
.fim:
mov ax, [bp+-2]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], ax
mov ax, 1
jmp ROTULO12
ROTULO12:
mov sp, bp
pop bp
FIM_file_create:
retf
_file_read:
push bp
mov bp, sp
sub sp, 2
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
inc word [bp+10]
mov ax, [bp+-2]
push ax
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _file_readraw
add sp, 10
mov [bp+-2], ax
mov ax, [bp+-2]
jmp ROTULO13
ROTULO13:
mov sp, bp
pop bp
FIM_file_read:
retf
_file_readraw:
push bp
mov bp, sp
sub sp, 2
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
mov ax, 0x3f00
push ds
push word [bp+12]
pop ds
mov dx, [bp+10]
mov cx, [bp+14]
mov bx, [bp-2]
int 0x21
pushf
mov [bp-2], ax
popf
pop ds
jnc .fim
xor ax, ax
jmp ROTULO14
.fim:
mov ax, [bp+-2]
jmp ROTULO14
ROTULO14:
mov sp, bp
pop bp
FIM_file_readraw:
retf
_file_write:
push bp
mov bp, sp
sub sp, 2
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
push cs
call _string_length
add sp, 4
mov [bp+-2], ax
inc word [bp+10]
mov ax, [bp+-2]
push ax
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _file_writeraw
add sp, 10
jmp ROTULO15
ROTULO15:
mov sp, bp
pop bp
FIM_file_write:
retf
_file_writeraw:
push bp
mov bp, sp
sub sp, 2
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
mov ax, 0x4000
push ds
push word [bp+12]
pop ds
mov dx, [bp+10]
mov cx, [bp+14]
mov bx, [bp-2]
int 0x21
pushf
mov [bp-2], ax
popf
pop ds
jnc .fim
xor ax, ax
jmp ROTULO16
.fim:
mov ax, [bp+-2]
jmp ROTULO16
ROTULO16:
mov sp, bp
pop bp
FIM_file_writeraw:
retf
_file_close:
push bp
mov bp, sp
sub sp, 2
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
mov ax, 0x3e00
mov bx, [bp-2]
int 0x21
jnc .fim
xor ax, ax
jmp ROTULO17
.fim:
mov ax, 1
jmp ROTULO17
ROTULO17:
mov sp, bp
pop bp
FIM_file_close:
retf
_file_seekstart:
push bp
mov bp, sp
sub sp, 2
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
mov ax, 0x4200
mov bx, [bp-2]
xor cx, cx
mov dx, [bp+10]
int 0x21
jnc .fim
xor ax, ax
jmp ROTULO18
.fim:
mov ax, 1
jmp ROTULO18
ROTULO18:
mov sp, bp
pop bp
FIM_file_seekstart:
retf
_file_seekcurrent:
push bp
mov bp, sp
sub sp, 2
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
mov ax, 0x4201
mov bx, [bp-2]
xor cx, cx
mov dx, [bp+10]
int 0x21
jnc .fim
xor ax, ax
jmp ROTULO19
.fim:
mov ax, 1
jmp ROTULO19
ROTULO19:
mov sp, bp
pop bp
FIM_file_seekcurrent:
retf
_file_seekend:
push bp
mov bp, sp
sub sp, 2
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
mov ax, 0x4202
mov bx, [bp-2]
xor cx, cx
mov dx, [bp+10]
int 0x21
jnc .fim
xor ax, ax
jmp ROTULO20
.fim:
mov ax, 1
jmp ROTULO20
ROTULO20:
mov sp, bp
pop bp
FIM_file_seekend:
retf
; MODULO FIM: file
; MODULO: console
_console_readchar:
mov ah, 1
int 0x21
xor ah, ah
ROTULO21:
FIM_console_readchar:
retf
_console_readline:
push bp
mov bp, sp
sub sp, 6
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
inc word [bp+6]
sub sp, 2
push ss
pop es
mov di, sp
push es
pop word [bp+-6+2]
mov [bp+-6], di
xor ax, ax
es mov [di+0], ax
mov ax, [bp+-2]
push ax
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push word [bp+-6+2]
pop es
mov di, [bp+-6]
push es
push di
push cs
call _file_readraw
add sp, 10
mov [bp+-2], ax
ROTULO23:
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
ja ROTULO32
jmp ROTULO33
ROTULO32:
mov ax, 65535
jmp ROTULO34
ROTULO33:
xor ax, ax
ROTULO34:
push ax
xor ax, ax
es mov al, [di+0]
push ax
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO35
jmp ROTULO36
ROTULO35:
mov ax, 65535
jmp ROTULO37
ROTULO36:
xor ax, ax
ROTULO37:
mov bx, ax
pop ax
and ax, bx
push ax
xor ax, ax
es mov al, [di+0]
push ax
mov ax, 10
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO38
jmp ROTULO39
ROTULO38:
mov ax, 65535
jmp ROTULO40
ROTULO39:
xor ax, ax
ROTULO40:
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO24
jmp ROTULO25
ROTULO24:
inc word [bp+6]
jmp ROTULO23
ROTULO25:
mov ax, [bp+6+2]
mov es, ax
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO22:
mov sp, bp
pop bp
FIM_console_readline:
retf
_console_writechar:
push bp
mov bp, sp
mov dl, [bp+6]
mov ah, 2
int 0x21
ROTULO41:
mov sp, bp
pop bp
FIM_console_writechar:
retf
_console_write:
push bp
mov bp, sp
inc word [bp+6]
ROTULO43:
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
ja ROTULO46
jmp ROTULO47
ROTULO46:
mov ax, 65535
jmp ROTULO48
ROTULO47:
xor ax, ax
ROTULO48:
cmp ax, 0
jne ROTULO44
jmp ROTULO45
ROTULO44:
xor ax, ax
es mov al, [di+0]
push ax
push cs
call _console_writechar
add sp, 2
inc word [bp+6]
jmp ROTULO43
ROTULO45:
ROTULO42:
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
ROTULO49:
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
ja ROTULO53
jmp ROTULO54
ROTULO53:
mov ax, 65535
jmp ROTULO55
ROTULO54:
xor ax, ax
ROTULO55:
cmp ax, 0
jne ROTULO51
jmp ROTULO52
ROTULO51:
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO52:
mov ax, 48
push ax
mov ax, [bp+-2]
pop bx
add ax, bx
push ax
push cs
call _console_writechar
add sp, 2
ROTULO50:
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
jb ROTULO59
jmp ROTULO60
ROTULO59:
mov ax, 65535
jmp ROTULO61
ROTULO60:
xor ax, ax
ROTULO61:
cmp ax, 0
jne ROTULO57
jmp ROTULO58
ROTULO57:
xor ax, ax
push ax
mov ax, [bp+6]
pop bx
sub ax, bx
mov [bp+6], ax
ROTULO58:
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO56:
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
ROTULO62:
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
ROTULO63:
mov sp, bp
pop bp
FIM_console_writeint8:
retf
; MODULO FIM: console
; MODULO: program
_program_main:
push bp
mov bp, sp
sub sp, 8
sub sp, 2
push ss
pop es
mov di, sp
push es
pop word [bp+-4+2]
mov [bp+-4], di
jmp ROTULO65
ROTULO66:
db 7
db 32,32,32,32,32,32,32
times 1 db 0
ROTULO65:
mov ax, cs
mov word [bp+-8+2], ax
mov ax, ROTULO66
mov [bp+-8], ax
push cs
pop es
mov di, ROTULO68
jmp ROTULO67
ROTULO68:
db 26
db 84,101,115,116,101,32,67,114,105,97,99,97,111,32,100,101,32,97,114,113,117,105,118,111,58,32
times 1 db 0
ROTULO67:
push es
push di
push cs
call _console_write
add sp, 4
push cs
pop es
mov di, ROTULO72
jmp ROTULO71
ROTULO72:
db 9
db 116,101,115,116,101,46,116,120,116
times 1 db 0
ROTULO71:
push es
push di
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push cs
call _file_create
add sp, 8
cmp ax, 0
jne ROTULO69
jmp ROTULO70
ROTULO69:
push cs
pop es
mov di, ROTULO74
jmp ROTULO73
ROTULO74:
db 45
db 84,101,120,116,111,32,116,101,115,116,101,32,110,111,32,97,114,113,117,105,118,111,32,101,115,99,114,105,116,111,32,112,101,108,111,32,116,101,115,116,101,46,104,99,98
times 1 db 0
ROTULO73:
push es
push di
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push cs
call _file_write
add sp, 8
push ax
push cs
call _console_writeuint16
add sp, 2
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push cs
call _file_close
add sp, 4
push cs
pop es
mov di, ROTULO76
jmp ROTULO75
ROTULO76:
db 15
db 32,66,121,116,101,115,32,101,115,99,114,105,116,111,115
times 1 db 0
ROTULO75:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO77
ROTULO70:
push cs
pop es
mov di, ROTULO79
jmp ROTULO78
ROTULO79:
db 6
db 32,70,65,76,72,65
times 1 db 0
ROTULO78:
push es
push di
push cs
call _console_writeline
add sp, 4
ROTULO77:
push cs
pop es
mov di, ROTULO81
jmp ROTULO80
ROTULO81:
db 18
db 69,115,99,114,101,118,97,32,115,101,117,32,110,111,109,101,58,32
times 1 db 0
ROTULO80:
push es
push di
push cs
call _console_write
add sp, 4
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
push cs
call _console_readline
add sp, 4
push cs
pop es
mov di, ROTULO83
jmp ROTULO82
ROTULO83:
db 4
db 79,105,101,32
times 1 db 0
ROTULO82:
push es
push di
push cs
call _console_write
add sp, 4
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
push cs
call _console_write
add sp, 4
push cs
pop es
mov di, ROTULO85
jmp ROTULO84
ROTULO85:
db 1
db 33
times 1 db 0
ROTULO84:
push es
push di
push cs
call _console_writeline
add sp, 4
ROTULO64:
mov sp, bp
pop bp
FIM_program_main:
retf
; MODULO FIM: program
