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
_os_consolereadchar:
mov ah, 1
int 0x21
xor ah, ah
ROTULO4:
FIM_os_consolereadchar:
retf
_os_consolewritechar:
push bp
mov bp, sp
mov dl, [bp+6]
mov ah, 2
int 0x21
ROTULO5:
mov sp, bp
pop bp
FIM_os_consolewritechar:
retf
; MODULO FIM: os
; MODULO: program
_program_testecruzada:
push cs
call _referenciacruzada_testecruzada
ROTULO6:
FIM_program_testecruzada:
retf
_program_main:
push bp
mov bp, sp
sub sp, 12
sub sp, 34
push ss
pop es
mov di, sp
push es
pop word [bp+-4+2]
mov [bp+-4], di
sub sp, 129
push ss
pop es
mov di, sp
push es
pop word [bp+-8+2]
mov [bp+-8], di
es mov byte [di+0], 128
es mov byte [di+1], 0
push cs
pop es
mov di, ROTULO9
jmp ROTULO8
ROTULO9:
db 26
db 84,101,115,116,101,32,67,114,105,97,99,97,111,32,100,101,32,97,114,113,117,105,118,111,58,32
times 1 db 0
ROTULO8:
push es
push di
push cs
call _console_write
add sp, 4
push cs
pop es
mov di, ROTULO13
jmp ROTULO12
ROTULO13:
db 9
db 116,101,115,116,101,46,116,120,116
times 1 db 0
ROTULO12:
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
jne ROTULO10
jmp ROTULO11
ROTULO10:
push cs
pop es
mov di, ROTULO15
jmp ROTULO14
ROTULO15:
db 47
db 84,101,120,116,111,32,116,101,115,116,101,32,110,111,32,97,114,113,117,105,118,111,32,101,115,99,114,105,116,111,32,112,101,108,111,32,116,101,115,116,101,46,104,99,98,46,32
times 1 db 0
ROTULO14:
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
push cs
pop es
mov di, ROTULO17
jmp ROTULO16
ROTULO17:
db 3
db 32,43,32
times 1 db 0
ROTULO16:
push es
push di
push cs
call _console_write
add sp, 4
push cs
pop es
mov di, ROTULO19
jmp ROTULO18
ROTULO19:
db 41
db 84,101,120,116,111,32,116,101,115,116,101,32,101,109,105,116,105,100,111,32,118,105,97,32,83,116,114,117,99,116,117,114,101,32,83,116,114,101,97,109,46
times 1 db 0
ROTULO18:
push es
push di
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
es call far [di+14]
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
mov di, ROTULO21
jmp ROTULO20
ROTULO21:
db 15
db 32,66,121,116,101,115,32,101,115,99,114,105,116,111,115
times 1 db 0
ROTULO20:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO22
ROTULO11:
push cs
pop es
mov di, ROTULO24
jmp ROTULO23
ROTULO24:
db 6
db 32,70,65,76,72,65
times 1 db 0
ROTULO23:
push es
push di
push cs
call _console_writeline
add sp, 4
ROTULO22:
push cs
pop es
mov di, ROTULO26
jmp ROTULO25
ROTULO26:
db 18
db 69,115,99,114,101,118,97,32,115,101,117,32,110,111,109,101,58,32
times 1 db 0
ROTULO25:
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
mov di, ROTULO28
jmp ROTULO27
ROTULO28:
db 4
db 79,105,101,32
times 1 db 0
ROTULO27:
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
call _string_length
add sp, 4
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO31
jmp ROTULO32
ROTULO31:
mov ax, 65535
jmp ROTULO33
ROTULO32:
xor ax, ax
ROTULO33:
cmp ax, 0
jne ROTULO29
jmp ROTULO30
ROTULO29:
push cs
pop es
mov di, ROTULO35
jmp ROTULO34
ROTULO35:
db 8
db 83,101,109,32,78,111,109,101
times 1 db 0
ROTULO34:
push es
push di
push cs
call _console_write
add sp, 4
jmp ROTULO36
ROTULO30:
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
push cs
call _console_write
add sp, 4
ROTULO36:
push cs
pop es
mov di, ROTULO38
jmp ROTULO37
ROTULO38:
db 1
db 33
times 1 db 0
ROTULO37:
push es
push di
push cs
call _console_writeline
add sp, 4
push cs
pop es
mov di, ROTULO40
jmp ROTULO39
ROTULO40:
db 26
db 84,101,115,116,101,32,100,101,32,102,117,110,99,97,111,32,105,110,100,105,114,101,116,97,58,32
times 1 db 0
ROTULO39:
push es
push di
push cs
call _console_write
add sp, 4
push cs
pop es
mov di, _program_testefunc
push es
pop word [bp+-12+2]
mov [bp+-12], di
call far [bp+-12]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO7:
mov sp, bp
pop bp
FIM_program_main:
retf
_program_testefunc:
mov ax, 123
jmp ROTULO41
ROTULO41:
FIM_program_testefunc:
retf
; MODULO FIM: program
; MODULO: referenciacruzada
_referenciacruzada_testecruzada:
push cs
call _program_testecruzada
ROTULO42:
FIM_referenciacruzada_testecruzada:
retf
; MODULO FIM: referenciacruzada
; MODULO: console
_console_readchar:
push cs
call _os_consolereadchar
jmp ROTULO43
ROTULO43:
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
inc di
sub sp, 34
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
ROTULO45:
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
ja ROTULO54
jmp ROTULO55
ROTULO54:
mov ax, 65535
jmp ROTULO56
ROTULO55:
xor ax, ax
ROTULO56:
push ax
xor ax, ax
es mov al, [di+0]
push ax
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO57
jmp ROTULO58
ROTULO57:
mov ax, 65535
jmp ROTULO59
ROTULO58:
xor ax, ax
ROTULO59:
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
jne ROTULO60
jmp ROTULO61
ROTULO60:
mov ax, 65535
jmp ROTULO62
ROTULO61:
xor ax, ax
ROTULO62:
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO46
jmp ROTULO47
ROTULO46:
inc word [bp+6]
inc di
jmp ROTULO45
ROTULO47:
mov ax, [bp+6+2]
mov es, ax
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO44:
mov sp, bp
pop bp
FIM_console_readline:
retf
_console_writechar:
push bp
mov bp, sp
mov ax, [bp+6]
push ax
push cs
call _os_consolewritechar
add sp, 2
ROTULO63:
mov sp, bp
pop bp
FIM_console_writechar:
retf
_console_write:
push bp
mov bp, sp
inc word [bp+6]
ROTULO65:
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
ja ROTULO68
jmp ROTULO69
ROTULO68:
mov ax, 65535
jmp ROTULO70
ROTULO69:
xor ax, ax
ROTULO70:
cmp ax, 0
jne ROTULO66
jmp ROTULO67
ROTULO66:
xor ax, ax
es mov al, [di+0]
push ax
push cs
call _console_writechar
add sp, 2
inc word [bp+6]
jmp ROTULO65
ROTULO67:
ROTULO64:
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
ROTULO71:
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
ja ROTULO75
jmp ROTULO76
ROTULO75:
mov ax, 65535
jmp ROTULO77
ROTULO76:
xor ax, ax
ROTULO77:
cmp ax, 0
jne ROTULO73
jmp ROTULO74
ROTULO73:
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO74:
mov ax, 48
push ax
mov ax, [bp+-2]
pop bx
add ax, bx
push ax
push cs
call _console_writechar
add sp, 2
ROTULO72:
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
jb ROTULO81
jmp ROTULO82
ROTULO81:
mov ax, 65535
jmp ROTULO83
ROTULO82:
xor ax, ax
ROTULO83:
cmp ax, 0
jne ROTULO79
jmp ROTULO80
ROTULO79:
xor ax, ax
push ax
mov ax, [bp+6]
pop bx
sub ax, bx
mov [bp+6], ax
ROTULO80:
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO78:
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
ROTULO84:
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
ROTULO85:
mov sp, bp
pop bp
FIM_console_writeint8:
retf
; MODULO FIM: console
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
jmp ROTULO86
.fim:
mov ax, [bp+-2]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], ax
push cs
pop es
mov di, _file_read
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+6]
es pop word [di+6+2]
push cs
pop es
mov di, _file_readraw
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+2]
es pop word [di+2+2]
push cs
pop es
mov di, _file_write
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+14]
es pop word [di+14+2]
push cs
pop es
mov di, _file_writeraw
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+10]
es pop word [di+10+2]
push cs
pop es
mov di, _file_close
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+18]
es pop word [di+18+2]
push cs
pop es
mov di, _file_seekcurrent
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+22]
es pop word [di+22+2]
push cs
pop es
mov di, _file_seekend
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+30]
es pop word [di+30+2]
push cs
pop es
mov di, _file_seekstart
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+26]
es pop word [di+26+2]
mov ax, 1
jmp ROTULO86
ROTULO86:
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
jmp ROTULO87
.fim:
mov ax, [bp+-2]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], ax
push cs
pop es
mov di, _file_read
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+6]
es pop word [di+6+2]
push cs
pop es
mov di, _file_readraw
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+2]
es pop word [di+2+2]
push cs
pop es
mov di, _file_write
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+14]
es pop word [di+14+2]
push cs
pop es
mov di, _file_writeraw
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+10]
es pop word [di+10+2]
push cs
pop es
mov di, _file_close
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+18]
es pop word [di+18+2]
mov ax, 1
jmp ROTULO87
ROTULO87:
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
inc di
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
jmp ROTULO88
ROTULO88:
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
jmp ROTULO89
.fim:
mov ax, [bp+-2]
jmp ROTULO89
ROTULO89:
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
jmp ROTULO90
ROTULO90:
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
jmp ROTULO91
.fim:
mov ax, [bp+-2]
jmp ROTULO91
ROTULO91:
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
jmp ROTULO92
.fim:
mov ax, 1
jmp ROTULO92
ROTULO92:
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
jmp ROTULO93
.fim:
mov ax, 1
jmp ROTULO93
ROTULO93:
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
jmp ROTULO94
.fim:
mov ax, 1
jmp ROTULO94
ROTULO94:
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
jmp ROTULO95
.fim:
mov ax, 1
jmp ROTULO95
ROTULO95:
mov sp, bp
pop bp
FIM_file_seekend:
retf
; MODULO FIM: file
; MODULO: string
_string_length:
push bp
mov bp, sp
sub sp, 2
mov word [bp+-2], 0
inc word [bp+6]
ROTULO97:
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
ja ROTULO100
jmp ROTULO101
ROTULO100:
mov ax, 65535
jmp ROTULO102
ROTULO101:
xor ax, ax
ROTULO102:
cmp ax, 0
jne ROTULO98
jmp ROTULO99
ROTULO98:
inc word [bp+-2]
inc word [bp+6]
inc di
jmp ROTULO97
ROTULO99:
mov ax, [bp+-2]
jmp ROTULO96
ROTULO96:
mov sp, bp
pop bp
FIM_string_length:
retf
; MODULO FIM: string
