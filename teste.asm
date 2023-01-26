cpu 8086
bits 16
org 0x100
mov word [_os_minstackptr], END
push cs
call _os_start2
ROTULO0:
; MODULO: os
_os:
db 13
db 83,121,115,116,101,109,46,79,83,46,104,99,98
db 0
jmp ROTULO1
_os_trystack:
times 2 db 0
ROTULO1:
jmp ROTULO2
_os_trycode:
times 2 db 0
ROTULO2:
jmp ROTULO3
_os_trybase:
times 2 db 0
ROTULO3:
jmp ROTULO4
_os_tryfatal:
times 2 db 0
ROTULO4:
jmp ROTULO5
_os_minstackptr:
times 2 db 0
ROTULO5:
_os_start2:
push bp
mov bp, sp
sub sp, 28
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO6
mov ax, _os
mov [bp+-8], ax
mov ax, 17
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO6:
push cs
call _os_codesegment
mov word [bp+-18+2], ax
push cs
call _os_codesegment
mov word [bp+-22+2], ax
push cs
call _os_realoctable
mov [bp+-18], ax
ROTULO8:
push word [bp+-18+2]
pop es
mov di, [bp+-18]
es mov ax, [di+0]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO11
jmp ROTULO12
ROTULO11:
mov ax, 65535
jmp ROTULO13
ROTULO12:
xor ax, ax
ROTULO13:
cmp ax, 0
jne ROTULO9
jmp ROTULO10
ROTULO9:
es mov ax, [di+0]
mov [bp+-24], ax
inc word [bp+-18]
inc di
inc word [bp+-18]
inc di
es mov ax, [di+0]
mov [bp+-22], ax
inc word [bp+-18]
inc di
inc word [bp+-18]
inc di
es mov ax, [di+0]
mov [bp+-26], ax
inc word [bp+-18]
inc di
inc word [bp+-18]
inc di
es mov ax, [di+0]
mov [bp+-28], ax
inc word [bp+-18]
inc di
inc word [bp+-18]
inc di
mov ax, [bp+-24]
push ax
mov ax, 3
mov bx, ax
pop ax
cmp ax, bx
je ROTULO16
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
push cs
call _os_codesegment
push ax
mov ax, [bp+-28]
pop bx
add ax, bx
push word [bp+-22+2]
pop es
mov di, [bp+-22]
es mov [di+0], ax
mov ax, [bp+-26]
push ax
mov ax, [bp+-22]
pop bx
add ax, bx
mov [bp+-26], ax
inc word [bp+-22]
inc di
inc word [bp+-22]
inc di
mov ax, [bp+-26]
es mov [di+0], ax
ROTULO15:
mov ax, [bp+-24]
push ax
mov ax, 2
mov bx, ax
pop ax
cmp ax, bx
je ROTULO21
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
mov ax, [bp+-22]
push ax
mov ax, [bp+-26]
pop bx
add ax, bx
mov [bp+-22], ax
push cs
call _os_stacksegment
push ax
mov ax, [bp+-28]
pop bx
add ax, bx
push word [bp+-22+2]
pop es
mov di, [bp+-22]
es mov [di+0], ax
ROTULO20:
mov ax, [bp+-24]
push ax
mov ax, 1
mov bx, ax
pop ax
cmp ax, bx
je ROTULO26
jmp ROTULO27
ROTULO26:
mov ax, 65535
jmp ROTULO28
ROTULO27:
xor ax, ax
ROTULO28:
cmp ax, 0
jne ROTULO24
jmp ROTULO25
ROTULO24:
mov ax, [bp+-22]
push ax
mov ax, [bp+-26]
pop bx
add ax, bx
mov [bp+-22], ax
push cs
call _os_codesegment
push ax
mov ax, [bp+-28]
pop bx
add ax, bx
push word [bp+-22+2]
pop es
mov di, [bp+-22]
es mov [di+0], ax
ROTULO25:
jmp ROTULO8
ROTULO10:
mov ax, cs
mov [bp-2], ax
mov word [bp-4], 0x80
mov al, [0x80]
xor ah, ah
mov si, ax
add si, 0x80
mov byte [si+1], 0
cs mov word [_os_tryfatal], errofatal
cs mov ax, [_os_trycode]
mov [bp+-2], ax
cs mov ax, [_os_trystack]
mov [bp+-4], ax
cs mov ax, [_os_trybase]
mov [bp+-6], ax
mov ax, bp
cs mov [_os_trybase], ax
mov ax, sp
cs mov [_os_trystack], ax
mov ax, ROTULO29
cs mov [_os_trycode], ax
push word [bp+-14+2]
pop es
mov di, [bp+-14]
push es
push di
push cs
call _program_main
add sp, 4
jmp ROTULO30
ROTULO29:
mov bx, ax
mov ax, [bp+-10]
push word [bp+-8+2]
pop es
mov di, [bp+-8]
cs mov bp, [_os_trybase]
cs mov sp, [_os_trystack]
push es
pop word [bp+-8+2]
mov [bp+-8], di
mov [bp+-10], ax
mov ax, bx
mov bx, 1
cmp ax, bx
je ROTULO31
jmp ROTULO32
ROTULO31:
push cs
pop es
mov di, ROTULO34
jmp ROTULO33
ROTULO34:
db 23
db 69,114,114,111,58,32,68,105,118,105,115,195,163,111,32,112,111,114,32,122,101,114,111
times 1 db 0
ROTULO33:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp escreveerro
jmp ROTULO30
ROTULO32:
mov bx, 2
cmp ax, bx
je ROTULO35
jmp ROTULO36
ROTULO35:
push cs
pop es
mov di, ROTULO38
jmp ROTULO37
ROTULO38:
db 22
db 69,114,114,111,58,32,69,115,116,111,117,114,111,32,100,101,32,112,105,108,104,97
times 1 db 0
ROTULO37:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp escreveerro
jmp ROTULO30
ROTULO36:
mov bx, 3
cmp ax, bx
je ROTULO39
jmp ROTULO40
ROTULO39:
push cs
pop es
mov di, ROTULO42
jmp ROTULO41
ROTULO42:
db 18
db 69,114,114,111,58,32,83,101,109,32,109,101,109,195,179,114,105,97
times 1 db 0
ROTULO41:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp escreveerro
jmp ROTULO30
ROTULO40:
mov bx, 4
cmp ax, bx
je ROTULO43
jmp ROTULO44
ROTULO43:
push cs
pop es
mov di, ROTULO46
jmp ROTULO45
ROTULO46:
db 28
db 69,114,114,111,58,32,86,97,108,111,114,32,102,111,114,97,32,100,111,115,32,108,105,109,105,116,101,115
times 1 db 0
ROTULO45:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp escreveerro
jmp ROTULO30
ROTULO44:
mov bx, 5
cmp ax, bx
je ROTULO47
jmp ROTULO48
ROTULO47:
push cs
pop es
mov di, ROTULO50
jmp ROTULO49
ROTULO50:
db 21
db 69,114,114,111,58,32,78,195,163,111,32,101,110,99,111,110,116,114,97,100,111
times 1 db 0
ROTULO49:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp escreveerro
jmp ROTULO30
ROTULO48:
mov bx, 6
cmp ax, bx
je ROTULO51
jmp ROTULO52
ROTULO51:
push cs
pop es
mov di, ROTULO54
jmp ROTULO53
ROTULO54:
db 21
db 69,114,114,111,58,32,73,116,101,109,32,106,195,161,32,101,120,105,115,116,101
times 1 db 0
ROTULO53:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp escreveerro
jmp ROTULO30
ROTULO52:
mov bx, 7
cmp ax, bx
je ROTULO55
jmp ROTULO56
ROTULO55:
push cs
pop es
mov di, ROTULO58
jmp ROTULO57
ROTULO58:
db 23
db 69,114,114,111,58,32,78,195,163,111,32,105,109,112,108,101,109,101,110,116,97,100,111
times 1 db 0
ROTULO57:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp escreveerro
jmp ROTULO30
ROTULO56:
mov bx, 8
cmp ax, bx
je ROTULO59
jmp ROTULO60
ROTULO59:
push cs
pop es
mov di, ROTULO62
jmp ROTULO61
ROTULO62:
db 24
db 69,114,114,111,58,32,70,97,108,104,97,32,100,101,115,99,111,110,104,101,99,105,100,97
times 1 db 0
ROTULO61:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp escreveerro
jmp ROTULO30
ROTULO60:
mov bx, 9
cmp ax, bx
je ROTULO63
jmp ROTULO64
ROTULO63:
push cs
pop es
mov di, ROTULO66
jmp ROTULO65
ROTULO66:
db 27
db 69,114,114,111,58,32,69,115,116,111,117,114,111,32,100,97,32,67,97,112,97,99,105,100,97,100,101
times 1 db 0
ROTULO65:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp escreveerro
jmp ROTULO30
ROTULO64:
mov bx, 10
cmp ax, bx
je ROTULO67
jmp ROTULO68
ROTULO67:
push cs
pop es
mov di, ROTULO70
jmp ROTULO69
ROTULO70:
db 18
db 69,114,114,111,58,32,83,101,109,32,114,101,115,112,111,115,116,97
times 1 db 0
ROTULO69:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp escreveerro
jmp ROTULO30
ROTULO68:
mov bx, 11
cmp ax, bx
je ROTULO71
jmp ROTULO72
ROTULO71:
push cs
pop es
mov di, ROTULO74
jmp ROTULO73
ROTULO74:
db 29
db 69,114,114,111,58,32,69,115,116,111,117,114,111,32,100,111,32,116,101,109,112,111,32,108,105,109,105,116,101
times 1 db 0
ROTULO73:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp escreveerro
jmp ROTULO30
ROTULO72:
mov bx, 12
cmp ax, bx
je ROTULO75
jmp ROTULO76
ROTULO75:
push cs
pop es
mov di, ROTULO78
jmp ROTULO77
ROTULO78:
db 21
db 69,114,114,111,58,32,86,97,108,111,114,32,105,110,118,195,161,108,105,100,111
times 1 db 0
ROTULO77:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp escreveerro
jmp ROTULO30
ROTULO76:
mov bx, 13
cmp ax, bx
je ROTULO79
jmp ROTULO80
ROTULO79:
push cs
pop es
mov di, ROTULO82
jmp ROTULO81
ROTULO82:
db 19
db 69,114,114,111,58,32,65,99,101,115,115,111,32,110,101,103,97,100,111
times 1 db 0
ROTULO81:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp escreveerro
jmp ROTULO30
ROTULO80:
push cs
pop es
mov di, ROTULO86
jmp ROTULO85
ROTULO86:
db 28
db 79,99,111,114,114,101,117,32,117,109,32,101,114,114,111,32,110,195,163,111,32,116,114,97,116,97,100,111
times 1 db 0
ROTULO85:
push es
push di
push cs
call _console_writeline
add sp, 4
escreveerro:
mov di, [bp+-8]
push cs
pop es
push es
push di
push cs
call _console_write
add sp, 4
push cs
pop es
mov di, ROTULO88
jmp ROTULO87
ROTULO88:
db 2
db 58,32
times 1 db 0
ROTULO87:
push es
push di
push cs
call _console_write
add sp, 4
mov ax, [bp+-10]
push ax
push cs
call _console_writeuint16
add sp, 2
jmp ROTULO30
ROTULO84:
cs jmp word [_os_tryfatal]
ROTULO30:
mov ax, [bp+-6]
cs mov [_os_trybase], ax
mov ax, [bp+-4]
cs mov [_os_trystack], ax
mov ax, [bp+-2]
cs mov [_os_trycode], ax
errofatal:
int 0x20
ROTULO7:
mov sp, bp
pop bp
FIM_os_start2:
retf
_os_codesegment:
mov ax, cs
ROTULO89:
FIM_os_codesegment:
retf
_os_stacksegment:
mov ax, ss
ROTULO90:
FIM_os_stacksegment:
retf
_os_realoctable:
mov ax, REALOC_TABLE
ROTULO91:
FIM_os_realoctable:
retf
_os_consolereadchar:
mov ah, 1
int 0x21
xor ah, ah
ROTULO92:
FIM_os_consolereadchar:
retf
_os_consolewritechar:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO93
mov ax, _os
mov [bp+-8], ax
mov ax, 141
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO93:
mov dl, [bp+6]
mov ah, 2
int 0x21
ROTULO94:
mov sp, bp
pop bp
FIM_os_consolewritechar:
retf
; MODULO FIM: os
; MODULO: program
_program:
db 9
db 116,101,115,116,101,46,104,99,98
db 0
jmp ROTULO95
_program_testestring:
times 4 db 0
db 255
times 255 db 0
ROTULO95:
_program_testecruzada:
push cs
call _referenciacruzada_testecruzada
ROTULO96:
FIM_program_testecruzada:
retf
_program_main:
push bp
mov bp, sp
sub sp, 26
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO97
mov ax, _program
mov [bp+-8], ax
mov ax, 17
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO97:
sub sp, 34
push ss
pop es
mov di, sp
push es
pop word [bp+-14+2]
mov [bp+-14], di
sub sp, 129
push ss
pop es
mov di, sp
push es
pop word [bp+-18+2]
mov [bp+-18], di
es mov byte [di+0], 128
es mov byte [di+1], 0
push cs
pop es
mov di, ROTULO100
jmp ROTULO99
ROTULO100:
db 26
db 84,101,115,116,101,32,67,114,105,97,99,97,111,32,100,101,32,97,114,113,117,105,118,111,58,32
times 1 db 0
ROTULO99:
push es
push di
push cs
call _console_write
add sp, 4
cs mov ax, [_os_trycode]
mov [bp+-2], ax
cs mov ax, [_os_trystack]
mov [bp+-4], ax
cs mov ax, [_os_trybase]
mov [bp+-6], ax
mov ax, bp
cs mov [_os_trybase], ax
mov ax, sp
cs mov [_os_trystack], ax
mov ax, ROTULO101
cs mov [_os_trycode], ax
push cs
pop es
mov di, ROTULO104
jmp ROTULO103
ROTULO104:
db 9
db 116,101,115,116,101,46,116,120,116
times 1 db 0
ROTULO103:
push es
push di
push word [bp+-14+2]
pop es
mov di, [bp+-14]
push es
push di
push cs
call _file_create
add sp, 8
push cs
pop es
mov di, ROTULO106
jmp ROTULO105
ROTULO106:
db 47
db 84,101,120,116,111,32,116,101,115,116,101,32,110,111,32,97,114,113,117,105,118,111,32,101,115,99,114,105,116,111,32,112,101,108,111,32,116,101,115,116,101,46,104,99,98,46,32
times 1 db 0
ROTULO105:
push es
push di
push word [bp+-14+2]
pop es
mov di, [bp+-14]
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
mov di, ROTULO108
jmp ROTULO107
ROTULO108:
db 3
db 32,43,32
times 1 db 0
ROTULO107:
push es
push di
push cs
call _console_write
add sp, 4
push cs
pop es
mov di, ROTULO110
jmp ROTULO109
ROTULO110:
db 41
db 84,101,120,116,111,32,116,101,115,116,101,32,101,109,105,116,105,100,111,32,118,105,97,32,83,116,114,117,99,116,117,114,101,32,83,116,114,101,97,109,46
times 1 db 0
ROTULO109:
push es
push di
push word [bp+-14+2]
pop es
mov di, [bp+-14]
push es
push di
es call far [di+14]
add sp, 8
push ax
push cs
call _console_writeuint16
add sp, 2
push word [bp+-14+2]
pop es
mov di, [bp+-14]
push es
push di
push cs
call _file_close
add sp, 4
push cs
pop es
mov di, ROTULO112
jmp ROTULO111
ROTULO112:
db 15
db 32,66,121,116,101,115,32,101,115,99,114,105,116,111,115
times 1 db 0
ROTULO111:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO102
ROTULO101:
mov bx, ax
mov ax, [bp+-10]
push word [bp+-8+2]
pop es
mov di, [bp+-8]
cs mov bp, [_os_trybase]
cs mov sp, [_os_trystack]
push es
pop word [bp+-8+2]
mov [bp+-8], di
mov [bp+-10], ax
mov ax, bx
push cs
pop es
mov di, ROTULO116
jmp ROTULO115
ROTULO116:
db 39
db 32,70,65,76,72,65,32,65,79,32,77,65,78,73,80,85,76,65,82,32,79,32,65,82,81,85,73,86,79,32,116,101,115,116,101,46,116,120,116
times 1 db 0
ROTULO115:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO102
ROTULO114:
cs jmp word [_os_tryfatal]
ROTULO102:
mov ax, [bp+-6]
cs mov [_os_trybase], ax
mov ax, [bp+-4]
cs mov [_os_trystack], ax
mov ax, [bp+-2]
cs mov [_os_trycode], ax
push cs
pop es
mov di, ROTULO118
jmp ROTULO117
ROTULO118:
db 18
db 69,115,99,114,101,118,97,32,115,101,117,32,110,111,109,101,58,32
times 1 db 0
ROTULO117:
push es
push di
push cs
call _console_write
add sp, 4
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_readline
add sp, 4
push cs
pop es
mov di, ROTULO120
jmp ROTULO119
ROTULO120:
db 4
db 79,105,101,32
times 1 db 0
ROTULO119:
push es
push di
push cs
call _console_write
add sp, 4
push word [bp+-18+2]
pop es
mov di, [bp+-18]
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
je ROTULO123
jmp ROTULO124
ROTULO123:
mov ax, 65535
jmp ROTULO125
ROTULO124:
xor ax, ax
ROTULO125:
cmp ax, 0
jne ROTULO121
jmp ROTULO122
ROTULO121:
push cs
pop es
mov di, ROTULO127
jmp ROTULO126
ROTULO127:
db 8
db 83,101,109,32,78,111,109,101
times 1 db 0
ROTULO126:
push es
push di
push cs
call _console_write
add sp, 4
jmp ROTULO128
ROTULO122:
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_write
add sp, 4
ROTULO128:
push cs
pop es
mov di, ROTULO130
jmp ROTULO129
ROTULO130:
db 1
db 33
times 1 db 0
ROTULO129:
push es
push di
push cs
call _console_writeline
add sp, 4
push cs
pop es
mov di, ROTULO132
jmp ROTULO131
ROTULO132:
db 27
db 84,101,115,116,101,32,100,101,32,102,117,110,99,97,111,32,105,110,100,105,114,101,116,97,58,32,39
times 1 db 0
ROTULO131:
push es
push di
push cs
call _console_write
add sp, 4
push cs
pop es
mov di, _program_testefunc
push es
pop word [bp+-22+2]
mov [bp+-22], di
call far [bp+-22]
push ax
push cs
call _console_writeuint16
add sp, 2
push cs
pop es
mov di, ROTULO134
jmp ROTULO133
ROTULO134:
db 1
db 39
times 1 db 0
ROTULO133:
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
mov di, ROTULO136
jmp ROTULO135
ROTULO136:
db 1
db 58
times 1 db 0
ROTULO135:
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
mov di, ROTULO138
jmp ROTULO137
ROTULO138:
db 0
times 1 db 0
ROTULO137:
push es
push di
push cs
call _console_writeline
add sp, 4
push cs
pop es
mov di, ROTULO140
jmp ROTULO139
ROTULO140:
db 16
db 84,101,115,116,101,32,100,101,32,99,111,110,99,97,116,58
times 1 db 0
ROTULO139:
push es
push di
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_copy
add sp, 8
push cs
pop es
mov di, ROTULO142
jmp ROTULO141
ROTULO142:
db 21
db 32,84,101,120,116,111,32,99,111,110,99,97,116,101,110,97,100,111,32,49,44
times 1 db 0
ROTULO141:
push es
push di
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_concat
add sp, 8
push cs
pop es
mov di, ROTULO144
jmp ROTULO143
ROTULO144:
db 20
db 32,84,101,120,116,111,32,99,111,110,99,97,116,101,110,97,100,111,32,50
times 1 db 0
ROTULO143:
push es
push di
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_concat
add sp, 8
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_writeline
add sp, 4
cs mov ax, [_os_trycode]
mov [bp+-2], ax
cs mov ax, [_os_trystack]
mov [bp+-4], ax
cs mov ax, [_os_trybase]
mov [bp+-6], ax
mov ax, bp
cs mov [_os_trybase], ax
mov ax, sp
cs mov [_os_trystack], ax
mov ax, ROTULO145
cs mov [_os_trycode], ax
mov word [bp+-26], 0
mov ax, 10
push ax
mov ax, [bp+-26]
cmp ax, 0
jne ROTULO147
mov ax, _program
mov [bp+-8], ax
mov ax, 59
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO147:
mov bx, ax
pop ax
xor dx, dx
div bx
mov [bp+-24], ax
jmp ROTULO146
ROTULO145:
mov bx, ax
mov ax, [bp+-10]
push word [bp+-8+2]
pop es
mov di, [bp+-8]
cs mov bp, [_os_trybase]
cs mov sp, [_os_trystack]
push es
pop word [bp+-8+2]
mov [bp+-8], di
mov [bp+-10], ax
mov ax, bx
mov bx, 1
cmp ax, bx
je ROTULO148
jmp ROTULO149
ROTULO148:
push cs
pop es
mov di, ROTULO151
jmp ROTULO150
ROTULO151:
db 21
db 68,105,118,105,115,97,111,32,112,111,114,32,122,101,114,111,32,112,101,103,97
times 1 db 0
ROTULO150:
push es
push di
push cs
call _console_writeline
add sp, 4
mov di, [bp+-8]
push cs
pop es
push es
push di
push cs
call _console_write
add sp, 4
push cs
pop es
mov di, ROTULO153
jmp ROTULO152
ROTULO153:
db 2
db 58,32
times 1 db 0
ROTULO152:
push es
push di
push cs
call _console_write
add sp, 4
mov ax, [bp+-10]
push ax
push cs
call _console_writeuint16
add sp, 2
push cs
pop es
mov di, ROTULO155
jmp ROTULO154
ROTULO155:
db 0
times 1 db 0
ROTULO154:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO146
ROTULO149:
cs jmp word [_os_tryfatal]
ROTULO146:
mov ax, [bp+-6]
cs mov [_os_trybase], ax
mov ax, [bp+-4]
cs mov [_os_trystack], ax
mov ax, [bp+-2]
cs mov [_os_trycode], ax
push cs
pop es
mov di, ROTULO159
jmp ROTULO158
ROTULO159:
db 2
db 111,105
times 1 db 0
ROTULO158:
push es
push di
push cs
pop es
mov di, ROTULO161
jmp ROTULO160
ROTULO161:
db 2
db 111,105
times 1 db 0
ROTULO160:
push es
push di
push cs
call _string_equals
add sp, 8
cmp ax, 0
jne ROTULO156
jmp ROTULO157
ROTULO156:
push cs
pop es
mov di, ROTULO163
jmp ROTULO162
ROTULO163:
db 10
db 69,81,85,65,76,32,84,69,83,84
times 1 db 0
ROTULO162:
push es
push di
push cs
call _console_writeline
add sp, 4
ROTULO157:
push cs
call _cga_mode640x200x2
mov ax, 1
push ax
mov ax, 10
push ax
mov ax, 10
push ax
push cs
call _graphics_drawpixel
add sp, 6
mov ax, 1
push ax
mov ax, 11
push ax
mov ax, 11
push ax
push cs
call _graphics_drawpixel
add sp, 6
mov ax, 1
push ax
mov ax, 12
push ax
mov ax, 12
push ax
push cs
call _graphics_drawpixel
add sp, 6
mov ax, 1
push ax
mov ax, 13
push ax
mov ax, 13
push ax
push cs
call _graphics_drawpixel
add sp, 6
push cs
call _console_readchar
push cs
call _graphics_mode80x25x16
ROTULO98:
mov sp, bp
pop bp
FIM_program_main:
retf
_program_testefunc:
mov ax, 123
jmp ROTULO164
ROTULO164:
FIM_program_testefunc:
retf
; MODULO FIM: program
; MODULO: referenciacruzada
_referenciacruzada:
db 9
db 116,101,115,116,101,46,104,99,98
db 0
_referenciacruzada_testecruzada:
push cs
call _program_testecruzada
ROTULO165:
FIM_referenciacruzada_testecruzada:
retf
; MODULO FIM: referenciacruzada
; MODULO: console
_console:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
_console_readchar:
push cs
call _os_consolereadchar
jmp ROTULO166
ROTULO166:
FIM_console_readchar:
retf
_console_readline:
push bp
mov bp, sp
sub sp, 6
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO167
mov ax, _console
mov [bp+-8], ax
mov ax, 106
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO167:
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
ROTULO169:
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
ja ROTULO178
jmp ROTULO179
ROTULO178:
mov ax, 65535
jmp ROTULO180
ROTULO179:
xor ax, ax
ROTULO180:
push ax
xor ax, ax
es mov al, [di+0]
push ax
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO181
jmp ROTULO182
ROTULO181:
mov ax, 65535
jmp ROTULO183
ROTULO182:
xor ax, ax
ROTULO183:
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
jne ROTULO184
jmp ROTULO185
ROTULO184:
mov ax, 65535
jmp ROTULO186
ROTULO185:
xor ax, ax
ROTULO186:
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO170
jmp ROTULO171
ROTULO170:
inc word [bp+6]
inc di
jmp ROTULO169
ROTULO171:
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO168:
mov sp, bp
pop bp
FIM_console_readline:
retf
_console_writechar:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO187
mov ax, _console
mov [bp+-8], ax
mov ax, 120
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO187:
mov ax, [bp+6]
push ax
push cs
call _os_consolewritechar
add sp, 2
ROTULO188:
mov sp, bp
pop bp
FIM_console_writechar:
retf
_console_write:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO189
mov ax, _console
mov [bp+-8], ax
mov ax, 124
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO189:
inc word [bp+6]
ROTULO191:
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
ja ROTULO194
jmp ROTULO195
ROTULO194:
mov ax, 65535
jmp ROTULO196
ROTULO195:
xor ax, ax
ROTULO196:
cmp ax, 0
jne ROTULO192
jmp ROTULO193
ROTULO192:
xor ax, ax
es mov al, [di+0]
push ax
push cs
call _console_writechar
add sp, 2
inc word [bp+6]
jmp ROTULO191
ROTULO193:
ROTULO190:
mov sp, bp
pop bp
FIM_console_write:
retf
_console_writeline:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO197
mov ax, _console
mov [bp+-8], ax
mov ax, 133
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO197:
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
ROTULO198:
mov sp, bp
pop bp
FIM_console_writeline:
retf
_console_writeuint16:
push bp
mov bp, sp
sub sp, 4
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO199
mov ax, _console
mov [bp+-8], ax
mov ax, 139
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO199:
mov ax, [bp+6]
push ax
mov ax, 10
cmp ax, 0
jne ROTULO201
mov ax, _console
mov [bp+-8], ax
mov ax, 142
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO201:
mov bx, ax
pop ax
xor dx, dx
div bx
mov ax, dx
mov [bp+-2], ax
mov ax, [bp+6]
push ax
mov ax, 10
cmp ax, 0
jne ROTULO202
mov ax, _console
mov [bp+-8], ax
mov ax, 143
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO202:
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
ja ROTULO205
jmp ROTULO206
ROTULO205:
mov ax, 65535
jmp ROTULO207
ROTULO206:
xor ax, ax
ROTULO207:
cmp ax, 0
jne ROTULO203
jmp ROTULO204
ROTULO203:
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO204:
mov ax, 48
push ax
mov ax, [bp+-2]
pop bx
add ax, bx
push ax
push cs
call _console_writechar
add sp, 2
ROTULO200:
mov sp, bp
pop bp
FIM_console_writeuint16:
retf
_console_writeint16:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO208
mov ax, _console
mov [bp+-8], ax
mov ax, 148
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO208:
mov ax, [bp+6]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO212
jmp ROTULO213
ROTULO212:
mov ax, 65535
jmp ROTULO214
ROTULO213:
xor ax, ax
ROTULO214:
cmp ax, 0
jne ROTULO210
jmp ROTULO211
ROTULO210:
xor ax, ax
push ax
mov ax, [bp+6]
pop bx
sub ax, bx
mov [bp+6], ax
ROTULO211:
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO209:
mov sp, bp
pop bp
FIM_console_writeint16:
retf
_console_writeuint8:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO215
mov ax, _console
mov [bp+-8], ax
mov ax, 155
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO215:
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO216:
mov sp, bp
pop bp
FIM_console_writeuint8:
retf
_console_writeint8:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO217
mov ax, _console
mov [bp+-8], ax
mov ax, 159
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO217:
mov ax, [bp+6]
push ax
push cs
call _console_writeint16
add sp, 2
ROTULO218:
mov sp, bp
pop bp
FIM_console_writeint8:
retf
; MODULO FIM: console
; MODULO: file
_file:
db 13
db 83,121,115,116,101,109,46,79,83,46,104,99,98
db 0
_file_open:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO219
mov ax, _file
mov [bp+-8], ax
mov ax, 150
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO219:
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
mov ax, _file
mov [bp+-8], ax
mov ax, 164
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
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
jmp ROTULO220
ROTULO220:
mov sp, bp
pop bp
FIM_file_open:
retf
_file_create:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO221
mov ax, _file
mov [bp+-8], ax
mov ax, 178
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO221:
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
mov ax, _file
mov [bp+-8], ax
mov ax, 193
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
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
jmp ROTULO222
ROTULO222:
mov sp, bp
pop bp
FIM_file_create:
retf
_file_read:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO223
mov ax, _file
mov [bp+-8], ax
mov ax, 204
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO223:
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
jmp ROTULO224
ROTULO224:
mov sp, bp
pop bp
FIM_file_read:
retf
_file_readraw:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO225
mov ax, _file
mov [bp+-8], ax
mov ax, 212
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO225:
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
mov ax, _file
mov [bp+-8], ax
mov ax, 228
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
.fim:
mov ax, [bp+-2]
jmp ROTULO226
ROTULO226:
mov sp, bp
pop bp
FIM_file_readraw:
retf
_file_write:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO227
mov ax, _file
mov [bp+-8], ax
mov ax, 233
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO227:
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
jmp ROTULO228
ROTULO228:
mov sp, bp
pop bp
FIM_file_write:
retf
_file_writeraw:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO229
mov ax, _file
mov [bp+-8], ax
mov ax, 240
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO229:
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
mov ax, _file
mov [bp+-8], ax
mov ax, 256
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
.fim:
mov ax, [bp+-2]
jmp ROTULO230
ROTULO230:
mov sp, bp
pop bp
FIM_file_writeraw:
retf
_file_close:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO231
mov ax, _file
mov [bp+-8], ax
mov ax, 261
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO231:
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
mov ax, 0x3e00
mov bx, [bp-2]
int 0x21
jnc .fim
mov ax, _file
mov [bp+-8], ax
mov ax, 268
mov [bp+-10], ax
mov ax, 8
cs jmp word [_os_trycode]
.fim:
mov ax, 1
jmp ROTULO232
ROTULO232:
mov sp, bp
pop bp
FIM_file_close:
retf
_file_seekstart:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO233
mov ax, _file
mov [bp+-8], ax
mov ax, 273
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO233:
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
mov ax, _file
mov [bp+-8], ax
mov ax, 282
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
.fim:
mov ax, 1
jmp ROTULO234
ROTULO234:
mov sp, bp
pop bp
FIM_file_seekstart:
retf
_file_seekcurrent:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO235
mov ax, _file
mov [bp+-8], ax
mov ax, 287
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO235:
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
mov ax, _file
mov [bp+-8], ax
mov ax, 296
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
.fim:
mov ax, 1
jmp ROTULO236
ROTULO236:
mov sp, bp
pop bp
FIM_file_seekcurrent:
retf
_file_seekend:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO237
mov ax, _file
mov [bp+-8], ax
mov ax, 301
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO237:
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
mov ax, _file
mov [bp+-8], ax
mov ax, 310
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
.fim:
mov ax, 1
jmp ROTULO238
ROTULO238:
mov sp, bp
pop bp
FIM_file_seekend:
retf
; MODULO FIM: file
; MODULO: string
_string:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
_string_length:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO239
mov ax, _string
mov [bp+-8], ax
mov ax, 19
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO239:
mov word [bp+-2], 0
inc word [bp+6]
ROTULO241:
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
ja ROTULO244
jmp ROTULO245
ROTULO244:
mov ax, 65535
jmp ROTULO246
ROTULO245:
xor ax, ax
ROTULO246:
cmp ax, 0
jne ROTULO242
jmp ROTULO243
ROTULO242:
inc word [bp+-2]
inc word [bp+6]
inc di
jmp ROTULO241
ROTULO243:
mov ax, [bp+-2]
jmp ROTULO240
ROTULO240:
mov sp, bp
pop bp
FIM_string_length:
retf
_string_equals:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO247
mov ax, _string
mov [bp+-8], ax
mov ax, 31
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO247:
ROTULO249:
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO252
jmp ROTULO253
ROTULO252:
mov ax, 65535
jmp ROTULO254
ROTULO253:
xor ax, ax
ROTULO254:
cmp ax, 0
jne ROTULO250
jmp ROTULO251
ROTULO250:
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
je ROTULO257
jmp ROTULO258
ROTULO257:
mov ax, 65535
jmp ROTULO259
ROTULO258:
xor ax, ax
ROTULO259:
cmp ax, 0
jne ROTULO255
jmp ROTULO256
ROTULO255:
mov ax, 1
jmp ROTULO248
ROTULO256:
inc word [bp+6]
inc di
inc word [bp+10]
jmp ROTULO249
ROTULO251:
xor ax, ax
jmp ROTULO248
ROTULO248:
mov sp, bp
pop bp
FIM_string_equals:
retf
_string_concat:
push bp
mov bp, sp
sub sp, 10
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO260
mov ax, _string
mov [bp+-8], ax
mov ax, 40
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO260:
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
ja ROTULO264
jmp ROTULO265
ROTULO264:
mov ax, 65535
jmp ROTULO266
ROTULO265:
xor ax, ax
ROTULO266:
cmp ax, 0
jne ROTULO262
jmp ROTULO263
ROTULO262:
mov ax, _string
mov [bp+-8], ax
mov ax, 49
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO263:
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
ROTULO267:
mov ax, [bp+-8]
push ax
mov ax, [bp+-6]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO270
jmp ROTULO271
ROTULO270:
mov ax, 65535
jmp ROTULO272
ROTULO271:
xor ax, ax
ROTULO272:
cmp ax, 0
jne ROTULO268
jmp ROTULO269
ROTULO268:
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
jmp ROTULO267
ROTULO269:
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
mov ax, 1
jmp ROTULO261
ROTULO261:
mov sp, bp
pop bp
FIM_string_concat:
retf
_string_copy:
push bp
mov bp, sp
sub sp, 8
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO273
mov ax, _string
mov [bp+-8], ax
mov ax, 62
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO273:
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
jb ROTULO277
jmp ROTULO278
ROTULO277:
mov ax, 65535
jmp ROTULO279
ROTULO278:
xor ax, ax
ROTULO279:
cmp ax, 0
jne ROTULO275
jmp ROTULO276
ROTULO275:
mov ax, _string
mov [bp+-8], ax
mov ax, 72
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO276:
mov word [bp+-6], 1
ROTULO280:
mov ax, [bp+-6]
push ax
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO283
jmp ROTULO284
ROTULO283:
mov ax, 65535
jmp ROTULO285
ROTULO284:
xor ax, ax
ROTULO285:
cmp ax, 0
jne ROTULO281
jmp ROTULO282
ROTULO281:
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
jmp ROTULO280
ROTULO282:
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
mov ax, 1
jmp ROTULO274
ROTULO274:
mov sp, bp
pop bp
FIM_string_copy:
retf
; MODULO FIM: string
; MODULO: cga
_cga:
db 18
db 83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,104,99,98
db 0
jmp ROTULO286
_cga_video:
times 30 db 0
ROTULO286:
_cga_mode640x200x2:
mov ax, 0x6
int 0x10
mov ax, 640
cs push word [_cga_video+2]
pop es
cs mov di, [_cga_video]
es mov [di+0], ax
mov ax, 200
es mov [di+2], ax
mov ax, 2
es mov [di+4], ax
push cs
pop es
mov di, _cga_drawpixel
push es
push di
cs push word [_cga_video+2]
pop es
cs mov di, [_cga_video]
es pop word [di+6]
es pop word [di+6+2]
push word [bp+0+2]
pop es
mov di, [bp+0]
cs push word [_cga_video+2]
pop es
cs mov di, [_cga_video]
xor ax, ax
es mov al, [di+0]
push es
push di
push cs
call _graphics_modemanual
add sp, 4
ROTULO287:
FIM_cga_mode640x200x2:
retf
_cga_drawpixel:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO288
mov ax, _cga
mov [bp+-8], ax
mov ax, 85
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO288:
mov ax, 0xba00
test word [bp+12], 1
jne .par
mov ax, 0xb800
.par:
mov es, ax
mov ax, [bp+12]
shr ax, 1
mov bx, 80
mul bx
mov bx, [bp+10]
shr bx, 1
shr bx, 1
shr bx, 1
add ax, bx
mov di, ax
mov cx, [bp+10]
and cx, 7
mov ax, [bp+14]
and ax, 1
je .inverte
ror al, cl
es or [di], al
jmp .fim
.inverte:
ror al, cl
not ax
es and [di], al
.fim:
ROTULO289:
mov sp, bp
pop bp
FIM_cga_drawpixel:
retf
; MODULO FIM: cga
; MODULO: graphics
_graphics:
db 18
db 83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,104,99,98
db 0
jmp ROTULO290
_graphics_active:
times 2 db 0
ROTULO290:
jmp ROTULO291
_graphics_video:
times 30 db 0
ROTULO291:
_graphics_drawpixel:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO292
mov ax, _graphics
mov [bp+-8], ax
mov ax, 18
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO292:
cs mov ax, [_graphics_active]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO296
jmp ROTULO297
ROTULO296:
mov ax, 65535
jmp ROTULO298
ROTULO297:
xor ax, ax
ROTULO298:
cmp ax, 0
jne ROTULO294
jmp ROTULO295
ROTULO294:
mov ax, _graphics
mov [bp+-8], ax
mov ax, 19
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO295:
mov ax, [bp+10]
push ax
mov ax, [bp+8]
push ax
mov ax, [bp+6]
push ax
push word [bp+0+2]
pop es
mov di, [bp+0]
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
xor ax, ax
es mov al, [di+0]
push es
push di
es call far [di+6]
add sp, 10
ROTULO293:
mov sp, bp
pop bp
FIM_graphics_drawpixel:
retf
_graphics_drawline:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO299
mov ax, _graphics
mov [bp+-8], ax
mov ax, 23
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO299:
cs mov ax, [_graphics_active]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO303
jmp ROTULO304
ROTULO303:
mov ax, 65535
jmp ROTULO305
ROTULO304:
xor ax, ax
ROTULO305:
cmp ax, 0
jne ROTULO301
jmp ROTULO302
ROTULO301:
mov ax, _graphics
mov [bp+-8], ax
mov ax, 24
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO302:
mov ax, [bp+14]
push ax
mov ax, [bp+12]
push ax
mov ax, [bp+10]
push ax
mov ax, [bp+8]
push ax
mov ax, [bp+6]
push ax
push word [bp+0+2]
pop es
mov di, [bp+0]
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
xor ax, ax
es mov al, [di+0]
push es
push di
es call far [di+18]
add sp, 14
ROTULO300:
mov sp, bp
pop bp
FIM_graphics_drawline:
retf
_graphics_drawrectangle:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO306
mov ax, _graphics
mov [bp+-8], ax
mov ax, 28
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO306:
cs mov ax, [_graphics_active]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO310
jmp ROTULO311
ROTULO310:
mov ax, 65535
jmp ROTULO312
ROTULO311:
xor ax, ax
ROTULO312:
cmp ax, 0
jne ROTULO308
jmp ROTULO309
ROTULO308:
mov ax, _graphics
mov [bp+-8], ax
mov ax, 29
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO309:
mov ax, [bp+16]
push ax
mov ax, [bp+14]
push ax
mov ax, [bp+12]
push ax
mov ax, [bp+10]
push ax
mov ax, [bp+8]
push ax
mov ax, [bp+6]
push ax
push word [bp+0+2]
pop es
mov di, [bp+0]
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
xor ax, ax
es mov al, [di+0]
push es
push di
es call far [di+10]
add sp, 16
ROTULO307:
mov sp, bp
pop bp
FIM_graphics_drawrectangle:
retf
_graphics_drawellipse:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO313
mov ax, _graphics
mov [bp+-8], ax
mov ax, 33
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO313:
cs mov ax, [_graphics_active]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO317
jmp ROTULO318
ROTULO317:
mov ax, 65535
jmp ROTULO319
ROTULO318:
xor ax, ax
ROTULO319:
cmp ax, 0
jne ROTULO315
jmp ROTULO316
ROTULO315:
mov ax, _graphics
mov [bp+-8], ax
mov ax, 34
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO316:
mov ax, [bp+16]
push ax
mov ax, [bp+14]
push ax
mov ax, [bp+12]
push ax
mov ax, [bp+10]
push ax
mov ax, [bp+8]
push ax
mov ax, [bp+6]
push ax
push word [bp+0+2]
pop es
mov di, [bp+0]
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
xor ax, ax
es mov al, [di+0]
push es
push di
es call far [di+14]
add sp, 16
ROTULO314:
mov sp, bp
pop bp
FIM_graphics_drawellipse:
retf
_graphics_clearscreen:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO320
mov ax, _graphics
mov [bp+-8], ax
mov ax, 38
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO320:
cs mov ax, [_graphics_active]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO324
jmp ROTULO325
ROTULO324:
mov ax, 65535
jmp ROTULO326
ROTULO325:
xor ax, ax
ROTULO326:
cmp ax, 0
jne ROTULO322
jmp ROTULO323
ROTULO322:
mov ax, _graphics
mov [bp+-8], ax
mov ax, 39
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO323:
mov ax, [bp+6]
push ax
push word [bp+0+2]
pop es
mov di, [bp+0]
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
xor ax, ax
es mov al, [di+0]
push es
push di
es call far [di+22]
add sp, 6
ROTULO321:
mov sp, bp
pop bp
FIM_graphics_clearscreen:
retf
_graphics_getwidth:
cs mov ax, [_graphics_active]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO330
jmp ROTULO331
ROTULO330:
mov ax, 65535
jmp ROTULO332
ROTULO331:
xor ax, ax
ROTULO332:
cmp ax, 0
jne ROTULO328
jmp ROTULO329
ROTULO328:
mov ax, _graphics
mov [bp+-8], ax
mov ax, 44
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO329:
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
jmp ROTULO327
ROTULO327:
FIM_graphics_getwidth:
retf
_graphics_getheight:
cs mov ax, [_graphics_active]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO336
jmp ROTULO337
ROTULO336:
mov ax, 65535
jmp ROTULO338
ROTULO337:
xor ax, ax
ROTULO338:
cmp ax, 0
jne ROTULO334
jmp ROTULO335
ROTULO334:
mov ax, _graphics
mov [bp+-8], ax
mov ax, 49
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO335:
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
jmp ROTULO333
ROTULO333:
FIM_graphics_getheight:
retf
_graphics_getcolors:
cs mov ax, [_graphics_active]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO342
jmp ROTULO343
ROTULO342:
mov ax, 65535
jmp ROTULO344
ROTULO343:
xor ax, ax
ROTULO344:
cmp ax, 0
jne ROTULO340
jmp ROTULO341
ROTULO340:
mov ax, _graphics
mov [bp+-8], ax
mov ax, 54
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO341:
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+4]
jmp ROTULO339
ROTULO339:
FIM_graphics_getcolors:
retf
_graphics_mode80x25x16:
cs mov word [_graphics_active], 0
mov ax, 3
int 0x10
ROTULO345:
FIM_graphics_mode80x25x16:
retf
_graphics_modemanual:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO346
mov ax, _graphics
mov [bp+-8], ax
mov ax, 64
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO346:
cs mov word [_graphics_active], 1
mov ax, [bp+6+2]
cs mov [_graphics_video+2], ax
mov ax, [bp+6]
cs mov [_graphics_video], ax
ROTULO347:
mov sp, bp
pop bp
FIM_graphics_modemanual:
retf
; MODULO FIM: graphics
REALOC_TABLE:
dw 3
dw _program_testestring
dw 4
dw 0
dw 3
dw _cga_video
dw 4
dw 0
dw 3
dw _graphics_video
dw 4
dw 0
dw 0
dw 0
dw 0
dw 0
END:
