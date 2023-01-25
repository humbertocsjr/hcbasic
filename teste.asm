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
sub sp, 18
push cs
call _os_codesegment
mov word [bp+-8+2], ax
push cs
call _os_codesegment
mov word [bp+-12+2], ax
push cs
call _os_realoctable
mov [bp+-8], ax
ROTULO2:
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+0]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO5
jmp ROTULO6
ROTULO5:
mov ax, 65535
jmp ROTULO7
ROTULO6:
xor ax, ax
ROTULO7:
cmp ax, 0
jne ROTULO3
jmp ROTULO4
ROTULO3:
es mov ax, [di+0]
mov [bp+-14], ax
inc word [bp+-8]
inc di
inc word [bp+-8]
inc di
es mov ax, [di+0]
mov [bp+-12], ax
inc word [bp+-8]
inc di
inc word [bp+-8]
inc di
es mov ax, [di+0]
mov [bp+-16], ax
inc word [bp+-8]
inc di
inc word [bp+-8]
inc di
es mov ax, [di+0]
mov [bp+-18], ax
inc word [bp+-8]
inc di
inc word [bp+-8]
inc di
mov ax, [bp+-14]
push ax
mov ax, 3
mov bx, ax
pop ax
cmp ax, bx
je ROTULO10
jmp ROTULO11
ROTULO10:
mov ax, 65535
jmp ROTULO12
ROTULO11:
xor ax, ax
ROTULO12:
cmp ax, 0
jne ROTULO8
jmp ROTULO9
ROTULO8:
push cs
call _os_codesegment
push ax
mov ax, [bp+-18]
pop bx
add ax, bx
push word [bp+-12+2]
pop es
mov di, [bp+-12]
es mov [di+0], ax
mov ax, [bp+-16]
push ax
mov ax, [bp+-12]
pop bx
add ax, bx
mov [bp+-16], ax
inc word [bp+-12]
inc di
inc word [bp+-12]
inc di
mov ax, [bp+-16]
es mov [di+0], ax
ROTULO9:
mov ax, [bp+-14]
push ax
mov ax, 2
mov bx, ax
pop ax
cmp ax, bx
je ROTULO15
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
mov ax, [bp+-12]
push ax
mov ax, [bp+-16]
pop bx
add ax, bx
mov [bp+-12], ax
push cs
call _os_stacksegment
push ax
mov ax, [bp+-18]
pop bx
add ax, bx
push word [bp+-12+2]
pop es
mov di, [bp+-12]
es mov [di+0], ax
ROTULO14:
mov ax, [bp+-14]
push ax
mov ax, 1
mov bx, ax
pop ax
cmp ax, bx
je ROTULO20
jmp ROTULO21
ROTULO20:
mov ax, 65535
jmp ROTULO22
ROTULO21:
xor ax, ax
ROTULO22:
cmp ax, 0
jne ROTULO18
jmp ROTULO19
ROTULO18:
mov ax, [bp+-12]
push ax
mov ax, [bp+-16]
pop bx
add ax, bx
mov [bp+-12], ax
push cs
call _os_codesegment
push ax
mov ax, [bp+-18]
pop bx
add ax, bx
push word [bp+-12+2]
pop es
mov di, [bp+-12]
es mov [di+0], ax
ROTULO19:
jmp ROTULO2
ROTULO4:
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
ROTULO23:
FIM_os_codesegment:
retf
_os_stacksegment:
mov ax, ss
ROTULO24:
FIM_os_stacksegment:
retf
_os_realoctable:
mov ax, REALOC_TABLE
ROTULO25:
FIM_os_realoctable:
retf
_os_consolereadchar:
mov ah, 1
int 0x21
xor ah, ah
ROTULO26:
FIM_os_consolereadchar:
retf
_os_consolewritechar:
push bp
mov bp, sp
mov dl, [bp+6]
mov ah, 2
int 0x21
ROTULO27:
mov sp, bp
pop bp
FIM_os_consolewritechar:
retf
; MODULO FIM: os
; MODULO: program
jmp ROTULO28
_program_testestring:
times 6 db 0
ROTULO28:
_program_testecruzada:
push cs
call _referenciacruzada_testecruzada
ROTULO29:
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
mov di, ROTULO32
jmp ROTULO31
ROTULO32:
db 26
db 84,101,115,116,101,32,67,114,105,97,99,97,111,32,100,101,32,97,114,113,117,105,118,111,58,32
times 1 db 0
ROTULO31:
push es
push di
push cs
call _console_write
add sp, 4
push cs
pop es
mov di, ROTULO36
jmp ROTULO35
ROTULO36:
db 9
db 116,101,115,116,101,46,116,120,116
times 1 db 0
ROTULO35:
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
jne ROTULO33
jmp ROTULO34
ROTULO33:
push cs
pop es
mov di, ROTULO38
jmp ROTULO37
ROTULO38:
db 47
db 84,101,120,116,111,32,116,101,115,116,101,32,110,111,32,97,114,113,117,105,118,111,32,101,115,99,114,105,116,111,32,112,101,108,111,32,116,101,115,116,101,46,104,99,98,46,32
times 1 db 0
ROTULO37:
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
mov di, ROTULO40
jmp ROTULO39
ROTULO40:
db 3
db 32,43,32
times 1 db 0
ROTULO39:
push es
push di
push cs
call _console_write
add sp, 4
push cs
pop es
mov di, ROTULO42
jmp ROTULO41
ROTULO42:
db 41
db 84,101,120,116,111,32,116,101,115,116,101,32,101,109,105,116,105,100,111,32,118,105,97,32,83,116,114,117,99,116,117,114,101,32,83,116,114,101,97,109,46
times 1 db 0
ROTULO41:
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
mov di, ROTULO44
jmp ROTULO43
ROTULO44:
db 15
db 32,66,121,116,101,115,32,101,115,99,114,105,116,111,115
times 1 db 0
ROTULO43:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO45
ROTULO34:
push cs
pop es
mov di, ROTULO47
jmp ROTULO46
ROTULO47:
db 6
db 32,70,65,76,72,65
times 1 db 0
ROTULO46:
push es
push di
push cs
call _console_writeline
add sp, 4
ROTULO45:
push cs
pop es
mov di, ROTULO49
jmp ROTULO48
ROTULO49:
db 18
db 69,115,99,114,101,118,97,32,115,101,117,32,110,111,109,101,58,32
times 1 db 0
ROTULO48:
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
mov di, ROTULO51
jmp ROTULO50
ROTULO51:
db 4
db 79,105,101,32
times 1 db 0
ROTULO50:
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
je ROTULO54
jmp ROTULO55
ROTULO54:
mov ax, 65535
jmp ROTULO56
ROTULO55:
xor ax, ax
ROTULO56:
cmp ax, 0
jne ROTULO52
jmp ROTULO53
ROTULO52:
push cs
pop es
mov di, ROTULO58
jmp ROTULO57
ROTULO58:
db 8
db 83,101,109,32,78,111,109,101
times 1 db 0
ROTULO57:
push es
push di
push cs
call _console_write
add sp, 4
jmp ROTULO59
ROTULO53:
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
push cs
call _console_write
add sp, 4
ROTULO59:
push cs
pop es
mov di, ROTULO61
jmp ROTULO60
ROTULO61:
db 1
db 33
times 1 db 0
ROTULO60:
push es
push di
push cs
call _console_writeline
add sp, 4
push cs
pop es
mov di, ROTULO63
jmp ROTULO62
ROTULO63:
db 27
db 84,101,115,116,101,32,100,101,32,102,117,110,99,97,111,32,105,110,100,105,114,101,116,97,58,32,39
times 1 db 0
ROTULO62:
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
push cs
pop es
mov di, ROTULO65
jmp ROTULO64
ROTULO65:
db 1
db 39
times 1 db 0
ROTULO64:
push es
push di
push cs
call _console_writeline
add sp, 4
cs mov ax, [_program_testestring+2]
push ax
push cs
call _console_writeuint16
add sp, 2
push cs
pop es
mov di, ROTULO67
jmp ROTULO66
ROTULO67:
db 1
db 58
times 1 db 0
ROTULO66:
push es
push di
push cs
call _console_write
add sp, 4
cs mov ax, [_program_testestring]
push ax
push cs
call _console_writeuint16
add sp, 2
push cs
pop es
mov di, ROTULO69
jmp ROTULO68
ROTULO69:
db 0
db 
times 1 db 0
ROTULO68:
push es
push di
push cs
call _console_writeline
add sp, 4
push cs
pop es
mov di, ROTULO71
jmp ROTULO70
ROTULO71:
db 16
db 84,101,115,116,101,32,100,101,32,99,111,110,99,97,116,58
times 1 db 0
ROTULO70:
push es
push di
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
push cs
call _string_copy
add sp, 8
push cs
pop es
mov di, ROTULO73
jmp ROTULO72
ROTULO73:
db 21
db 32,84,101,120,116,111,32,99,111,110,99,97,116,101,110,97,100,111,32,49,44
times 1 db 0
ROTULO72:
push es
push di
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
push cs
call _string_concat
add sp, 8
push cs
pop es
mov di, ROTULO75
jmp ROTULO74
ROTULO75:
db 20
db 32,84,101,120,116,111,32,99,111,110,99,97,116,101,110,97,100,111,32,50
times 1 db 0
ROTULO74:
push es
push di
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
push cs
call _string_concat
add sp, 8
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
push cs
call _console_writeline
add sp, 4
ROTULO30:
mov sp, bp
pop bp
FIM_program_main:
retf
_program_testefunc:
mov ax, 123
jmp ROTULO76
ROTULO76:
FIM_program_testefunc:
retf
; MODULO FIM: program
; MODULO: referenciacruzada
_referenciacruzada_testecruzada:
push cs
call _program_testecruzada
ROTULO77:
FIM_referenciacruzada_testecruzada:
retf
; MODULO FIM: referenciacruzada
; MODULO: console
_console_readchar:
push cs
call _os_consolereadchar
jmp ROTULO78
ROTULO78:
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
ROTULO80:
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
ja ROTULO89
jmp ROTULO90
ROTULO89:
mov ax, 65535
jmp ROTULO91
ROTULO90:
xor ax, ax
ROTULO91:
push ax
xor ax, ax
es mov al, [di+0]
push ax
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO92
jmp ROTULO93
ROTULO92:
mov ax, 65535
jmp ROTULO94
ROTULO93:
xor ax, ax
ROTULO94:
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
jne ROTULO95
jmp ROTULO96
ROTULO95:
mov ax, 65535
jmp ROTULO97
ROTULO96:
xor ax, ax
ROTULO97:
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO81
jmp ROTULO82
ROTULO81:
inc word [bp+6]
inc di
jmp ROTULO80
ROTULO82:
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO79:
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
ROTULO98:
mov sp, bp
pop bp
FIM_console_writechar:
retf
_console_write:
push bp
mov bp, sp
inc word [bp+6]
ROTULO100:
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
ja ROTULO103
jmp ROTULO104
ROTULO103:
mov ax, 65535
jmp ROTULO105
ROTULO104:
xor ax, ax
ROTULO105:
cmp ax, 0
jne ROTULO101
jmp ROTULO102
ROTULO101:
xor ax, ax
es mov al, [di+0]
push ax
push cs
call _console_writechar
add sp, 2
inc word [bp+6]
jmp ROTULO100
ROTULO102:
ROTULO99:
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
ROTULO106:
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
ja ROTULO110
jmp ROTULO111
ROTULO110:
mov ax, 65535
jmp ROTULO112
ROTULO111:
xor ax, ax
ROTULO112:
cmp ax, 0
jne ROTULO108
jmp ROTULO109
ROTULO108:
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO109:
mov ax, 48
push ax
mov ax, [bp+-2]
pop bx
add ax, bx
push ax
push cs
call _console_writechar
add sp, 2
ROTULO107:
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
jb ROTULO116
jmp ROTULO117
ROTULO116:
mov ax, 65535
jmp ROTULO118
ROTULO117:
xor ax, ax
ROTULO118:
cmp ax, 0
jne ROTULO114
jmp ROTULO115
ROTULO114:
xor ax, ax
push ax
mov ax, [bp+6]
pop bx
sub ax, bx
mov [bp+6], ax
ROTULO115:
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO113:
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
ROTULO119:
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
ROTULO120:
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
jmp ROTULO121
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
jmp ROTULO121
ROTULO121:
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
jmp ROTULO122
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
jmp ROTULO122
ROTULO122:
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
jmp ROTULO123
ROTULO123:
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
jmp ROTULO124
.fim:
mov ax, [bp+-2]
jmp ROTULO124
ROTULO124:
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
jmp ROTULO125
ROTULO125:
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
jmp ROTULO126
.fim:
mov ax, [bp+-2]
jmp ROTULO126
ROTULO126:
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
jmp ROTULO127
.fim:
mov ax, 1
jmp ROTULO127
ROTULO127:
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
jmp ROTULO128
.fim:
mov ax, 1
jmp ROTULO128
ROTULO128:
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
jmp ROTULO129
.fim:
mov ax, 1
jmp ROTULO129
ROTULO129:
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
jmp ROTULO130
.fim:
mov ax, 1
jmp ROTULO130
ROTULO130:
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
ROTULO132:
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
ja ROTULO135
jmp ROTULO136
ROTULO135:
mov ax, 65535
jmp ROTULO137
ROTULO136:
xor ax, ax
ROTULO137:
cmp ax, 0
jne ROTULO133
jmp ROTULO134
ROTULO133:
inc word [bp+-2]
inc word [bp+6]
inc di
jmp ROTULO132
ROTULO134:
mov ax, [bp+-2]
jmp ROTULO131
ROTULO131:
mov sp, bp
pop bp
FIM_string_length:
retf
_string_concat:
push bp
mov bp, sp
sub sp, 10
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _string_length
add sp, 4
mov [bp+-2], ax
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-4], ax
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
push cs
call _string_length
add sp, 4
push ax
mov ax, 1
pop bx
add ax, bx
mov [bp+-6], ax
mov ax, [bp+-6]
push ax
mov ax, [bp+-2]
pop bx
add ax, bx
push ax
mov ax, 1
pop bx
add ax, bx
push ax
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO141
jmp ROTULO142
ROTULO141:
mov ax, 65535
jmp ROTULO143
ROTULO142:
xor ax, ax
ROTULO143:
cmp ax, 0
jne ROTULO139
jmp ROTULO140
ROTULO139:
xor ax, ax
jmp ROTULO138
ROTULO140:
mov ax, [bp+6]
push ax
mov ax, 1
pop bx
add ax, bx
push ax
mov ax, [bp+-2]
pop bx
add ax, bx
mov [bp+6], ax
inc word [bp+10]
mov word [bp+-8], 1
ROTULO144:
mov ax, [bp+-8]
push ax
mov ax, [bp+-6]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO147
jmp ROTULO148
ROTULO147:
mov ax, 65535
jmp ROTULO149
ROTULO148:
xor ax, ax
ROTULO149:
cmp ax, 0
jne ROTULO145
jmp ROTULO146
ROTULO145:
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-10], ax
mov ax, [bp+-10]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], al
inc word [bp+6]
inc di
inc word [bp+10]
inc word [bp+-8]
jmp ROTULO144
ROTULO146:
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
mov ax, 1
jmp ROTULO138
ROTULO138:
mov sp, bp
pop bp
FIM_string_concat:
retf
_string_copy:
push bp
mov bp, sp
sub sp, 8
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
push cs
call _string_length
add sp, 4
push ax
mov ax, 1
pop bx
add ax, bx
mov [bp+-4], ax
inc word [bp+6]
inc word [bp+10]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
mov ax, [bp+-2]
push ax
mov ax, [bp+-4]
push ax
mov ax, 1
pop bx
add ax, bx
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO153
jmp ROTULO154
ROTULO153:
mov ax, 65535
jmp ROTULO155
ROTULO154:
xor ax, ax
ROTULO155:
cmp ax, 0
jne ROTULO151
jmp ROTULO152
ROTULO151:
xor ax, ax
jmp ROTULO150
ROTULO152:
mov word [bp+-6], 1
ROTULO156:
mov ax, [bp+-6]
push ax
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO159
jmp ROTULO160
ROTULO159:
mov ax, 65535
jmp ROTULO161
ROTULO160:
xor ax, ax
ROTULO161:
cmp ax, 0
jne ROTULO157
jmp ROTULO158
ROTULO157:
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-8], ax
mov ax, [bp+-8]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], al
inc word [bp+10]
inc word [bp+6]
inc di
inc word [bp+-6]
jmp ROTULO156
ROTULO158:
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
mov ax, 1
jmp ROTULO150
ROTULO150:
mov sp, bp
pop bp
FIM_string_copy:
retf
; MODULO FIM: string
REALOC_TABLE:
dw 3
dw _program_testestring
dw 4
dw 0
dw 0
dw 0
dw 0
dw 0
