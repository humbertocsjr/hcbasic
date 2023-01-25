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
mov ax, 16
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
cmp ax, 0
jne ROTULO101
jmp ROTULO102
ROTULO101:
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
jmp ROTULO113
ROTULO102:
push cs
pop es
mov di, ROTULO115
jmp ROTULO114
ROTULO115:
db 6
db 32,70,65,76,72,65
times 1 db 0
ROTULO114:
push es
push di
push cs
call _console_writeline
add sp, 4
ROTULO113:
push cs
pop es
mov di, ROTULO117
jmp ROTULO116
ROTULO117:
db 18
db 69,115,99,114,101,118,97,32,115,101,117,32,110,111,109,101,58,32
times 1 db 0
ROTULO116:
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
mov di, ROTULO119
jmp ROTULO118
ROTULO119:
db 4
db 79,105,101,32
times 1 db 0
ROTULO118:
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
je ROTULO122
jmp ROTULO123
ROTULO122:
mov ax, 65535
jmp ROTULO124
ROTULO123:
xor ax, ax
ROTULO124:
cmp ax, 0
jne ROTULO120
jmp ROTULO121
ROTULO120:
push cs
pop es
mov di, ROTULO126
jmp ROTULO125
ROTULO126:
db 8
db 83,101,109,32,78,111,109,101
times 1 db 0
ROTULO125:
push es
push di
push cs
call _console_write
add sp, 4
jmp ROTULO127
ROTULO121:
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_write
add sp, 4
ROTULO127:
push cs
pop es
mov di, ROTULO129
jmp ROTULO128
ROTULO129:
db 1
db 33
times 1 db 0
ROTULO128:
push es
push di
push cs
call _console_writeline
add sp, 4
push cs
pop es
mov di, ROTULO131
jmp ROTULO130
ROTULO131:
db 27
db 84,101,115,116,101,32,100,101,32,102,117,110,99,97,111,32,105,110,100,105,114,101,116,97,58,32,39
times 1 db 0
ROTULO130:
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
mov di, ROTULO133
jmp ROTULO132
ROTULO133:
db 1
db 39
times 1 db 0
ROTULO132:
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
mov di, ROTULO135
jmp ROTULO134
ROTULO135:
db 1
db 58
times 1 db 0
ROTULO134:
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
mov di, ROTULO137
jmp ROTULO136
ROTULO137:
db 0
times 1 db 0
ROTULO136:
push es
push di
push cs
call _console_writeline
add sp, 4
push cs
pop es
mov di, ROTULO139
jmp ROTULO138
ROTULO139:
db 16
db 84,101,115,116,101,32,100,101,32,99,111,110,99,97,116,58
times 1 db 0
ROTULO138:
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
mov di, ROTULO141
jmp ROTULO140
ROTULO141:
db 21
db 32,84,101,120,116,111,32,99,111,110,99,97,116,101,110,97,100,111,32,49,44
times 1 db 0
ROTULO140:
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
mov di, ROTULO143
jmp ROTULO142
ROTULO143:
db 20
db 32,84,101,120,116,111,32,99,111,110,99,97,116,101,110,97,100,111,32,50
times 1 db 0
ROTULO142:
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
mov ax, ROTULO144
cs mov [_os_trycode], ax
mov word [bp+-26], 0
mov ax, 10
push ax
mov ax, [bp+-26]
cmp ax, 0
jne ROTULO146
mov ax, _program
mov [bp+-8], ax
mov ax, 57
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO146:
mov bx, ax
pop ax
xor dx, dx
div bx
mov [bp+-24], ax
jmp ROTULO145
ROTULO144:
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
je ROTULO147
jmp ROTULO148
ROTULO147:
push cs
pop es
mov di, ROTULO150
jmp ROTULO149
ROTULO150:
db 21
db 68,105,118,105,115,97,111,32,112,111,114,32,122,101,114,111,32,112,101,103,97
times 1 db 0
ROTULO149:
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
mov di, ROTULO152
jmp ROTULO151
ROTULO152:
db 2
db 58,32
times 1 db 0
ROTULO151:
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
mov di, ROTULO154
jmp ROTULO153
ROTULO154:
db 0
times 1 db 0
ROTULO153:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO145
ROTULO148:
cs jmp word [_os_tryfatal]
ROTULO145:
mov ax, [bp+-6]
cs mov [_os_trybase], ax
mov ax, [bp+-4]
cs mov [_os_trystack], ax
mov ax, [bp+-2]
cs mov [_os_trycode], ax
push cs
pop es
mov di, ROTULO158
jmp ROTULO157
ROTULO158:
db 2
db 111,105
times 1 db 0
ROTULO157:
push es
push di
push cs
pop es
mov di, ROTULO160
jmp ROTULO159
ROTULO160:
db 2
db 111,105
times 1 db 0
ROTULO159:
push es
push di
push cs
call _string_equals
add sp, 8
cmp ax, 0
jne ROTULO155
jmp ROTULO156
ROTULO155:
push cs
pop es
mov di, ROTULO162
jmp ROTULO161
ROTULO162:
db 10
db 69,81,85,65,76,32,84,69,83,84
times 1 db 0
ROTULO161:
push es
push di
push cs
call _console_writeline
add sp, 4
ROTULO156:
ROTULO98:
mov sp, bp
pop bp
FIM_program_main:
retf
_program_testefunc:
mov ax, 123
jmp ROTULO163
ROTULO163:
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
ROTULO164:
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
jmp ROTULO165
ROTULO165:
FIM_console_readchar:
retf
_console_readline:
push bp
mov bp, sp
sub sp, 6
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO166
mov ax, _console
mov [bp+-8], ax
mov ax, 106
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO166:
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
ROTULO168:
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
ja ROTULO177
jmp ROTULO178
ROTULO177:
mov ax, 65535
jmp ROTULO179
ROTULO178:
xor ax, ax
ROTULO179:
push ax
xor ax, ax
es mov al, [di+0]
push ax
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO180
jmp ROTULO181
ROTULO180:
mov ax, 65535
jmp ROTULO182
ROTULO181:
xor ax, ax
ROTULO182:
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
jne ROTULO183
jmp ROTULO184
ROTULO183:
mov ax, 65535
jmp ROTULO185
ROTULO184:
xor ax, ax
ROTULO185:
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO169
jmp ROTULO170
ROTULO169:
inc word [bp+6]
inc di
jmp ROTULO168
ROTULO170:
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO167:
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
jb ROTULO186
mov ax, _console
mov [bp+-8], ax
mov ax, 120
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO186:
mov ax, [bp+6]
push ax
push cs
call _os_consolewritechar
add sp, 2
ROTULO187:
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
jb ROTULO188
mov ax, _console
mov [bp+-8], ax
mov ax, 124
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO188:
inc word [bp+6]
ROTULO190:
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
ja ROTULO193
jmp ROTULO194
ROTULO193:
mov ax, 65535
jmp ROTULO195
ROTULO194:
xor ax, ax
ROTULO195:
cmp ax, 0
jne ROTULO191
jmp ROTULO192
ROTULO191:
xor ax, ax
es mov al, [di+0]
push ax
push cs
call _console_writechar
add sp, 2
inc word [bp+6]
jmp ROTULO190
ROTULO192:
ROTULO189:
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
jb ROTULO196
mov ax, _console
mov [bp+-8], ax
mov ax, 133
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO196:
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
ROTULO197:
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
jb ROTULO198
mov ax, _console
mov [bp+-8], ax
mov ax, 139
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO198:
mov ax, [bp+6]
push ax
mov ax, 10
cmp ax, 0
jne ROTULO200
mov ax, _console
mov [bp+-8], ax
mov ax, 142
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO200:
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
jne ROTULO201
mov ax, _console
mov [bp+-8], ax
mov ax, 143
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO201:
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
ja ROTULO204
jmp ROTULO205
ROTULO204:
mov ax, 65535
jmp ROTULO206
ROTULO205:
xor ax, ax
ROTULO206:
cmp ax, 0
jne ROTULO202
jmp ROTULO203
ROTULO202:
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO203:
mov ax, 48
push ax
mov ax, [bp+-2]
pop bx
add ax, bx
push ax
push cs
call _console_writechar
add sp, 2
ROTULO199:
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
jb ROTULO207
mov ax, _console
mov [bp+-8], ax
mov ax, 148
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO207:
mov ax, [bp+6]
push ax
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO211
jmp ROTULO212
ROTULO211:
mov ax, 65535
jmp ROTULO213
ROTULO212:
xor ax, ax
ROTULO213:
cmp ax, 0
jne ROTULO209
jmp ROTULO210
ROTULO209:
xor ax, ax
push ax
mov ax, [bp+6]
pop bx
sub ax, bx
mov [bp+6], ax
ROTULO210:
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO208:
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
jb ROTULO214
mov ax, _console
mov [bp+-8], ax
mov ax, 155
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO214:
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO215:
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
jb ROTULO216
mov ax, _console
mov [bp+-8], ax
mov ax, 159
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO216:
mov ax, [bp+6]
push ax
push cs
call _console_writeint16
add sp, 2
ROTULO217:
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
jb ROTULO218
mov ax, _file
mov [bp+-8], ax
mov ax, 150
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO218:
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
jmp ROTULO219
ROTULO219:
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
jb ROTULO220
mov ax, _file
mov [bp+-8], ax
mov ax, 178
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO220:
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
jmp ROTULO221
ROTULO221:
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
jb ROTULO222
mov ax, _file
mov [bp+-8], ax
mov ax, 204
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO222:
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
jmp ROTULO223
ROTULO223:
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
jb ROTULO224
mov ax, _file
mov [bp+-8], ax
mov ax, 212
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO224:
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
jmp ROTULO225
ROTULO225:
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
jb ROTULO226
mov ax, _file
mov [bp+-8], ax
mov ax, 233
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO226:
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
jmp ROTULO227
ROTULO227:
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
jb ROTULO228
mov ax, _file
mov [bp+-8], ax
mov ax, 240
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO228:
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
jmp ROTULO229
ROTULO229:
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
jb ROTULO230
mov ax, _file
mov [bp+-8], ax
mov ax, 261
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO230:
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
jmp ROTULO231
ROTULO231:
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
jb ROTULO232
mov ax, _file
mov [bp+-8], ax
mov ax, 273
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO232:
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
jmp ROTULO233
ROTULO233:
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
jb ROTULO234
mov ax, _file
mov [bp+-8], ax
mov ax, 287
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO234:
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
jmp ROTULO235
ROTULO235:
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
jb ROTULO236
mov ax, _file
mov [bp+-8], ax
mov ax, 301
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO236:
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
jmp ROTULO237
ROTULO237:
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
jb ROTULO238
mov ax, _string
mov [bp+-8], ax
mov ax, 19
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO238:
mov word [bp+-2], 0
inc word [bp+6]
ROTULO240:
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
ja ROTULO243
jmp ROTULO244
ROTULO243:
mov ax, 65535
jmp ROTULO245
ROTULO244:
xor ax, ax
ROTULO245:
cmp ax, 0
jne ROTULO241
jmp ROTULO242
ROTULO241:
inc word [bp+-2]
inc word [bp+6]
inc di
jmp ROTULO240
ROTULO242:
mov ax, [bp+-2]
jmp ROTULO239
ROTULO239:
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
jb ROTULO246
mov ax, _string
mov [bp+-8], ax
mov ax, 31
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO246:
ROTULO248:
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
je ROTULO251
jmp ROTULO252
ROTULO251:
mov ax, 65535
jmp ROTULO253
ROTULO252:
xor ax, ax
ROTULO253:
cmp ax, 0
jne ROTULO249
jmp ROTULO250
ROTULO249:
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
je ROTULO256
jmp ROTULO257
ROTULO256:
mov ax, 65535
jmp ROTULO258
ROTULO257:
xor ax, ax
ROTULO258:
cmp ax, 0
jne ROTULO254
jmp ROTULO255
ROTULO254:
mov ax, 1
jmp ROTULO247
ROTULO255:
inc word [bp+6]
inc di
inc word [bp+10]
jmp ROTULO248
ROTULO250:
xor ax, ax
jmp ROTULO247
ROTULO247:
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
jb ROTULO259
mov ax, _string
mov [bp+-8], ax
mov ax, 40
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO259:
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
ja ROTULO263
jmp ROTULO264
ROTULO263:
mov ax, 65535
jmp ROTULO265
ROTULO264:
xor ax, ax
ROTULO265:
cmp ax, 0
jne ROTULO261
jmp ROTULO262
ROTULO261:
mov ax, _string
mov [bp+-8], ax
mov ax, 49
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO262:
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
ROTULO266:
mov ax, [bp+-8]
push ax
mov ax, [bp+-6]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO269
jmp ROTULO270
ROTULO269:
mov ax, 65535
jmp ROTULO271
ROTULO270:
xor ax, ax
ROTULO271:
cmp ax, 0
jne ROTULO267
jmp ROTULO268
ROTULO267:
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
jmp ROTULO266
ROTULO268:
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
mov ax, 1
jmp ROTULO260
ROTULO260:
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
jb ROTULO272
mov ax, _string
mov [bp+-8], ax
mov ax, 62
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO272:
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
jb ROTULO276
jmp ROTULO277
ROTULO276:
mov ax, 65535
jmp ROTULO278
ROTULO277:
xor ax, ax
ROTULO278:
cmp ax, 0
jne ROTULO274
jmp ROTULO275
ROTULO274:
mov ax, _string
mov [bp+-8], ax
mov ax, 72
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO275:
mov word [bp+-6], 1
ROTULO279:
mov ax, [bp+-6]
push ax
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO282
jmp ROTULO283
ROTULO282:
mov ax, 65535
jmp ROTULO284
ROTULO283:
xor ax, ax
ROTULO284:
cmp ax, 0
jne ROTULO280
jmp ROTULO281
ROTULO280:
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
jmp ROTULO279
ROTULO281:
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
mov ax, 1
jmp ROTULO273
ROTULO273:
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
END:
