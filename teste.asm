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
call _videotexto_inicializa
push cs
pop es
mov di, ROTULO9
jmp ROTULO8
ROTULO9:
db 7
db 79,105,101,101,101,101,101
times 1 db 0
ROTULO8:
push es
push di
push cs
call _videotexto_escreva
add sp, 4
push cs
pop es
mov di, ROTULO11
jmp ROTULO10
ROTULO11:
db 26
db 84,101,115,116,101,32,67,114,105,97,99,97,111,32,100,101,32,97,114,113,117,105,118,111,58,32
times 1 db 0
ROTULO10:
push es
push di
push cs
call _console_write
add sp, 4
push cs
pop es
mov di, ROTULO15
jmp ROTULO14
ROTULO15:
db 9
db 116,101,115,116,101,46,116,120,116
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
call _file_create
add sp, 8
cmp ax, 0
jne ROTULO12
jmp ROTULO13
ROTULO12:
push cs
pop es
mov di, ROTULO17
jmp ROTULO16
ROTULO17:
db 47
db 84,101,120,116,111,32,116,101,115,116,101,32,110,111,32,97,114,113,117,105,118,111,32,101,115,99,114,105,116,111,32,112,101,108,111,32,116,101,115,116,101,46,104,99,98,46,32
times 1 db 0
ROTULO16:
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
mov di, ROTULO19
jmp ROTULO18
ROTULO19:
db 3
db 32,43,32
times 1 db 0
ROTULO18:
push es
push di
push cs
call _console_write
add sp, 4
push cs
pop es
mov di, ROTULO21
jmp ROTULO20
ROTULO21:
db 41
db 84,101,120,116,111,32,116,101,115,116,101,32,101,109,105,116,105,100,111,32,118,105,97,32,83,116,114,117,99,116,117,114,101,32,83,116,114,101,97,109,46
times 1 db 0
ROTULO20:
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
mov di, ROTULO23
jmp ROTULO22
ROTULO23:
db 15
db 32,66,121,116,101,115,32,101,115,99,114,105,116,111,115
times 1 db 0
ROTULO22:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO24
ROTULO13:
push cs
pop es
mov di, ROTULO26
jmp ROTULO25
ROTULO26:
db 6
db 32,70,65,76,72,65
times 1 db 0
ROTULO25:
push es
push di
push cs
call _console_writeline
add sp, 4
ROTULO24:
push cs
pop es
mov di, ROTULO28
jmp ROTULO27
ROTULO28:
db 18
db 69,115,99,114,101,118,97,32,115,101,117,32,110,111,109,101,58,32
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
call _console_readline
add sp, 4
push cs
pop es
mov di, ROTULO30
jmp ROTULO29
ROTULO30:
db 4
db 79,105,101,32
times 1 db 0
ROTULO29:
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
je ROTULO33
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
push cs
pop es
mov di, ROTULO37
jmp ROTULO36
ROTULO37:
db 8
db 83,101,109,32,78,111,109,101
times 1 db 0
ROTULO36:
push es
push di
push cs
call _console_write
add sp, 4
jmp ROTULO38
ROTULO32:
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
push cs
call _console_write
add sp, 4
ROTULO38:
push cs
pop es
mov di, ROTULO40
jmp ROTULO39
ROTULO40:
db 1
db 33
times 1 db 0
ROTULO39:
push es
push di
push cs
call _console_writeline
add sp, 4
push cs
pop es
mov di, ROTULO42
jmp ROTULO41
ROTULO42:
db 26
db 84,101,115,116,101,32,100,101,32,102,117,110,99,97,111,32,105,110,100,105,114,101,116,97,58,32
times 1 db 0
ROTULO41:
push es
push di
push cs
call _console_write
add sp, 4
push cs
pop es
mov di, _program_testefunc
push word [bp+-12+2]
pop es
mov di, [bp+-12]
es mov [di+0], al
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
jmp ROTULO43
ROTULO43:
FIM_program_testefunc:
retf
; MODULO FIM: program
; MODULO: referenciacruzada
_referenciacruzada_testecruzada:
push cs
call _program_testecruzada
ROTULO44:
FIM_referenciacruzada_testecruzada:
retf
; MODULO FIM: referenciacruzada
; MODULO: videotexto
jmp ROTULO45
_videotexto_x:
times 2 db 0
ROTULO45:
jmp ROTULO46
_videotexto_y:
times 2 db 0
ROTULO46:
jmp ROTULO47
_videotexto_ptr:
times 4 db 0
ROTULO47:
jmp ROTULO48
_videotexto_cor:
times 2 db 0
ROTULO48:
_videotexto_inicializa:
cs mov word [_videotexto_ptr+2], 47104
cs mov word [_videotexto_ptr], 0
cs mov word [_videotexto_x], 0
cs mov word [_videotexto_y], 0
cs mov word [_videotexto_cor], 48
mov ax, 2000
push ax
mov ax, 32
push ax
cs mov ax, [_videotexto_cor]
push ax
mov ax, 8
mov cx, ax
pop ax
shl ax, cl
pop bx
add ax, bx
push ax
push word [bp+0+2]
pop es
mov di, [bp+0]
cs mov ax, [_videotexto_ptr+2]
mov es, ax
cs mov di, [_videotexto_ptr]
xor ax, ax
es mov al, [di+0]
push es
push di
push cs
call _memoria_definewords
add sp, 8
ROTULO49:
FIM_videotexto_inicializa:
retf
_videotexto_definecores:
push bp
mov bp, sp
mov ax, [bp+6]
push ax
mov ax, [bp+8]
push ax
mov ax, 4
mov cx, ax
pop ax
shl ax, cl
pop bx
add ax, bx
cs mov [_videotexto_cor], ax
ROTULO50:
mov sp, bp
pop bp
FIM_videotexto_definecores:
retf
_videotexto_arrumatela:
push bp
mov bp, sp
sub sp, 10
push word [bp+0+2]
pop es
mov di, [bp+0]
cs mov ax, [_videotexto_ptr+2]
mov es, ax
cs mov di, [_videotexto_ptr]
xor ax, ax
es mov al, [di+0]
push es
pop word [bp+-4+2]
mov [bp+-4], di
push word [bp+0+2]
pop es
mov di, [bp+0]
cs mov ax, [_videotexto_ptr+2]
mov es, ax
cs mov di, [_videotexto_ptr]
xor ax, ax
es mov al, [di+0]
push es
pop word [bp+-8+2]
mov [bp+-8], di
mov word [bp+-8], 160
mov word [bp+-10], 3840
ROTULO52:
cs mov ax, [_videotexto_x]
push ax
mov ax, 80
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO55
jmp ROTULO56
ROTULO55:
mov ax, 65535
jmp ROTULO57
ROTULO56:
xor ax, ax
ROTULO57:
cmp ax, 0
jne ROTULO53
jmp ROTULO54
ROTULO53:
cs inc word [_videotexto_y]
cs mov ax, [_videotexto_x]
push ax
mov ax, 80
pop bx
sub ax, bx
cs mov [_videotexto_x], ax
jmp ROTULO52
ROTULO54:
ROTULO58:
cs mov ax, [_videotexto_y]
push ax
mov ax, 25
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO61
jmp ROTULO62
ROTULO61:
mov ax, 65535
jmp ROTULO63
ROTULO62:
xor ax, ax
ROTULO63:
cmp ax, 0
jne ROTULO59
jmp ROTULO60
ROTULO59:
mov word [bp+-4], 0
mov ax, [bp+-10]
push ax
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push cs
call _memoria_copia
add sp, 10
mov ax, [bp+-10]
mov [bp+-4], ax
mov ax, 80
push ax
mov ax, 32
push ax
cs mov ax, [_videotexto_cor]
push ax
mov ax, 8
mov cx, ax
pop ax
shl ax, cl
pop bx
add ax, bx
push ax
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push cs
call _memoria_definewords
add sp, 8
cs dec word [_videotexto_y]
jmp ROTULO58
ROTULO60:
cs mov ax, [_videotexto_y]
push ax
mov ax, 160
pop bx
mul bx
push ax
cs mov ax, [_videotexto_x]
push ax
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
pop bx
add ax, bx
cs mov [_videotexto_ptr], ax
ROTULO51:
mov sp, bp
pop bp
FIM_videotexto_arrumatela:
retf
_videotexto_escrevac:
push bp
mov bp, sp
cs mov ax, [_videotexto_y]
push ax
mov ax, 25
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO70
jmp ROTULO71
ROTULO70:
mov ax, 65535
jmp ROTULO72
ROTULO71:
xor ax, ax
ROTULO72:
cmp ax, 0
jne ROTULO67
cs mov ax, [_videotexto_x]
push ax
mov ax, 80
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO73
jmp ROTULO74
ROTULO73:
mov ax, 65535
jmp ROTULO75
ROTULO74:
xor ax, ax
ROTULO75:
cmp ax, 0
je ROTULO68
ROTULO67:
mov ax, 65535
jmp ROTULO69
ROTULO68:
xor ax, ax
ROTULO69:
cmp ax, 0
jne ROTULO65
jmp ROTULO66
ROTULO65:
push cs
call _videotexto_arrumatela
ROTULO66:
mov ax, [bp+6]
cs mov ax, [_videotexto_ptr+2]
mov es, ax
cs mov di, [_videotexto_ptr]
es mov [di+0], al
cs inc word [_videotexto_ptr]
inc di
cs mov ax, [_videotexto_cor]
es mov [di+0], al
cs inc word [_videotexto_ptr]
inc di
cs inc word [_videotexto_x]
ROTULO64:
mov sp, bp
pop bp
FIM_videotexto_escrevac:
retf
_videotexto_escreva:
push bp
mov bp, sp
inc word [bp+6]
ROTULO77:
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
jne ROTULO80
jmp ROTULO81
ROTULO80:
mov ax, 65535
jmp ROTULO82
ROTULO81:
xor ax, ax
ROTULO82:
cmp ax, 0
jne ROTULO78
jmp ROTULO79
ROTULO78:
xor ax, ax
es mov al, [di+0]
push ax
push cs
call _videotexto_escrevac
add sp, 2
inc word [bp+6]
jmp ROTULO77
ROTULO79:
ROTULO76:
mov sp, bp
pop bp
FIM_videotexto_escreva:
retf
; MODULO FIM: videotexto
; MODULO: memoria
_memoria_copia:
push bp
mov bp, sp
cld
push ds
push si
mov ax, [bp+8]
mov es, ax
mov di, [bp+6]
mov ax, [bp+12]
mov ds, ax
mov si, [bp+10]
mov cx, [bp+14]
rep movsb
pop si
pop ds
ROTULO83:
mov sp, bp
pop bp
FIM_memoria_copia:
retf
_memoria_define:
push bp
mov bp, sp
cld
mov ax, [bp+8]
mov es, ax
mov di, [bp+6]
mov ax, [bp+10]
mov cx, [bp+12]
rep stosb
ROTULO84:
mov sp, bp
pop bp
FIM_memoria_define:
retf
_memoria_definewords:
push bp
mov bp, sp
cld
mov ax, [bp+8]
mov es, ax
mov di, [bp+6]
mov ax, [bp+10]
mov cx, [bp+12]
rep stosw
ROTULO85:
mov sp, bp
pop bp
FIM_memoria_definewords:
retf
; MODULO FIM: memoria
; MODULO: console
_console_readchar:
push cs
call _os_consolereadchar
jmp ROTULO86
ROTULO86:
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
ROTULO88:
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
ja ROTULO97
jmp ROTULO98
ROTULO97:
mov ax, 65535
jmp ROTULO99
ROTULO98:
xor ax, ax
ROTULO99:
push ax
xor ax, ax
es mov al, [di+0]
push ax
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO100
jmp ROTULO101
ROTULO100:
mov ax, 65535
jmp ROTULO102
ROTULO101:
xor ax, ax
ROTULO102:
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
jne ROTULO103
jmp ROTULO104
ROTULO103:
mov ax, 65535
jmp ROTULO105
ROTULO104:
xor ax, ax
ROTULO105:
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO89
jmp ROTULO90
ROTULO89:
inc word [bp+6]
inc di
jmp ROTULO88
ROTULO90:
mov ax, [bp+6+2]
mov es, ax
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO87:
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
ROTULO106:
mov sp, bp
pop bp
FIM_console_writechar:
retf
_console_write:
push bp
mov bp, sp
inc word [bp+6]
ROTULO108:
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
ja ROTULO111
jmp ROTULO112
ROTULO111:
mov ax, 65535
jmp ROTULO113
ROTULO112:
xor ax, ax
ROTULO113:
cmp ax, 0
jne ROTULO109
jmp ROTULO110
ROTULO109:
xor ax, ax
es mov al, [di+0]
push ax
push cs
call _console_writechar
add sp, 2
inc word [bp+6]
jmp ROTULO108
ROTULO110:
ROTULO107:
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
ROTULO114:
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
ja ROTULO118
jmp ROTULO119
ROTULO118:
mov ax, 65535
jmp ROTULO120
ROTULO119:
xor ax, ax
ROTULO120:
cmp ax, 0
jne ROTULO116
jmp ROTULO117
ROTULO116:
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO117:
mov ax, 48
push ax
mov ax, [bp+-2]
pop bx
add ax, bx
push ax
push cs
call _console_writechar
add sp, 2
ROTULO115:
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
jb ROTULO124
jmp ROTULO125
ROTULO124:
mov ax, 65535
jmp ROTULO126
ROTULO125:
xor ax, ax
ROTULO126:
cmp ax, 0
jne ROTULO122
jmp ROTULO123
ROTULO122:
xor ax, ax
push ax
mov ax, [bp+6]
pop bx
sub ax, bx
mov [bp+6], ax
ROTULO123:
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO121:
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
ROTULO127:
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
ROTULO128:
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
jmp ROTULO129
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
jmp ROTULO129
ROTULO129:
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
jmp ROTULO130
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
jmp ROTULO130
ROTULO130:
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
jmp ROTULO131
ROTULO131:
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
jmp ROTULO132
.fim:
mov ax, [bp+-2]
jmp ROTULO132
ROTULO132:
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
jmp ROTULO133
ROTULO133:
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
jmp ROTULO134
.fim:
mov ax, [bp+-2]
jmp ROTULO134
ROTULO134:
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
jmp ROTULO135
.fim:
mov ax, 1
jmp ROTULO135
ROTULO135:
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
jmp ROTULO136
.fim:
mov ax, 1
jmp ROTULO136
ROTULO136:
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
jmp ROTULO137
.fim:
mov ax, 1
jmp ROTULO137
ROTULO137:
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
jmp ROTULO138
.fim:
mov ax, 1
jmp ROTULO138
ROTULO138:
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
ROTULO140:
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
ja ROTULO143
jmp ROTULO144
ROTULO143:
mov ax, 65535
jmp ROTULO145
ROTULO144:
xor ax, ax
ROTULO145:
cmp ax, 0
jne ROTULO141
jmp ROTULO142
ROTULO141:
inc word [bp+-2]
inc word [bp+6]
inc di
jmp ROTULO140
ROTULO142:
mov ax, [bp+-2]
jmp ROTULO139
ROTULO139:
mov sp, bp
pop bp
FIM_string_length:
retf
; MODULO FIM: string
