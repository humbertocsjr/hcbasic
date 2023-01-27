;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:8:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:10:13 ===---
cpu 8086
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:11:13 ===---
bits 16
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:12:13 ===---
org 0x100
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:13:13 ===---
mov word [_os_minstackptr], END
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:14:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_start2
ROTULO0:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:1:8 ===---
; MODULO: os
_os:
db 13
db 83,121,115,116,101,109,46,79,83,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:2:9 ===---
jmp ROTULO1
_os_trystack:
times 2 db 0
ROTULO1:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:3:9 ===---
jmp ROTULO2
_os_trycode:
times 2 db 0
ROTULO2:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:4:9 ===---
jmp ROTULO3
_os_trybase:
times 2 db 0
ROTULO3:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:5:9 ===---
jmp ROTULO4
_os_tryfatal:
times 2 db 0
ROTULO4:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:6:9 ===---
jmp ROTULO5
_os_minstackptr:
times 2 db 0
ROTULO5:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:8:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:17:9 ===---
_os_start2:
push bp
mov bp, sp
sub sp, 28
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO6
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:17:9 ===---
mov ax, _os
mov [bp+-8], ax
mov ax, 17
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO6:
; ARG: args TAM: 4 POS: BP--14 
; ARG: realoc TAM: 4 POS: BP--18 
; ARG: ptr TAM: 4 POS: BP--22 
; ARG: tiporealoc TAM: 2 POS: BP--24 
; ARG: desvio TAM: 2 POS: BP--26 
; ARG: soma TAM: 2 POS: BP--28 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:19:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:21:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:22:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:23:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:24:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:25:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:26:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:26:19 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_codesegment
mov word [bp+-18+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:27:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:27:16 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_codesegment
mov word [bp+-22+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:28:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:28:19 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_realoctable
mov [bp+-18], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:29:9 ===---
ROTULO8:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:29:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:29:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:29:25 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:30:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:30:26 ===---
; ACAO LEITURA - Le ponteiro
es mov ax, [di+0]
mov [bp+-24], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:31:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:32:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:33:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:33:20 ===---
; ACAO LEITURA - Le ponteiro
es mov ax, [di+0]
mov [bp+-22], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:34:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:35:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:36:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:36:22 ===---
; ACAO LEITURA - Le ponteiro
es mov ax, [di+0]
mov [bp+-26], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:37:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:38:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:39:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:39:20 ===---
; ACAO LEITURA - Le ponteiro
es mov ax, [di+0]
mov [bp+-28], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:40:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:41:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:42:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:42:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:42:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:42:30 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:43:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:43:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:43:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:43:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
pop bx
add ax, bx
mov [bp+-26], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:44:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:44:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push word [bp+-22+2]
pop es
mov di, [bp+-22]
es mov [di+0], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:45:18 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-22]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:46:18 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-22]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:47:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:47:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:47:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:47:23 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_codesegment
pop bx
add ax, bx
push word [bp+-22+2]
pop es
mov di, [bp+-22]
es mov [di+0], ax
ROTULO15:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:49:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:49:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:49:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:49:30 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:50:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:50:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:50:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:50:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
pop bx
add ax, bx
mov [bp+-22], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:51:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:51:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:51:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:51:23 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_stacksegment
pop bx
add ax, bx
push word [bp+-22+2]
pop es
mov di, [bp+-22]
es mov [di+0], ax
ROTULO20:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:53:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:53:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:53:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:53:30 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:54:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:54:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:54:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:54:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
pop bx
add ax, bx
mov [bp+-22], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:55:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:55:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:55:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:55:23 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_codesegment
pop bx
add ax, bx
push word [bp+-22+2]
pop es
mov di, [bp+-22]
es mov [di+0], ax
ROTULO25:
jmp ROTULO8
ROTULO10:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:59:13 ===---
mov ax, cs
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:60:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:61:13 ===---
mov word [bp-4], 0x80
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:63:13 ===---
mov al, [0x80]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:64:13 ===---
xor ah, ah
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:65:13 ===---
mov si, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:66:13 ===---
add si, 0x80
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:67:13 ===---
mov byte [si+1], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:68:13 ===---
cs mov word [_os_tryfatal], errofatal
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:70:11 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:71:13 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_initialize
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:72:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:72:26 ===---
; ACAO LEITURA - Le ponteiro
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:74:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:74:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:75:18 ===---
jmp escreveerro
jmp ROTULO30
ROTULO32:
mov bx, 2
cmp ax, bx
je ROTULO35
jmp ROTULO36
ROTULO35:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:77:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:77:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:78:18 ===---
jmp escreveerro
jmp ROTULO30
ROTULO36:
mov bx, 3
cmp ax, bx
je ROTULO39
jmp ROTULO40
ROTULO39:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:80:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:80:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:81:18 ===---
jmp escreveerro
jmp ROTULO30
ROTULO40:
mov bx, 4
cmp ax, bx
je ROTULO43
jmp ROTULO44
ROTULO43:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:83:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:83:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:84:18 ===---
jmp escreveerro
jmp ROTULO30
ROTULO44:
mov bx, 5
cmp ax, bx
je ROTULO47
jmp ROTULO48
ROTULO47:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:86:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:86:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:87:18 ===---
jmp escreveerro
jmp ROTULO30
ROTULO48:
mov bx, 6
cmp ax, bx
je ROTULO51
jmp ROTULO52
ROTULO51:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:89:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:89:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:90:18 ===---
jmp escreveerro
jmp ROTULO30
ROTULO52:
mov bx, 7
cmp ax, bx
je ROTULO55
jmp ROTULO56
ROTULO55:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:92:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:92:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:93:18 ===---
jmp escreveerro
jmp ROTULO30
ROTULO56:
mov bx, 8
cmp ax, bx
je ROTULO59
jmp ROTULO60
ROTULO59:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:95:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:95:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:96:18 ===---
jmp escreveerro
jmp ROTULO30
ROTULO60:
mov bx, 9
cmp ax, bx
je ROTULO63
jmp ROTULO64
ROTULO63:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:98:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:98:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:99:18 ===---
jmp escreveerro
jmp ROTULO30
ROTULO64:
mov bx, 10
cmp ax, bx
je ROTULO67
jmp ROTULO68
ROTULO67:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:101:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:101:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:102:18 ===---
jmp escreveerro
jmp ROTULO30
ROTULO68:
mov bx, 11
cmp ax, bx
je ROTULO71
jmp ROTULO72
ROTULO71:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:104:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:104:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:105:18 ===---
jmp escreveerro
jmp ROTULO30
ROTULO72:
mov bx, 12
cmp ax, bx
je ROTULO75
jmp ROTULO76
ROTULO75:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:107:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:107:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:108:18 ===---
jmp escreveerro
jmp ROTULO30
ROTULO76:
mov bx, 13
cmp ax, bx
je ROTULO79
jmp ROTULO80
ROTULO79:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:110:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:110:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:111:18 ===---
jmp escreveerro
jmp ROTULO30
ROTULO80:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:113:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:113:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:114:13 ===---
escreveerro:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:115:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:115:27 ===---
; ACAO CHAMADA - Le nome do arquivo com erro
mov di, [bp+-8]
push cs
pop es
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:116:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:116:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:117:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:117:33 ===---
; ACAO CHAMADA - Le linha com erro
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:120:13 ===---
errofatal:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:121:13 ===---
int 0x20
ROTULO7:
mov sp, bp
pop bp
FIM_os_start2:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:124:21 ===---
_os_codesegment:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:125:13 ===---
mov ax, cs
ROTULO89:
FIM_os_codesegment:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:128:21 ===---
_os_stacksegment:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:129:13 ===---
mov ax, ss
ROTULO90:
FIM_os_stacksegment:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:132:21 ===---
_os_realoctable:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:133:13 ===---
mov ax, REALOC_TABLE
ROTULO91:
FIM_os_realoctable:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:136:21 ===---
_os_consolereadchar:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:137:13 ===---
mov ah, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:138:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:139:13 ===---
xor ah, ah
ROTULO92:
FIM_os_consolereadchar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:142:16 ===---
_os_consolewritechar:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO93
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:142:16 ===---
mov ax, _os
mov [bp+-8], ax
mov ax, 142
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO93:
; ARG: c TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:142:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:143:13 ===---
mov dl, [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:144:13 ===---
mov ah, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:145:13 ===---
int 0x21
ROTULO94:
mov sp, bp
pop bp
FIM_os_consolewritechar:
retf
; MODULO FIM: os
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:45:8 ===---
; MODULO: colors
_colors:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:46:9 ===---
jmp ROTULO95
_colors_palette:
times 52 db 0
ROTULO95:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:48:16 ===---
_colors_initialize:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:49:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:49:25 ===---
xor ax, ax
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:50:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:50:24 ===---
mov ax, 1
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:51:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:51:25 ===---
mov ax, 2
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:52:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:52:24 ===---
mov ax, 3
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:53:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:53:23 ===---
mov ax, 4
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:54:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:54:27 ===---
mov ax, 5
es mov [di+10], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:55:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:55:25 ===---
mov ax, 6
es mov [di+12], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:56:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:56:29 ===---
mov ax, 7
es mov [di+14], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:57:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:57:24 ===---
mov ax, 8
es mov [di+16], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:58:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:58:29 ===---
mov ax, 9
es mov [di+18], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:59:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:59:30 ===---
mov ax, 10
es mov [di+20], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:60:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:60:29 ===---
mov ax, 11
es mov [di+22], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:61:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:61:28 ===---
mov ax, 12
es mov [di+24], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:62:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:62:32 ===---
mov ax, 13
es mov [di+26], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:63:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:63:26 ===---
mov ax, 14
es mov [di+28], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:64:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:64:25 ===---
mov ax, 15
es mov [di+30], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:65:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:65:31 ===---
mov ax, 65535
es mov [di+32], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:66:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:66:38 ===---
mov ax, 1
es mov [di+34], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO96:
FIM_colors_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:69:16 ===---
_colors_register:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO97
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:69:16 ===---
mov ax, _colors
mov [bp+-8], ax
mov ax, 69
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO97:
; ARG: newpal TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:69:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:70:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:70:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+6+2]
cs mov [_colors_palette+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:71:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:71:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
cs mov [_colors_palette], ax
ROTULO98:
mov sp, bp
pop bp
FIM_colors_register:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:74:21 ===---
_colors_black:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:75:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:75:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+0]
jmp ROTULO99
ROTULO99:
FIM_colors_black:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:78:21 ===---
_colors_blue:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:79:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:79:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+2]
jmp ROTULO100
ROTULO100:
FIM_colors_blue:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:82:21 ===---
_colors_green:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:83:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:83:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+4]
jmp ROTULO101
ROTULO101:
FIM_colors_green:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:86:21 ===---
_colors_cyan:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:87:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:87:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+6]
jmp ROTULO102
ROTULO102:
FIM_colors_cyan:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:90:21 ===---
_colors_red:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:91:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:91:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 8
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+8]
jmp ROTULO103
ROTULO103:
FIM_colors_red:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:94:21 ===---
_colors_magenta:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:95:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:95:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 10
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+10]
jmp ROTULO104
ROTULO104:
FIM_colors_magenta:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:98:21 ===---
_colors_brown:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:99:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:99:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+12]
jmp ROTULO105
ROTULO105:
FIM_colors_brown:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:102:21 ===---
_colors_lightgray:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:103:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:103:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 14
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+14]
jmp ROTULO106
ROTULO106:
FIM_colors_lightgray:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:106:21 ===---
_colors_gray:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:107:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:107:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 16
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+16]
jmp ROTULO107
ROTULO107:
FIM_colors_gray:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:110:21 ===---
_colors_lightblue:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:111:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:111:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 18
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+18]
jmp ROTULO108
ROTULO108:
FIM_colors_lightblue:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:114:21 ===---
_colors_lightgreen:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:115:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:115:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 20
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+20]
jmp ROTULO109
ROTULO109:
FIM_colors_lightgreen:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:118:21 ===---
_colors_lightcyan:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:119:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:119:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 22
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+22]
jmp ROTULO110
ROTULO110:
FIM_colors_lightcyan:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:122:21 ===---
_colors_lightred:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:123:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:123:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 24
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+24]
jmp ROTULO111
ROTULO111:
FIM_colors_lightred:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:126:21 ===---
_colors_lightmagenta:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:127:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:127:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 26
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+26]
jmp ROTULO112
ROTULO112:
FIM_colors_lightmagenta:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:130:21 ===---
_colors_yellow:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:131:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:131:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 28
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+28]
jmp ROTULO113
ROTULO113:
FIM_colors_yellow:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:134:21 ===---
_colors_white:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:135:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:135:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 30
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+30]
jmp ROTULO114
ROTULO114:
FIM_colors_white:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:138:21 ===---
_colors_transparent:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:139:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:139:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 32
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+32]
jmp ROTULO115
ROTULO115:
FIM_colors_transparent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:142:21 ===---
_colors_fromrgb:
push bp
mov bp, sp
sub sp, 8
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO116
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:142:21 ===---
mov ax, _colors
mov [bp+-8], ax
mov ax, 142
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO116:
; ARG: r TAM: 2 POS: BP+6 
; ARG: g TAM: 2 POS: BP+8 
; ARG: b TAM: 2 POS: BP+10 
; ARG: tmpr TAM: 2 POS: BP--2 
; ARG: tmpg TAM: 2 POS: BP--4 
; ARG: tmpb TAM: 2 POS: BP--6 
; ARG: tmpi TAM: 2 POS: BP--8 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:142:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:142:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:142:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:143:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:144:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:145:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:146:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:147:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:147:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 34
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+34]
cmp ax, 0
jne ROTULO118
jmp ROTULO119
ROTULO118:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:148:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:148:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:148:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:148:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:148:27 ===---
mov ax, 6
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:148:34 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:149:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:149:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:149:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:149:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:149:27 ===---
mov ax, 6
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:149:34 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:150:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:150:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:150:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:150:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:150:27 ===---
mov ax, 6
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:150:34 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:51 ===---
mov ax, 7
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:39 ===---
mov ax, 7
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:27 ===---
mov ax, 7
mov cx, ax
pop ax
shr ax, cl
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:65 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:56 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:51 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:60 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:45 ===---
mov ax, 2
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:30 ===---
mov ax, 3
mov cx, ax
pop ax
shl ax, cl
pop bx
add ax, bx
pop bx
add ax, bx
pop bx
add ax, bx
jmp ROTULO117
jmp ROTULO129
ROTULO119:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:154:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:154:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:154:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:154:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:154:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 36
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+36]
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:154:57 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 38
es mov ax, [di+38]
mov cx, ax
pop ax
shr ax, cl
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 40
es mov ax, [di+40]
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:59 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 42
es mov ax, [di+42]
mov cx, ax
pop ax
shr ax, cl
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:156:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:156:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:156:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:156:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:156:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 44
es mov ax, [di+44]
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:156:58 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 46
es mov ax, [di+46]
mov cx, ax
pop ax
shr ax, cl
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:157:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:157:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:157:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:157:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:157:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:157:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
pop bx
add ax, bx
pop bx
add ax, bx
jmp ROTULO117
ROTULO129:
ROTULO117:
mov sp, bp
pop bp
FIM_colors_fromrgb:
retf
; MODULO FIM: colors
;     ---=== teste.hcb:12:8 ===---
; MODULO: program
_program:
db 9
db 116,101,115,116,101,46,104,99,98
db 0
;     ---=== teste.hcb:13:9 ===---
jmp ROTULO130
_program_testestring:
times 4 db 0
db 255
times 255 db 0
ROTULO130:
;     ---=== teste.hcb:15:9 ===---
jmp ROTULO131
_program_mainform:
times 86 db 0
ROTULO131:
;     ---=== teste.hcb:17:16 ===---
_program_testecruzada:
;     ---=== teste.hcb:18:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _referenciacruzada_testecruzada
ROTULO132:
FIM_program_testecruzada:
retf
;     ---=== teste.hcb:20:16 ===---
_program_main:
push bp
mov bp, sp
sub sp, 26
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO133
;     ---=== teste.hcb:20:16 ===---
mov ax, _program
mov [bp+-8], ax
mov ax, 20
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO133:
; ARG: args TAM: 4 POS: BP+6 
; ARG: arq TAM: 4 POS: BP--14 
; ARG: txt TAM: 4 POS: BP--18 
; ARG: funcao TAM: 4 POS: BP--22 
; ARG: numero TAM: 2 POS: BP--24 
; ARG: numero2 TAM: 2 POS: BP--26 
;     ---=== teste.hcb:20:21 ===---
;     ---=== teste.hcb:21:13 ===---
;     ---=== teste.hcb:22:13 ===---
;     ---=== teste.hcb:23:13 ===---
;     ---=== teste.hcb:59:17 ===---
;     ---=== teste.hcb:60:17 ===---
;     ---=== teste.hcb:24:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 34
push ss
pop es
mov di, sp
push es
pop word [bp+-14+2]
mov [bp+-14], di
;     ---=== teste.hcb:25:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 129
push ss
pop es
mov di, sp
push es
pop word [bp+-18+2]
mov [bp+-18], di
es mov byte [di+0], 128
es mov byte [di+1], 0
;     ---=== teste.hcb:26:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:26:23 ===---
push cs
pop es
mov di, ROTULO136
jmp ROTULO135
ROTULO136:
db 26
db 84,101,115,116,101,32,67,114,105,97,99,97,111,32,100,101,32,97,114,113,117,105,118,111,58,32
times 1 db 0
ROTULO135:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:27:12 ===---
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
mov ax, ROTULO137
cs mov [_os_trycode], ax
;     ---=== teste.hcb:28:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:28:30 ===---
push cs
pop es
mov di, ROTULO140
jmp ROTULO139
ROTULO140:
db 9
db 116,101,115,116,101,46,116,120,116
times 1 db 0
ROTULO139:
push es
push di
;     ---=== teste.hcb:28:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-14+2]
pop es
mov di, [bp+-14]
push es
push di
push cs
call _file_create
add sp, 8
;     ---=== teste.hcb:29:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:29:33 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:29:49 ===---
push cs
pop es
mov di, ROTULO142
jmp ROTULO141
ROTULO142:
db 47
db 84,101,120,116,111,32,116,101,115,116,101,32,110,111,32,97,114,113,117,105,118,111,32,101,115,99,114,105,116,111,32,112,101,108,111,32,116,101,115,116,101,46,104,99,98,46,32
times 1 db 0
ROTULO141:
push es
push di
;     ---=== teste.hcb:29:44 ===---
; ACAO LEITURA - Le ponteiro
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
;     ---=== teste.hcb:30:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:30:27 ===---
push cs
pop es
mov di, ROTULO144
jmp ROTULO143
ROTULO144:
db 3
db 32,43,32
times 1 db 0
ROTULO143:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:31:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:31:33 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== teste.hcb:31:50 ===---
push cs
pop es
mov di, ROTULO146
jmp ROTULO145
ROTULO146:
db 41
db 84,101,120,116,111,32,116,101,115,116,101,32,101,109,105,116,105,100,111,32,118,105,97,32,83,116,114,117,99,116,117,114,101,32,83,116,114,101,97,109,46
times 1 db 0
ROTULO145:
push es
push di
;     ---=== teste.hcb:31:33 ===---
; ACAO LEITURA - Le ponteiro
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
;     ---=== teste.hcb:32:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:32:24 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-14+2]
pop es
mov di, [bp+-14]
push es
push di
push cs
call _file_close
add sp, 4
;     ---=== teste.hcb:33:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:33:31 ===---
push cs
pop es
mov di, ROTULO148
jmp ROTULO147
ROTULO148:
db 15
db 32,66,121,116,101,115,32,101,115,99,114,105,116,111,115
times 1 db 0
ROTULO147:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO138
ROTULO137:
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
;     ---=== teste.hcb:35:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:35:31 ===---
push cs
pop es
mov di, ROTULO152
jmp ROTULO151
ROTULO152:
db 39
db 32,70,65,76,72,65,32,65,79,32,77,65,78,73,80,85,76,65,82,32,79,32,65,82,81,85,73,86,79,32,116,101,115,116,101,46,116,120,116
times 1 db 0
ROTULO151:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO138
ROTULO150:
cs jmp word [_os_tryfatal]
ROTULO138:
mov ax, [bp+-6]
cs mov [_os_trybase], ax
mov ax, [bp+-4]
cs mov [_os_trystack], ax
mov ax, [bp+-2]
cs mov [_os_trycode], ax
;     ---=== teste.hcb:37:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:37:23 ===---
push cs
pop es
mov di, ROTULO154
jmp ROTULO153
ROTULO154:
db 18
db 69,115,99,114,101,118,97,32,115,101,117,32,110,111,109,101,58,32
times 1 db 0
ROTULO153:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:38:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:38:26 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_readline
add sp, 4
;     ---=== teste.hcb:39:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:39:23 ===---
push cs
pop es
mov di, ROTULO156
jmp ROTULO155
ROTULO156:
db 4
db 79,105,101,32
times 1 db 0
ROTULO155:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:40:9 ===---
;     ---=== teste.hcb:40:31 ===---
;     ---=== teste.hcb:40:12 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:40:26 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_length
add sp, 4
push ax
;     ---=== teste.hcb:40:34 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO159
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
;     ---=== teste.hcb:41:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:41:27 ===---
push cs
pop es
mov di, ROTULO163
jmp ROTULO162
ROTULO163:
db 8
db 83,101,109,32,78,111,109,101
times 1 db 0
ROTULO162:
push es
push di
push cs
call _console_write
add sp, 4
jmp ROTULO164
ROTULO158:
;     ---=== teste.hcb:43:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:43:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_write
add sp, 4
ROTULO164:
;     ---=== teste.hcb:45:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:45:27 ===---
push cs
pop es
mov di, ROTULO166
jmp ROTULO165
ROTULO166:
db 1
db 33
times 1 db 0
ROTULO165:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:46:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:46:23 ===---
push cs
pop es
mov di, ROTULO168
jmp ROTULO167
ROTULO168:
db 27
db 84,101,115,116,101,32,100,101,32,102,117,110,99,97,111,32,105,110,100,105,114,101,116,97,58,32,39
times 1 db 0
ROTULO167:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:47:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== teste.hcb:47:18 ===---
push cs
pop es
mov di, _program_testefunc
push es
pop word [bp+-22+2]
mov [bp+-22], di
;     ---=== teste.hcb:48:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:48:29 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
call far [bp+-22]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== teste.hcb:49:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:49:27 ===---
push cs
pop es
mov di, ROTULO170
jmp ROTULO169
ROTULO170:
db 1
db 39
times 1 db 0
ROTULO169:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:50:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:50:30 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
cs mov ax, [_program_testestring+2]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== teste.hcb:51:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:51:23 ===---
push cs
pop es
mov di, ROTULO172
jmp ROTULO171
ROTULO172:
db 1
db 58
times 1 db 0
ROTULO171:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:52:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:52:30 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
cs mov ax, [_program_testestring]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== teste.hcb:53:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:53:27 ===---
push cs
pop es
mov di, ROTULO174
jmp ROTULO173
ROTULO174:
db 0
times 1 db 0
ROTULO173:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:54:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:54:26 ===---
push cs
pop es
mov di, ROTULO176
jmp ROTULO175
ROTULO176:
db 16
db 84,101,115,116,101,32,100,101,32,99,111,110,99,97,116,58
times 1 db 0
ROTULO175:
push es
push di
;     ---=== teste.hcb:54:21 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_copy
add sp, 8
;     ---=== teste.hcb:55:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:55:28 ===---
push cs
pop es
mov di, ROTULO178
jmp ROTULO177
ROTULO178:
db 21
db 32,84,101,120,116,111,32,99,111,110,99,97,116,101,110,97,100,111,32,49,44
times 1 db 0
ROTULO177:
push es
push di
;     ---=== teste.hcb:55:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_concat
add sp, 8
;     ---=== teste.hcb:56:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:56:28 ===---
push cs
pop es
mov di, ROTULO180
jmp ROTULO179
ROTULO180:
db 20
db 32,84,101,120,116,111,32,99,111,110,99,97,116,101,110,97,100,111,32,50
times 1 db 0
ROTULO179:
push es
push di
;     ---=== teste.hcb:56:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_concat
add sp, 8
;     ---=== teste.hcb:57:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:57:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:58:11 ===---
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
mov ax, ROTULO181
cs mov [_os_trycode], ax
;     ---=== teste.hcb:61:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-26], 0
;     ---=== teste.hcb:62:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== teste.hcb:62:25 ===---
;     ---=== teste.hcb:62:22 ===---
mov ax, 10
push ax
;     ---=== teste.hcb:62:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
cmp ax, 0
jne ROTULO183
;     ---=== teste.hcb:62:27 ===---
mov ax, _program
mov [bp+-8], ax
mov ax, 62
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO183:
mov bx, ax
pop ax
xor dx, dx
div bx
mov [bp+-24], ax
jmp ROTULO182
ROTULO181:
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
je ROTULO184
jmp ROTULO185
ROTULO184:
;     ---=== teste.hcb:64:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:64:31 ===---
push cs
pop es
mov di, ROTULO187
jmp ROTULO186
ROTULO187:
db 21
db 68,105,118,105,115,97,111,32,112,111,114,32,122,101,114,111,32,112,101,103,97
times 1 db 0
ROTULO186:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:65:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:65:27 ===---
; ACAO CHAMADA - Le nome do arquivo com erro
mov di, [bp+-8]
push cs
pop es
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:66:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:66:27 ===---
push cs
pop es
mov di, ROTULO189
jmp ROTULO188
ROTULO189:
db 2
db 58,32
times 1 db 0
ROTULO188:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:67:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:67:33 ===---
; ACAO CHAMADA - Le linha com erro
mov ax, [bp+-10]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== teste.hcb:68:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:68:31 ===---
push cs
pop es
mov di, ROTULO191
jmp ROTULO190
ROTULO191:
db 0
times 1 db 0
ROTULO190:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO182
ROTULO185:
cs jmp word [_os_tryfatal]
ROTULO182:
mov ax, [bp+-6]
cs mov [_os_trybase], ax
mov ax, [bp+-4]
cs mov [_os_trystack], ax
mov ax, [bp+-2]
cs mov [_os_trycode], ax
;     ---=== teste.hcb:70:9 ===---
;     ---=== teste.hcb:70:12 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:70:32 ===---
push cs
pop es
mov di, ROTULO195
jmp ROTULO194
ROTULO195:
db 2
db 111,105
times 1 db 0
ROTULO194:
push es
push di
;     ---=== teste.hcb:70:26 ===---
push cs
pop es
mov di, ROTULO197
jmp ROTULO196
ROTULO197:
db 2
db 111,105
times 1 db 0
ROTULO196:
push es
push di
push cs
call _string_equals
add sp, 8
cmp ax, 0
jne ROTULO192
jmp ROTULO193
ROTULO192:
;     ---=== teste.hcb:70:43 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:70:61 ===---
push cs
pop es
mov di, ROTULO199
jmp ROTULO198
ROTULO199:
db 10
db 69,81,85,65,76,32,84,69,83,84
times 1 db 0
ROTULO198:
push es
push di
push cs
call _console_writeline
add sp, 4
ROTULO193:
;     ---=== teste.hcb:72:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _vga_mode640x480x2
;     ---=== teste.hcb:73:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:73:37 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:73:33 ===---
mov ax, 19
push ax
;     ---=== teste.hcb:73:28 ===---
mov ax, 114
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== teste.hcb:74:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:74:37 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:74:33 ===---
mov ax, 51
push ax
;     ---=== teste.hcb:74:28 ===---
mov ax, 114
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== teste.hcb:75:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:75:37 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:75:33 ===---
mov ax, 19
push ax
;     ---=== teste.hcb:75:28 ===---
mov ax, 216
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== teste.hcb:76:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:76:37 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:76:33 ===---
mov ax, 51
push ax
;     ---=== teste.hcb:76:28 ===---
mov ax, 216
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== teste.hcb:77:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:77:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:77:38 ===---
mov ax, 44
push ax
;     ---=== teste.hcb:77:35 ===---
xor ax, ax
push ax
;     ---=== teste.hcb:77:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:77:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:78:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:78:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:78:38 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:78:35 ===---
xor ax, ax
push ax
;     ---=== teste.hcb:78:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:78:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:79:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:79:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:79:38 ===---
mov ax, 65
push ax
;     ---=== teste.hcb:79:35 ===---
xor ax, ax
push ax
;     ---=== teste.hcb:79:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:79:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:80:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:80:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:80:39 ===---
xor ax, ax
push ax
;     ---=== teste.hcb:80:35 ===---
mov ax, 44
push ax
;     ---=== teste.hcb:80:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:80:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:81:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:81:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:81:39 ===---
xor ax, ax
push ax
;     ---=== teste.hcb:81:35 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:81:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:81:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:82:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:82:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:82:39 ===---
xor ax, ax
push ax
;     ---=== teste.hcb:82:35 ===---
mov ax, 65
push ax
;     ---=== teste.hcb:82:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:82:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:83:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:83:44 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:83:40 ===---
mov ax, 65
push ax
;     ---=== teste.hcb:83:35 ===---
mov ax, 100
push ax
;     ---=== teste.hcb:83:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:83:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:84:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:84:44 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:84:40 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:84:35 ===---
mov ax, 100
push ax
;     ---=== teste.hcb:84:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:84:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:85:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:85:44 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:85:40 ===---
mov ax, 45
push ax
;     ---=== teste.hcb:85:35 ===---
mov ax, 100
push ax
;     ---=== teste.hcb:85:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:85:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:86:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:86:44 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:86:39 ===---
mov ax, 100
push ax
;     ---=== teste.hcb:86:35 ===---
mov ax, 65
push ax
;     ---=== teste.hcb:86:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:86:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:87:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:87:44 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:87:39 ===---
mov ax, 100
push ax
;     ---=== teste.hcb:87:35 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:87:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:87:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:88:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:88:44 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:88:39 ===---
mov ax, 100
push ax
;     ---=== teste.hcb:88:35 ===---
mov ax, 45
push ax
;     ---=== teste.hcb:88:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:88:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:89:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:89:51 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:89:49 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:89:46 ===---
mov ax, 48
push ax
;     ---=== teste.hcb:89:41 ===---
mov ax, 213
push ax
;     ---=== teste.hcb:89:37 ===---
mov ax, 22
push ax
;     ---=== teste.hcb:89:32 ===---
mov ax, 117
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== teste.hcb:90:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:90:51 ===---
mov ax, 65535
push ax
;     ---=== teste.hcb:90:49 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:90:46 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:90:41 ===---
mov ax, 215
push ax
;     ---=== teste.hcb:90:37 ===---
mov ax, 20
push ax
;     ---=== teste.hcb:90:32 ===---
mov ax, 115
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== teste.hcb:91:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _application_initialize
;     ---=== teste.hcb:92:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:92:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _form_initialize
add sp, 4
;     ---=== teste.hcb:93:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:93:24 ===---
mov ax, 30
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:94:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:94:25 ===---
mov ax, 10
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:95:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:95:26 ===---
mov ax, 200
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:96:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:96:27 ===---
mov ax, 100
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:97:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:97:35 ===---
push cs
pop es
mov di, ROTULO201
jmp ROTULO200
ROTULO201:
db 37
db 48,49,50,51,52,53,54,55,56,57,32,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90
times 1 db 0
ROTULO200:
push es
push di
;     ---=== teste.hcb:97:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _control_settext
add sp, 8
;     ---=== teste.hcb:98:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:98:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _application_run
add sp, 4
;     ---=== teste.hcb:99:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _console_readchar
;     ---=== teste.hcb:100:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _graphics_mode80x25x16
ROTULO134:
mov sp, bp
pop bp
FIM_program_main:
retf
;     ---=== teste.hcb:103:14 ===---
_program_testefunc:
;     ---=== teste.hcb:104:9 ===---
;     ---=== teste.hcb:104:16 ===---
mov ax, 123
jmp ROTULO202
ROTULO202:
FIM_program_testefunc:
retf
; MODULO FIM: program
;     ---=== teste.hcb:6:8 ===---
; MODULO: referenciacruzada
_referenciacruzada:
db 9
db 116,101,115,116,101,46,104,99,98
db 0
;     ---=== teste.hcb:7:16 ===---
_referenciacruzada_testecruzada:
;     ---=== teste.hcb:8:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _program_testecruzada
ROTULO203:
FIM_referenciacruzada_testecruzada:
retf
; MODULO FIM: referenciacruzada
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:245:8 ===---
; MODULO: console
_console:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:246:21 ===---
_console_readchar:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:247:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:247:16 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_consolereadchar
jmp ROTULO204
ROTULO204:
FIM_console_readchar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:250:16 ===---
_console_readline:
push bp
mov bp, sp
sub sp, 6
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO205
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:250:16 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 250
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO205:
; ARG: txt TAM: 4 POS: BP+6 
; ARG: len TAM: 2 POS: BP--2 
; ARG: stdin TAM: 4 POS: BP--6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:250:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:251:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:252:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:253:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:253:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:254:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:255:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 34
push ss
pop es
mov di, sp
push es
pop word [bp+-6+2]
mov [bp+-6], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:256:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:256:20 ===---
xor ax, ax
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:257:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:257:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:257:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:257:35 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:257:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-6+2]
pop es
mov di, [bp+-6]
push es
push di
push cs
call _file_readraw
add sp, 10
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:258:9 ===---
ROTULO207:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:258:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:258:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:258:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:258:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:258:21 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO216
jmp ROTULO217
ROTULO216:
mov ax, 65535
jmp ROTULO218
ROTULO217:
xor ax, ax
ROTULO218:
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:258:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:258:27 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:258:34 ===---
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO219
jmp ROTULO220
ROTULO219:
mov ax, 65535
jmp ROTULO221
ROTULO220:
xor ax, ax
ROTULO221:
mov bx, ax
pop ax
and ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:258:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:258:41 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:258:48 ===---
mov ax, 10
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO222
jmp ROTULO223
ROTULO222:
mov ax, 65535
jmp ROTULO224
ROTULO223:
xor ax, ax
ROTULO224:
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO208
jmp ROTULO209
ROTULO208:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:259:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
jmp ROTULO207
ROTULO209:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:261:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO206:
mov sp, bp
pop bp
FIM_console_readline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:264:16 ===---
_console_writechar:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO225
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:264:16 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 264
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO225:
; ARG: c TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:264:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:265:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:265:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _os_consolewritechar
add sp, 2
ROTULO226:
mov sp, bp
pop bp
FIM_console_writechar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:268:16 ===---
_console_write:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO227
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:268:16 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 268
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO227:
; ARG: txt TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:268:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:270:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:271:9 ===---
ROTULO229:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:271:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:271:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:271:21 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO232
jmp ROTULO233
ROTULO232:
mov ax, 65535
jmp ROTULO234
ROTULO233:
xor ax, ax
ROTULO234:
cmp ax, 0
jne ROTULO230
jmp ROTULO231
ROTULO230:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:272:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:272:23 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
push cs
call _console_writechar
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:273:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
jmp ROTULO229
ROTULO231:
ROTULO228:
mov sp, bp
pop bp
FIM_console_write:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:277:16 ===---
_console_writeline:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO235
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:277:16 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 277
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO235:
; ARG: txt TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:277:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:278:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:278:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:279:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:279:19 ===---
mov ax, 13
push ax
push cs
call _console_writechar
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:280:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:280:19 ===---
mov ax, 10
push ax
push cs
call _console_writechar
add sp, 2
ROTULO236:
mov sp, bp
pop bp
FIM_console_writeline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:283:16 ===---
_console_writeuint16:
push bp
mov bp, sp
sub sp, 4
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO237
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:283:16 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 283
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO237:
; ARG: nro TAM: 2 POS: BP+6 
; ARG: tmp TAM: 2 POS: BP--2 
; ARG: prox TAM: 2 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:283:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:284:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:285:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:286:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:286:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:286:19 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:286:27 ===---
mov ax, 10
cmp ax, 0
jne ROTULO239
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:286:27 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 286
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO239:
mov bx, ax
pop ax
xor dx, dx
div bx
mov ax, dx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:287:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:287:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:287:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:287:26 ===---
mov ax, 10
cmp ax, 0
jne ROTULO240
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:287:26 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 287
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO240:
mov bx, ax
pop ax
xor dx, dx
div bx
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:288:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:288:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:288:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:288:19 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:288:26 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:288:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO242:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:289:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:289:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:289:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:289:19 ===---
mov ax, 48
pop bx
add ax, bx
push ax
push cs
call _console_writechar
add sp, 2
ROTULO238:
mov sp, bp
pop bp
FIM_console_writeuint16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:292:16 ===---
_console_writeint16:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO246
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:292:16 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 292
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO246:
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:292:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:293:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:293:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:293:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:293:18 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jl ROTULO250
jmp ROTULO251
ROTULO250:
mov ax, 65535
jmp ROTULO252
ROTULO251:
xor ax, ax
ROTULO252:
cmp ax, 0
jne ROTULO248
jmp ROTULO249
ROTULO248:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:294:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:294:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:294:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:294:23 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+6], ax
ROTULO249:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:296:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:296:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO247:
mov sp, bp
pop bp
FIM_console_writeint16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:299:16 ===---
_console_writeuint8:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO253
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:299:16 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 299
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO253:
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:299:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:300:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:300:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO254:
mov sp, bp
pop bp
FIM_console_writeuint8:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:303:16 ===---
_console_writeint8:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO255
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:303:16 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 303
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO255:
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:303:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:304:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:304:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeint16
add sp, 2
ROTULO256:
mov sp, bp
pop bp
FIM_console_writeint8:
retf
; MODULO FIM: console
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:150:8 ===---
; MODULO: file
_file:
db 13
db 83,121,115,116,101,109,46,79,83,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:151:21 ===---
_file_open:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO257
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:151:21 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 151
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO257:
; ARG: stream TAM: 4 POS: BP+6 
; ARG: filename TAM: 4 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:151:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:151:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:152:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:153:13 ===---
mov ax, 0x3d02
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:154:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:155:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:156:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:157:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:158:13 ===---
inc dx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:159:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:160:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:161:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:162:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:163:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:164:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:165:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 165
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:166:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:167:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:167:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:168:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:168:23 ===---
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
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:169:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:169:26 ===---
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
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:170:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:170:24 ===---
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
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:171:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:171:27 ===---
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
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:172:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:172:24 ===---
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
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:173:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:173:30 ===---
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
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:174:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:174:26 ===---
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
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:175:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:175:28 ===---
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
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:176:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:176:16 ===---
mov ax, 1
jmp ROTULO258
ROTULO258:
mov sp, bp
pop bp
FIM_file_open:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:179:21 ===---
_file_create:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO259
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:179:21 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 179
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO259:
; ARG: stream TAM: 4 POS: BP+6 
; ARG: filename TAM: 4 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:179:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:179:46 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:180:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:181:13 ===---
mov ax, 0x3c00
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:182:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:183:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:184:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:185:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:186:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:187:13 ===---
inc dx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:188:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:189:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:190:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:191:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:192:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:193:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:194:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 194
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:195:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:196:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:196:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:197:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:197:23 ===---
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
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:198:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:198:26 ===---
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
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:199:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:199:24 ===---
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
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:200:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:200:27 ===---
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
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:201:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:201:24 ===---
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
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:202:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:202:16 ===---
mov ax, 1
jmp ROTULO260
ROTULO260:
mov sp, bp
pop bp
FIM_file_create:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:205:21 ===---
_file_read:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO261
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:205:21 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 205
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO261:
; ARG: stream TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:205:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:205:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:206:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:207:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:207:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:208:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:209:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:209:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:209:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:209:31 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:209:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _file_readraw
add sp, 10
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:210:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:210:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO262
ROTULO262:
mov sp, bp
pop bp
FIM_file_read:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:213:21 ===---
_file_readraw:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO263
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:213:21 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 213
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO263:
; ARG: stream TAM: 4 POS: BP+6 
; ARG: data TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP+14 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:213:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:213:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:213:69 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:214:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:215:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:215:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:216:13 ===---
mov ax, 0x3f00
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:217:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:218:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:219:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:220:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:221:13 ===---
mov cx, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:222:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:223:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:224:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:225:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:226:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:227:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:228:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:229:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 229
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:230:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:231:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:231:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO264
ROTULO264:
mov sp, bp
pop bp
FIM_file_readraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:234:21 ===---
_file_write:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO265
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:234:21 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 234
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO265:
; ARG: stream TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:234:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:234:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:235:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:236:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:236:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:236:29 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
push cs
call _string_length
add sp, 4
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:237:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:238:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:238:16 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:238:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:238:33 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:238:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _file_writeraw
add sp, 10
jmp ROTULO266
ROTULO266:
mov sp, bp
pop bp
FIM_file_write:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:241:21 ===---
_file_writeraw:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO267
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:241:21 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 241
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO267:
; ARG: stream TAM: 4 POS: BP+6 
; ARG: data TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP+14 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:241:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:241:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:241:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:242:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:243:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:243:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:244:13 ===---
mov ax, 0x4000
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:245:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:246:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:247:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:248:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:249:13 ===---
mov cx, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:250:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:251:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:252:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:253:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:254:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:255:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:256:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:257:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 257
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:258:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:259:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:259:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO268
ROTULO268:
mov sp, bp
pop bp
FIM_file_writeraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:262:21 ===---
_file_close:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO269
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:262:21 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 262
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO269:
; ARG: stream TAM: 4 POS: BP+6 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:262:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:263:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:264:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:264:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:265:13 ===---
mov ax, 0x3e00
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:266:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:267:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:268:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:269:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 269
mov [bp+-10], ax
mov ax, 8
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:270:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:271:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:271:16 ===---
mov ax, 1
jmp ROTULO270
ROTULO270:
mov sp, bp
pop bp
FIM_file_close:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:274:21 ===---
_file_seekstart:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO271
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:274:21 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 274
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO271:
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:274:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:274:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:275:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:276:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:276:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:277:13 ===---
mov ax, 0x4200
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:278:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:279:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:280:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:281:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:282:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:283:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 283
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:284:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:285:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:285:16 ===---
mov ax, 1
jmp ROTULO272
ROTULO272:
mov sp, bp
pop bp
FIM_file_seekstart:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:288:21 ===---
_file_seekcurrent:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO273
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:288:21 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 288
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO273:
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:288:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:288:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:289:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:290:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:290:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:291:13 ===---
mov ax, 0x4201
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:292:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:293:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:294:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:295:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:296:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:297:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 297
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:298:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:299:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:299:16 ===---
mov ax, 1
jmp ROTULO274
ROTULO274:
mov sp, bp
pop bp
FIM_file_seekcurrent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:302:21 ===---
_file_seekend:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO275
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:302:21 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 302
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO275:
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:302:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:302:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:303:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:304:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:304:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:305:13 ===---
mov ax, 0x4202
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:306:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:307:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:308:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:309:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:310:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:311:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 311
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:312:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:313:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:313:16 ===---
mov ax, 1
jmp ROTULO276
ROTULO276:
mov sp, bp
pop bp
FIM_file_seekend:
retf
; MODULO FIM: file
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:162:8 ===---
; MODULO: string
_string:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:163:21 ===---
_string_length:
push bp
mov bp, sp
sub sp, 2
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO277
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:163:21 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 163
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO277:
; ARG: text TAM: 4 POS: BP+6 
; ARG: i TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:163:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:164:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:165:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:167:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:168:9 ===---
ROTULO279:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:168:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:168:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:168:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO282
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:169:17 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:170:18 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
jmp ROTULO279
ROTULO281:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:172:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:172:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO278
ROTULO278:
mov sp, bp
pop bp
FIM_string_length:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:175:21 ===---
_string_equals:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO285
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:175:21 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 175
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO285:
; ARG: txt1 TAM: 4 POS: BP+6 
; ARG: txt2 TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:175:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:175:50 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:176:9 ===---
ROTULO287:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:176:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:176:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:176:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO290
jmp ROTULO291
ROTULO290:
mov ax, 65535
jmp ROTULO292
ROTULO291:
xor ax, ax
ROTULO292:
cmp ax, 0
jne ROTULO288
jmp ROTULO289
ROTULO288:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:177:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:177:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:177:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:177:24 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO295
jmp ROTULO296
ROTULO295:
mov ax, 65535
jmp ROTULO297
ROTULO296:
xor ax, ax
ROTULO297:
cmp ax, 0
jne ROTULO293
jmp ROTULO294
ROTULO293:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:177:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:177:38 ===---
mov ax, 1
jmp ROTULO286
ROTULO294:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:178:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:179:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
jmp ROTULO287
ROTULO289:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:181:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:181:16 ===---
xor ax, ax
jmp ROTULO286
ROTULO286:
mov sp, bp
pop bp
FIM_string_equals:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:184:21 ===---
_string_concat:
push bp
mov bp, sp
sub sp, 10
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO298
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:184:21 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 184
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO298:
; ARG: dest TAM: 4 POS: BP+6 
; ARG: orig TAM: 4 POS: BP+10 
; ARG: dest_len TAM: 2 POS: BP--2 
; ARG: dest_capacity TAM: 2 POS: BP--4 
; ARG: len TAM: 2 POS: BP--6 
; ARG: i TAM: 2 POS: BP--8 
; ARG: tmp TAM: 2 POS: BP--10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:184:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:184:50 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:185:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:186:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:187:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:188:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:189:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:190:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:190:20 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:190:34 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _string_length
add sp, 4
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:191:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:191:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:192:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:192:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:192:37 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:192:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:192:29 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
push cs
call _string_length
add sp, 4
pop bx
add ax, bx
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:193:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:193:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:193:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:193:31 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:193:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:193:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:193:13 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
pop bx
add ax, bx
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:193:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO302
jmp ROTULO303
ROTULO302:
mov ax, 65535
jmp ROTULO304
ROTULO303:
xor ax, ax
ROTULO304:
cmp ax, 0
jne ROTULO300
jmp ROTULO301
ROTULO300:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:193:62 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 193
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO301:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:194:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:194:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:194:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:194:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:194:25 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:194:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:195:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 1
ROTULO305:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO308
jmp ROTULO309
ROTULO308:
mov ax, 65535
jmp ROTULO310
ROTULO309:
xor ax, ax
ROTULO310:
cmp ax, 0
jne ROTULO306
jmp ROTULO307
ROTULO306:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:197:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:197:19 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:198:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:198:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:199:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:200:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-8]
jmp ROTULO305
ROTULO307:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:202:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:203:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:203:16 ===---
mov ax, 1
jmp ROTULO299
ROTULO299:
mov sp, bp
pop bp
FIM_string_concat:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:206:21 ===---
_string_copy:
push bp
mov bp, sp
sub sp, 8
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO311
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:206:21 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 206
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO311:
; ARG: dest TAM: 4 POS: BP+6 
; ARG: orig TAM: 4 POS: BP+10 
; ARG: dest_capacity TAM: 2 POS: BP--2 
; ARG: orig_len TAM: 2 POS: BP--4 
; ARG: i TAM: 2 POS: BP--6 
; ARG: tmp TAM: 2 POS: BP--8 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:206:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:206:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:207:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:208:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:209:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:210:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:211:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:211:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:212:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:212:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:212:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:212:20 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:212:34 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
push cs
call _string_length
add sp, 4
pop bx
add ax, bx
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:213:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:214:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:215:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:40 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
pop bx
add ax, bx
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO315
jmp ROTULO316
ROTULO315:
mov ax, 65535
jmp ROTULO317
ROTULO316:
xor ax, ax
ROTULO317:
cmp ax, 0
jne ROTULO313
jmp ROTULO314
ROTULO313:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:54 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 216
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO314:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:217:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:217:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-6], 1
ROTULO318:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:217:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:217:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:217:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO321
jmp ROTULO322
ROTULO321:
mov ax, 65535
jmp ROTULO323
ROTULO322:
xor ax, ax
ROTULO323:
cmp ax, 0
jne ROTULO319
jmp ROTULO320
ROTULO319:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:218:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:218:19 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:220:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:221:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:217:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-6]
jmp ROTULO318
ROTULO320:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:223:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:224:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:224:16 ===---
mov ax, 1
jmp ROTULO312
ROTULO312:
mov sp, bp
pop bp
FIM_string_copy:
retf
; MODULO FIM: string
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:271:8 ===---
; MODULO: vga
_vga:
db 18
db 83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:272:9 ===---
jmp ROTULO324
_vga_video:
times 30 db 0
ROTULO324:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:274:16 ===---
_vga_mode640x480x2:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:275:13 ===---
mov ax, 0x11
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:276:13 ===---
int 0x10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:277:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:277:23 ===---
mov ax, 640
cs push word [_vga_video+2]
pop es
cs mov di, [_vga_video]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:278:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:278:24 ===---
mov ax, 480
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:279:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:279:24 ===---
mov ax, 2
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:280:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:280:27 ===---
push cs
pop es
mov di, _vga_drawpixel
push es
push di
cs push word [_vga_video+2]
pop es
cs mov di, [_vga_video]
es pop word [di+6]
es pop word [di+6+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:281:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:281:39 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _genericvideo_registerdrawline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:282:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:282:42 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_vga_video+2]
pop es
cs mov di, [_vga_video]
push es
push di
push cs
call _genericvideo_registerdrawellipse
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:283:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:283:31 ===---
push cs
pop es
mov di, _vga_drawrectangle
push es
push di
cs push word [_vga_video+2]
pop es
cs mov di, [_vga_video]
es pop word [di+10]
es pop word [di+10+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:284:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:284:29 ===---
push cs
pop es
mov di, _vga_clearscreen
push es
push di
cs push word [_vga_video+2]
pop es
cs mov di, [_vga_video]
es pop word [di+22]
es pop word [di+22+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:285:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:285:29 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _graphics_modemanual
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:286:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _genericvideo_register2colorspalette
ROTULO325:
FIM_vga_mode640x480x2:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:289:9 ===---
_vga_drawpixel:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO326
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:289:9 ===---
mov ax, _vga
mov [bp+-8], ax
mov ax, 289
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO326:
; ARG: mode TAM: 4 POS: BP+6 
; ARG: x TAM: 2 POS: BP+10 
; ARG: y TAM: 2 POS: BP+12 
; ARG: color TAM: 2 POS: BP+14 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:289:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:289:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:289:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:289:64 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:290:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:290:14 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:290:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:290:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO330
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:290:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:290:38 ===---
xor ax, ax
jmp ROTULO327
ROTULO329:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:291:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:291:14 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:291:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:291:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO335
jmp ROTULO336
ROTULO335:
mov ax, 65535
jmp ROTULO337
ROTULO336:
xor ax, ax
ROTULO337:
cmp ax, 0
jne ROTULO333
jmp ROTULO334
ROTULO333:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:291:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:291:39 ===---
xor ax, ax
jmp ROTULO327
ROTULO334:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:13 ===---
mov ax, 0xa000
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:13 ===---
mov es, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:294:13 ===---
mov ax, [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:295:13 ===---
mov bx, 80
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:296:13 ===---
mul bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:297:13 ===---
mov bx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:298:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:299:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:300:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:301:13 ===---
add ax, bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:302:13 ===---
mov di, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:303:13 ===---
mov cx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:304:13 ===---
and cx, 7
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:305:13 ===---
inc cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:306:13 ===---
mov ax, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:307:13 ===---
and ax, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:308:13 ===---
je .inverte
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:309:13 ===---
ror al, cl
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:310:13 ===---
es or [di], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:311:13 ===---
jmp .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:312:13 ===---
.inverte:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:313:13 ===---
ror al, cl
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:314:13 ===---
not ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:315:13 ===---
es and [di], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:316:13 ===---
.fim:
ROTULO327:
mov sp, bp
pop bp
FIM_vga_drawpixel:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:319:9 ===---
_vga_byteandor:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO338
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:319:9 ===---
mov ax, _vga
mov [bp+-8], ax
mov ax, 319
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO338:
; ARG: mode TAM: 4 POS: BP+6 
; ARG: x TAM: 2 POS: BP+10 
; ARG: y TAM: 2 POS: BP+12 
; ARG: valueand TAM: 2 POS: BP+14 
; ARG: valueor TAM: 2 POS: BP+16 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:319:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:319:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:319:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:319:64 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:319:83 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:320:13 ===---
mov ax, 0xa000
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:321:13 ===---
mov es, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:322:13 ===---
mov ax, [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:323:13 ===---
mov bx, 80
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:324:13 ===---
mul bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:325:13 ===---
mov bx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:326:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:327:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:328:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:329:13 ===---
add ax, bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:330:13 ===---
mov di, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:331:13 ===---
mov ax, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:332:13 ===---
es and [di], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:333:13 ===---
mov ax, [bp+16]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:334:13 ===---
es or [di], al
ROTULO339:
mov sp, bp
pop bp
FIM_vga_byteandor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:337:9 ===---
_vga_byteset:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO340
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:337:9 ===---
mov ax, _vga
mov [bp+-8], ax
mov ax, 337
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO340:
; ARG: mode TAM: 4 POS: BP+6 
; ARG: x TAM: 2 POS: BP+10 
; ARG: y TAM: 2 POS: BP+12 
; ARG: value TAM: 2 POS: BP+14 
; ARG: len TAM: 2 POS: BP+16 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:337:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:337:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:337:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:337:62 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:337:78 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:338:13 ===---
mov ax, 0xa000
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:339:13 ===---
mov es, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:340:13 ===---
mov ax, [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:341:13 ===---
mov bx, 80
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:342:13 ===---
mul bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:343:13 ===---
mov bx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:344:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:345:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:346:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:347:13 ===---
add ax, bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:348:13 ===---
mov di, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:349:13 ===---
mov ax, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:350:13 ===---
mov cx, [bp+16]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:351:13 ===---
cld
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:352:13 ===---
rep stosb
ROTULO341:
mov sp, bp
pop bp
FIM_vga_byteset:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:9 ===---
_vga_drawrectangle:
push bp
mov bp, sp
sub sp, 14
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO342
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:9 ===---
mov ax, _vga
mov [bp+-8], ax
mov ax, 355
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO342:
; ARG: mode TAM: 4 POS: BP+6 
; ARG: x1 TAM: 2 POS: BP+10 
; ARG: y1 TAM: 2 POS: BP+12 
; ARG: x2 TAM: 2 POS: BP+14 
; ARG: y2 TAM: 2 POS: BP+16 
; ARG: bordercolor TAM: 2 POS: BP+18 
; ARG: backgroundcolor TAM: 2 POS: BP+20 
; ARG: y TAM: 2 POS: BP--2 
; ARG: x TAM: 2 POS: BP--4 
; ARG: comp TAM: 2 POS: BP--6 
; ARG: tmp TAM: 2 POS: BP--8 
; ARG: tmpor TAM: 2 POS: BP--10 
; ARG: tmpand TAM: 2 POS: BP--12 
; ARG: diff TAM: 2 POS: BP--14 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:56 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:84 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:98 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:121 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:356:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:357:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:358:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:359:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:360:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:361:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:362:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:363:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:363:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:363:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:363:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:363:37 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:363:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:363:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:363:24 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
pop bx
sub ax, bx
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:364:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:365:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:365:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:365:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:365:20 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO352
jmp ROTULO353
ROTULO352:
mov ax, 65535
jmp ROTULO354
ROTULO353:
xor ax, ax
ROTULO354:
cmp ax, 0
jne ROTULO350
jmp ROTULO351
ROTULO350:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:365:27 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:365:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:365:35 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:365:34 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+-14], ax
ROTULO351:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:366:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:366:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:366:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:366:19 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jl ROTULO357
jmp ROTULO358
ROTULO357:
mov ax, 65535
jmp ROTULO359
ROTULO358:
xor ax, ax
ROTULO359:
cmp ax, 0
jne ROTULO355
jmp ROTULO356
ROTULO355:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:366:26 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:366:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:366:34 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:366:33 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+-14], ax
ROTULO356:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:367:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-10], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:368:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 255
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:369:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:369:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:369:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:369:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:369:27 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:369:15 ===---
mov ax, 7
pop bx
sub ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:370:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:370:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-4], 0
ROTULO363:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:370:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:370:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:370:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO366
jmp ROTULO367
ROTULO366:
mov ax, 65535
jmp ROTULO368
ROTULO367:
xor ax, ax
ROTULO368:
cmp ax, 0
jne ROTULO364
jmp ROTULO365
ROTULO364:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:371:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:371:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:371:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:371:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO371
jmp ROTULO372
ROTULO371:
mov ax, 65535
jmp ROTULO373
ROTULO372:
xor ax, ax
ROTULO373:
cmp ax, 0
jne ROTULO369
jmp ROTULO370
ROTULO369:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:372:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:372:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:372:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:372:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:372:38 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:372:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shl ax, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:373:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:373:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:373:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:373:36 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO377
jmp ROTULO378
ROTULO377:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:374:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:374:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:374:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:374:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:374:41 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:374:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shl ax, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-10], ax
ROTULO378:
jmp ROTULO385
ROTULO370:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:377:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:377:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:377:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:377:39 ===---
mov ax, 65535
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO388
jmp ROTULO389
ROTULO388:
mov ax, 65535
jmp ROTULO390
ROTULO389:
xor ax, ax
ROTULO390:
cmp ax, 0
jne ROTULO386
jmp ROTULO387
ROTULO386:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:378:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:378:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:378:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:378:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:378:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:378:48 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shl ax, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:379:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:379:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:379:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:379:44 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO394
jmp ROTULO395
ROTULO394:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:380:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:380:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:380:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:380:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:380:45 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:380:51 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shl ax, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-10], ax
ROTULO395:
ROTULO387:
ROTULO385:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:370:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO363
ROTULO365:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:385:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:385:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:385:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
not ax
ROTULO402:
mov ax, 65535
jmp ROTULO404
ROTULO403:
xor ax, ax
ROTULO404:
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:386:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:386:32 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:386:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:386:22 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:386:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
add ax, bx
mov [bp+-2], ax
ROTULO405:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:386:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:386:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:386:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:386:32 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:386:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO408
jmp ROTULO409
ROTULO408:
mov ax, 65535
jmp ROTULO410
ROTULO409:
xor ax, ax
ROTULO410:
cmp ax, 0
jne ROTULO406
jmp ROTULO407
ROTULO406:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:387:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:387:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:387:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:387:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:387:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:387:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:386:32 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
jmp ROTULO405
ROTULO407:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:389:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:389:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:389:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:389:31 ===---
mov ax, 65535
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO413
jmp ROTULO414
ROTULO413:
mov ax, 65535
jmp ROTULO415
ROTULO414:
xor ax, ax
ROTULO415:
cmp ax, 0
jne ROTULO411
jmp ROTULO412
ROTULO411:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:390:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:390:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:390:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:390:36 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO416
jmp ROTULO417
ROTULO416:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:391:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 255
jmp ROTULO421
ROTULO417:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:393:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 0
ROTULO421:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:395:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:395:27 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:395:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-2], ax
ROTULO422:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:395:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:395:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:395:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO425
jmp ROTULO426
ROTULO425:
mov ax, 65535
jmp ROTULO427
ROTULO426:
xor ax, ax
ROTULO427:
cmp ax, 0
jne ROTULO423
jmp ROTULO424
ROTULO423:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:396:17 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:396:68 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:396:70 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:396:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:396:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:396:57 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:396:52 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:396:65 ===---
mov ax, 3
mov cx, ax
pop ax
shr ax, cl
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:396:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:396:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:396:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:396:36 ===---
mov ax, 8
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:396:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:396:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteset
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:395:27 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
jmp ROTULO422
ROTULO424:
ROTULO412:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:400:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-10], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:401:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 255
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:402:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:402:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:402:15 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:402:22 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:403:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:403:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-4], 0
ROTULO431:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:403:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:403:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:403:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO434
jmp ROTULO435
ROTULO434:
mov ax, 65535
jmp ROTULO436
ROTULO435:
xor ax, ax
ROTULO436:
cmp ax, 0
jne ROTULO432
jmp ROTULO433
ROTULO432:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:404:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:404:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:404:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:404:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO439
jmp ROTULO440
ROTULO439:
mov ax, 65535
jmp ROTULO441
ROTULO440:
xor ax, ax
ROTULO441:
cmp ax, 0
jne ROTULO437
jmp ROTULO438
ROTULO437:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:405:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:405:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:405:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:405:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:405:38 ===---
mov ax, 128
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:405:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shr ax, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:406:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:406:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:406:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:406:36 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO445
jmp ROTULO446
ROTULO445:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:407:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:407:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:407:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:407:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:407:41 ===---
mov ax, 128
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:407:49 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shr ax, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-10], ax
ROTULO446:
jmp ROTULO453
ROTULO438:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:410:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:410:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:410:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:410:39 ===---
mov ax, 65535
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO456
jmp ROTULO457
ROTULO456:
mov ax, 65535
jmp ROTULO458
ROTULO457:
xor ax, ax
ROTULO458:
cmp ax, 0
jne ROTULO454
jmp ROTULO455
ROTULO454:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:411:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:411:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:411:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:411:46 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:411:42 ===---
mov ax, 128
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:411:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shr ax, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:412:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:412:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:412:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:412:44 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO462
jmp ROTULO463
ROTULO462:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:413:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:413:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:413:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:413:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:413:45 ===---
mov ax, 128
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:413:53 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shr ax, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-10], ax
ROTULO463:
ROTULO455:
ROTULO453:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:403:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO431
ROTULO433:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:418:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:418:32 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:418:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:418:22 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:418:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
add ax, bx
mov [bp+-2], ax
ROTULO470:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:418:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:418:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:418:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:418:32 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:418:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO473
jmp ROTULO474
ROTULO473:
mov ax, 65535
jmp ROTULO475
ROTULO474:
xor ax, ax
ROTULO475:
cmp ax, 0
jne ROTULO471
jmp ROTULO472
ROTULO471:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:419:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:419:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:419:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:419:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:419:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:419:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:418:32 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
jmp ROTULO470
ROTULO472:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:421:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-10], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:422:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 255
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:423:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:423:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:423:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:423:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:423:27 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:423:15 ===---
mov ax, 7
pop bx
sub ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:424:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:424:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-4], 0
ROTULO479:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:424:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:424:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:424:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO482
jmp ROTULO483
ROTULO482:
mov ax, 65535
jmp ROTULO484
ROTULO483:
xor ax, ax
ROTULO484:
cmp ax, 0
jne ROTULO480
jmp ROTULO481
ROTULO480:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:425:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:425:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:425:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:425:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:425:34 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:425:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shl ax, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:426:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:426:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:426:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:426:32 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO488
jmp ROTULO489
ROTULO488:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:427:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:427:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:427:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:427:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:427:37 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:427:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shl ax, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-10], ax
ROTULO489:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:424:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO479
ROTULO481:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:430:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:430:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:430:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:430:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:430:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:430:19 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:431:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:431:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:431:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:431:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:431:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:431:19 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:432:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-10], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:433:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 255
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:434:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:434:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:434:15 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:434:22 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:435:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:435:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-4], 0
ROTULO499:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:435:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:435:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:435:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO502
jmp ROTULO503
ROTULO502:
mov ax, 65535
jmp ROTULO504
ROTULO503:
xor ax, ax
ROTULO504:
cmp ax, 0
jne ROTULO500
jmp ROTULO501
ROTULO500:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:436:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:436:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:436:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:436:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:436:34 ===---
mov ax, 128
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:436:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shr ax, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:437:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:437:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:437:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:437:32 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO508
jmp ROTULO509
ROTULO508:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:438:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:438:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:438:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:438:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:438:37 ===---
mov ax, 128
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:438:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shr ax, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-10], ax
ROTULO509:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:435:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO499
ROTULO501:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:441:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:441:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:441:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:441:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:441:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:441:19 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:442:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:442:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:442:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:442:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:442:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:442:19 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:443:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:443:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:443:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:443:28 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO516
jmp ROTULO517
ROTULO516:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:444:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 255
jmp ROTULO521
ROTULO517:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:446:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 0
ROTULO521:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:63 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:58 ===---
mov ax, 3
mov cx, ax
pop ax
shr ax, cl
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:28 ===---
mov ax, 8
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteset
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:63 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:58 ===---
mov ax, 3
mov cx, ax
pop ax
shr ax, cl
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:28 ===---
mov ax, 8
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteset
add sp, 12
ROTULO343:
mov sp, bp
pop bp
FIM_vga_drawrectangle:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:452:9 ===---
_vga_clearscreen:
push bp
mov bp, sp
sub sp, 4
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO522
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:452:9 ===---
mov ax, _vga
mov [bp+-8], ax
mov ax, 452
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO522:
; ARG: mode TAM: 4 POS: BP+6 
; ARG: color TAM: 2 POS: BP+10 
; ARG: tmp TAM: 2 POS: BP--2 
; ARG: y TAM: 2 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:452:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:452:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:453:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:454:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:455:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:455:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:455:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:455:22 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO524
jmp ROTULO525
ROTULO524:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:456:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 255
jmp ROTULO529
ROTULO525:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:458:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
ROTULO529:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-4], 0
ROTULO530:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:22 ===---
mov ax, 479
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO533
jmp ROTULO534
ROTULO533:
mov ax, 65535
jmp ROTULO535
ROTULO534:
xor ax, ax
ROTULO535:
cmp ax, 0
jne ROTULO531
jmp ROTULO532
ROTULO531:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:461:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:461:38 ===---
mov ax, 80
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:461:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:461:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:461:27 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:461:21 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteset
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO530
ROTULO532:
ROTULO523:
mov sp, bp
pop bp
FIM_vga_clearscreen:
retf
; MODULO FIM: vga
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:123:8 ===---
; MODULO: genericvideo
_genericvideo:
db 18
db 83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:124:9 ===---
jmp ROTULO536
_genericvideo_palette:
times 52 db 0
ROTULO536:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:126:16 ===---
_genericvideo_register2colorspalette:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:127:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:127:25 ===---
xor ax, ax
cs push word [_genericvideo_palette+2]
pop es
cs mov di, [_genericvideo_palette]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:128:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:128:24 ===---
xor ax, ax
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:129:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:129:25 ===---
xor ax, ax
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:130:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:130:24 ===---
xor ax, ax
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:131:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:131:23 ===---
xor ax, ax
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:132:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:132:27 ===---
xor ax, ax
es mov [di+10], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:133:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:133:25 ===---
xor ax, ax
es mov [di+12], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:134:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:134:29 ===---
mov ax, 1
es mov [di+14], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:135:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:135:24 ===---
xor ax, ax
es mov [di+16], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:136:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:136:29 ===---
mov ax, 1
es mov [di+18], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:137:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:137:30 ===---
mov ax, 1
es mov [di+20], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:138:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:138:29 ===---
mov ax, 1
es mov [di+22], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:139:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:139:28 ===---
mov ax, 1
es mov [di+24], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:140:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:140:32 ===---
mov ax, 1
es mov [di+26], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:141:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:141:26 ===---
mov ax, 1
es mov [di+28], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:142:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:142:25 ===---
mov ax, 1
es mov [di+30], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:143:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:143:31 ===---
mov ax, 65535
es mov [di+32], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:144:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:144:38 ===---
mov ax, 1
es mov [di+34], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:145:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:145:25 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _colors_register
add sp, 4
ROTULO537:
FIM_genericvideo_register2colorspalette:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:148:16 ===---
_genericvideo_register16colorspalette:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:149:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:149:25 ===---
xor ax, ax
cs push word [_genericvideo_palette+2]
pop es
cs mov di, [_genericvideo_palette]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:150:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:150:24 ===---
mov ax, 1
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:151:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:151:25 ===---
mov ax, 2
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:152:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:152:24 ===---
mov ax, 3
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:153:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:153:23 ===---
mov ax, 4
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:154:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:154:27 ===---
mov ax, 5
es mov [di+10], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:155:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:155:25 ===---
mov ax, 6
es mov [di+12], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:156:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:156:29 ===---
mov ax, 7
es mov [di+14], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:157:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:157:24 ===---
mov ax, 8
es mov [di+16], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:158:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:158:29 ===---
mov ax, 9
es mov [di+18], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:159:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:159:30 ===---
mov ax, 10
es mov [di+20], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:160:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:160:29 ===---
mov ax, 11
es mov [di+22], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:161:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:161:28 ===---
mov ax, 12
es mov [di+24], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:162:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:162:32 ===---
mov ax, 13
es mov [di+26], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:163:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:163:26 ===---
mov ax, 14
es mov [di+28], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:164:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:164:25 ===---
mov ax, 15
es mov [di+30], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:165:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:165:31 ===---
mov ax, 65535
es mov [di+32], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:166:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:166:38 ===---
mov ax, 1
es mov [di+34], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:167:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:167:25 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _colors_register
add sp, 4
ROTULO538:
FIM_genericvideo_register16colorspalette:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:170:16 ===---
_genericvideo_registerdrawline:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO539
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:170:16 ===---
mov ax, _genericvideo
mov [bp+-8], ax
mov ax, 170
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO539:
; ARG: mode TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:170:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:171:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:171:25 ===---
push cs
pop es
mov di, _genericvideo_drawline
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+18]
es pop word [di+18+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO540:
mov sp, bp
pop bp
FIM_genericvideo_registerdrawline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:174:16 ===---
_genericvideo_registerdrawellipse:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO541
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:174:16 ===---
mov ax, _genericvideo
mov [bp+-8], ax
mov ax, 174
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO541:
; ARG: mode TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:174:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:175:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:175:28 ===---
push cs
pop es
mov di, _genericvideo_drawellipse
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+14]
es pop word [di+14+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO542:
mov sp, bp
pop bp
FIM_genericvideo_registerdrawellipse:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:178:9 ===---
_genericvideo_drawline:
push bp
mov bp, sp
sub sp, 16
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO543
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:178:9 ===---
mov ax, _genericvideo
mov [bp+-8], ax
mov ax, 178
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO543:
; ARG: mode TAM: 4 POS: BP+6 
; ARG: x1 TAM: 2 POS: BP+10 
; ARG: y1 TAM: 2 POS: BP+12 
; ARG: x2 TAM: 2 POS: BP+14 
; ARG: y2 TAM: 2 POS: BP+16 
; ARG: color TAM: 2 POS: BP+18 
; ARG: inc TAM: 2 POS: BP--2 
; ARG: inc1 TAM: 2 POS: BP--4 
; ARG: inc2 TAM: 2 POS: BP--6 
; ARG: dx TAM: 2 POS: BP--8 
; ARG: dy TAM: 2 POS: BP--10 
; ARG: d TAM: 2 POS: BP--12 
; ARG: x TAM: 2 POS: BP--14 
; ARG: y TAM: 2 POS: BP--16 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:178:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:178:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:178:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:178:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:178:79 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:178:93 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:179:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:180:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:181:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:182:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:183:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:184:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:185:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:186:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:187:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:187:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:187:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:187:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO547
jmp ROTULO548
ROTULO547:
mov ax, 65535
jmp ROTULO549
ROTULO548:
xor ax, ax
ROTULO549:
cmp ax, 0
jne ROTULO545
jmp ROTULO546
ROTULO545:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:188:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:188:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:188:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:188:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
sub ax, bx
mov [bp+-8], ax
jmp ROTULO550
ROTULO546:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:190:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:190:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:190:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:190:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
mov [bp+-8], ax
ROTULO550:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:192:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:192:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:192:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:192:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO553
jmp ROTULO554
ROTULO553:
mov ax, 65535
jmp ROTULO555
ROTULO554:
xor ax, ax
ROTULO555:
cmp ax, 0
jne ROTULO551
jmp ROTULO552
ROTULO551:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:193:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:193:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:193:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:193:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
sub ax, bx
mov [bp+-10], ax
jmp ROTULO556
ROTULO552:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:195:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:195:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:195:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:195:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
sub ax, bx
mov [bp+-10], ax
ROTULO556:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:197:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:197:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:197:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:197:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
mov bx, ax
pop ax
cmp ax, bx
jg ROTULO559
jmp ROTULO560
ROTULO559:
mov ax, 65535
jmp ROTULO561
ROTULO560:
xor ax, ax
ROTULO561:
cmp ax, 0
jne ROTULO557
jmp ROTULO558
ROTULO557:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:198:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:198:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:198:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:198:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO564
jmp ROTULO565
ROTULO564:
mov ax, 65535
jmp ROTULO566
ROTULO565:
xor ax, ax
ROTULO566:
cmp ax, 0
jne ROTULO562
jmp ROTULO563
ROTULO562:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:199:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:199:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:200:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:200:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov [bp+10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:201:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:201:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
mov [bp+14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:202:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:202:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:203:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:203:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov [bp+12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:204:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:204:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
mov [bp+16], ax
ROTULO563:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:206:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:206:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:206:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:206:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO569
jmp ROTULO570
ROTULO569:
mov ax, 65535
jmp ROTULO571
ROTULO570:
xor ax, ax
ROTULO571:
cmp ax, 0
jne ROTULO567
jmp ROTULO568
ROTULO567:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:207:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
jmp ROTULO572
ROTULO568:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:209:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:209:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:209:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:209:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO575
jmp ROTULO576
ROTULO575:
mov ax, 65535
jmp ROTULO577
ROTULO576:
xor ax, ax
ROTULO577:
cmp ax, 0
jne ROTULO573
jmp ROTULO574
ROTULO573:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:210:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
jmp ROTULO578
ROTULO574:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:212:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:212:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:212:28 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:212:27 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+-2], ax
ROTULO578:
ROTULO572:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:215:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:215:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:216:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:216:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:217:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:217:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:217:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:217:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:217:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:217:25 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
pop bx
sub ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:218:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:218:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:218:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:218:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:218:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:218:32 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:219:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:219:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:219:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:219:27 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:220:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:220:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:220:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:220:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:220:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+6]
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:221:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:221:31 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:221:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:221:26 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:221:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
mov [bp+-14], ax
ROTULO579:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:221:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:221:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:221:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO582
jmp ROTULO583
ROTULO582:
mov ax, 65535
jmp ROTULO584
ROTULO583:
xor ax, ax
ROTULO584:
cmp ax, 0
jne ROTULO580
jmp ROTULO581
ROTULO580:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:222:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:222:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:222:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:222:25 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jge ROTULO587
jmp ROTULO588
ROTULO587:
mov ax, 65535
jmp ROTULO589
ROTULO588:
xor ax, ax
ROTULO589:
cmp ax, 0
jne ROTULO585
jmp ROTULO586
ROTULO585:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:223:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:223:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:223:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:223:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
pop bx
add ax, bx
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:224:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:224:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:224:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:224:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
mov [bp+-12], ax
jmp ROTULO590
ROTULO586:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:226:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:226:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:226:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:226:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
mov [bp+-12], ax
ROTULO590:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:228:17 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:228:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:228:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:228:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:228:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+6]
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:221:31 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-14]
jmp ROTULO579
ROTULO581:
jmp ROTULO591
ROTULO558:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:231:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:231:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:231:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:231:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO594
jmp ROTULO595
ROTULO594:
mov ax, 65535
jmp ROTULO596
ROTULO595:
xor ax, ax
ROTULO596:
cmp ax, 0
jne ROTULO592
jmp ROTULO593
ROTULO592:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:232:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:232:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:233:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:233:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov [bp+10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:234:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:234:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
mov [bp+14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:235:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:235:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:236:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:236:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov [bp+12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:237:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:237:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
mov [bp+16], ax
ROTULO593:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:239:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:239:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:239:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:239:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO599
jmp ROTULO600
ROTULO599:
mov ax, 65535
jmp ROTULO601
ROTULO600:
xor ax, ax
ROTULO601:
cmp ax, 0
jne ROTULO597
jmp ROTULO598
ROTULO597:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:240:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
jmp ROTULO602
ROTULO598:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:242:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:242:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:242:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:242:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO605
jmp ROTULO606
ROTULO605:
mov ax, 65535
jmp ROTULO607
ROTULO606:
xor ax, ax
ROTULO607:
cmp ax, 0
jne ROTULO603
jmp ROTULO604
ROTULO603:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:243:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
jmp ROTULO608
ROTULO604:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:245:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:245:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:245:28 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:245:27 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+-2], ax
ROTULO608:
ROTULO602:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:248:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:248:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:249:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:249:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:250:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:250:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:250:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:250:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:250:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:250:25 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
pop bx
sub ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:251:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:251:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:251:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:251:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:251:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:251:32 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:252:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:252:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:252:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:252:27 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:253:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:253:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:253:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:253:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:253:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+6]
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:254:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:254:31 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:254:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:254:26 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:254:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
add ax, bx
mov [bp+-16], ax
ROTULO609:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:254:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:254:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:254:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO612
jmp ROTULO613
ROTULO612:
mov ax, 65535
jmp ROTULO614
ROTULO613:
xor ax, ax
ROTULO614:
cmp ax, 0
jne ROTULO610
jmp ROTULO611
ROTULO610:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:255:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:255:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:255:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:255:25 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jge ROTULO617
jmp ROTULO618
ROTULO617:
mov ax, 65535
jmp ROTULO619
ROTULO618:
xor ax, ax
ROTULO619:
cmp ax, 0
jne ROTULO615
jmp ROTULO616
ROTULO615:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:256:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:256:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:256:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:256:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
pop bx
add ax, bx
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:257:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:257:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:257:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:257:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
mov [bp+-12], ax
jmp ROTULO620
ROTULO616:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:259:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:259:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:259:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:259:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
mov [bp+-12], ax
ROTULO620:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:261:17 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:261:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:261:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:261:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:261:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+6]
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:254:31 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-16]
jmp ROTULO609
ROTULO611:
ROTULO591:
ROTULO544:
mov sp, bp
pop bp
FIM_genericvideo_drawline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:9 ===---
_genericvideo_drawellipse:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO621
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:9 ===---
mov ax, _genericvideo
mov [bp+-8], ax
mov ax, 266
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO621:
; ARG: mode TAM: 4 POS: BP+6 
; ARG: x1 TAM: 2 POS: BP+10 
; ARG: y1 TAM: 2 POS: BP+12 
; ARG: x2 TAM: 2 POS: BP+14 
; ARG: y2 TAM: 2 POS: BP+16 
; ARG: bordercolor TAM: 2 POS: BP+18 
; ARG: backgroundcolor TAM: 2 POS: BP+20 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:68 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:82 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:96 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:119 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:267:15 ===---
mov ax, _genericvideo
mov [bp+-8], ax
mov ax, 267
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO622:
mov sp, bp
pop bp
FIM_genericvideo_drawellipse:
retf
; MODULO FIM: genericvideo
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:32:8 ===---
; MODULO: graphics
_graphics:
db 18
db 83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:33:9 ===---
jmp ROTULO623
_graphics_active:
times 2 db 0
ROTULO623:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:34:9 ===---
jmp ROTULO624
_graphics_video:
times 30 db 0
ROTULO624:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:36:16 ===---
_graphics_drawpixel:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO625
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:36:16 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 36
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO625:
; ARG: x TAM: 2 POS: BP+6 
; ARG: y TAM: 2 POS: BP+8 
; ARG: color TAM: 2 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:36:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:36:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:36:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:37:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:37:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:37:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:37:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO629
jmp ROTULO630
ROTULO629:
mov ax, 65535
jmp ROTULO631
ROTULO630:
xor ax, ax
ROTULO631:
cmp ax, 0
jne ROTULO627
jmp ROTULO628
ROTULO627:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:37:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 37
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO628:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:38:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:38:14 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:38:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:38:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO634
jmp ROTULO635
ROTULO634:
mov ax, 65535
jmp ROTULO636
ROTULO635:
xor ax, ax
ROTULO636:
cmp ax, 0
jne ROTULO632
jmp ROTULO633
ROTULO632:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:38:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:38:39 ===---
xor ax, ax
jmp ROTULO626
ROTULO633:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:39:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:39:14 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:39:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:39:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO639
jmp ROTULO640
ROTULO639:
mov ax, 65535
jmp ROTULO641
ROTULO640:
xor ax, ax
ROTULO641:
cmp ax, 0
jne ROTULO637
jmp ROTULO638
ROTULO637:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:39:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:39:40 ===---
xor ax, ax
jmp ROTULO626
ROTULO638:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:40:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:40:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:40:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:40:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:40:9 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
es call far [di+6]
add sp, 10
ROTULO626:
mov sp, bp
pop bp
FIM_graphics_drawpixel:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:43:16 ===---
_graphics_drawline:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO642
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:43:16 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 43
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO642:
; ARG: x1 TAM: 2 POS: BP+6 
; ARG: y1 TAM: 2 POS: BP+8 
; ARG: x2 TAM: 2 POS: BP+10 
; ARG: y2 TAM: 2 POS: BP+12 
; ARG: color TAM: 2 POS: BP+14 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:43:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:43:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:43:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:43:67 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:43:81 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:44:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:44:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:44:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:44:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO646
jmp ROTULO647
ROTULO646:
mov ax, 65535
jmp ROTULO648
ROTULO647:
xor ax, ax
ROTULO648:
cmp ax, 0
jne ROTULO644
jmp ROTULO645
ROTULO644:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:44:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 44
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO645:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:45:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:45:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:45:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:45:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO651
jmp ROTULO652
ROTULO651:
mov ax, 65535
jmp ROTULO653
ROTULO652:
xor ax, ax
ROTULO653:
cmp ax, 0
jne ROTULO649
jmp ROTULO650
ROTULO649:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:45:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:45:40 ===---
xor ax, ax
jmp ROTULO643
ROTULO650:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:46:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:46:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:46:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:46:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO656
jmp ROTULO657
ROTULO656:
mov ax, 65535
jmp ROTULO658
ROTULO657:
xor ax, ax
ROTULO658:
cmp ax, 0
jne ROTULO654
jmp ROTULO655
ROTULO654:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:46:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:46:41 ===---
xor ax, ax
jmp ROTULO643
ROTULO655:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:47:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:47:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:47:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:47:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO661
jmp ROTULO662
ROTULO661:
mov ax, 65535
jmp ROTULO663
ROTULO662:
xor ax, ax
ROTULO663:
cmp ax, 0
jne ROTULO659
jmp ROTULO660
ROTULO659:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:47:35 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:47:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:47:54 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:47:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
sub ax, bx
mov [bp+10], ax
ROTULO660:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:48:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:48:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:48:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:48:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO666
jmp ROTULO667
ROTULO666:
mov ax, 65535
jmp ROTULO668
ROTULO667:
xor ax, ax
ROTULO668:
cmp ax, 0
jne ROTULO664
jmp ROTULO665
ROTULO664:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:48:36 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:48:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:48:56 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:48:41 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
sub ax, bx
mov [bp+12], ax
ROTULO665:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:49:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:49:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:49:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:49:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:49:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:49:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:49:9 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
es call far [di+18]
add sp, 14
ROTULO643:
mov sp, bp
pop bp
FIM_graphics_drawline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:52:16 ===---
_graphics_drawrectangle:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO669
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:52:16 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 52
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO669:
; ARG: x1 TAM: 2 POS: BP+6 
; ARG: y1 TAM: 2 POS: BP+8 
; ARG: x2 TAM: 2 POS: BP+10 
; ARG: y2 TAM: 2 POS: BP+12 
; ARG: bordercolor TAM: 2 POS: BP+14 
; ARG: backgroundcolor TAM: 2 POS: BP+16 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:52:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:52:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:52:58 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:52:72 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:52:86 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:52:109 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:53:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:53:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:53:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:53:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO673
jmp ROTULO674
ROTULO673:
mov ax, 65535
jmp ROTULO675
ROTULO674:
xor ax, ax
ROTULO675:
cmp ax, 0
jne ROTULO671
jmp ROTULO672
ROTULO671:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:53:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 53
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO672:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:54:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:54:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:54:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:54:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO678
jmp ROTULO679
ROTULO678:
mov ax, 65535
jmp ROTULO680
ROTULO679:
xor ax, ax
ROTULO680:
cmp ax, 0
jne ROTULO676
jmp ROTULO677
ROTULO676:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:54:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:54:40 ===---
xor ax, ax
jmp ROTULO670
ROTULO677:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO683
jmp ROTULO684
ROTULO683:
mov ax, 65535
jmp ROTULO685
ROTULO684:
xor ax, ax
ROTULO685:
cmp ax, 0
jne ROTULO681
jmp ROTULO682
ROTULO681:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:41 ===---
xor ax, ax
jmp ROTULO670
ROTULO682:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:56:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:56:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:56:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:56:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO688
jmp ROTULO689
ROTULO688:
mov ax, 65535
jmp ROTULO690
ROTULO689:
xor ax, ax
ROTULO690:
cmp ax, 0
jne ROTULO686
jmp ROTULO687
ROTULO686:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:56:35 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:56:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:56:54 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:56:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
sub ax, bx
mov [bp+10], ax
ROTULO687:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:57:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:57:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:57:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:57:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO693
jmp ROTULO694
ROTULO693:
mov ax, 65535
jmp ROTULO695
ROTULO694:
xor ax, ax
ROTULO695:
cmp ax, 0
jne ROTULO691
jmp ROTULO692
ROTULO691:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:57:36 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:57:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:57:56 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:57:41 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
sub ax, bx
mov [bp+12], ax
ROTULO692:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:58:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:58:65 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:58:52 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:58:48 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:58:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:58:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:58:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:58:9 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
es call far [di+10]
add sp, 16
ROTULO670:
mov sp, bp
pop bp
FIM_graphics_drawrectangle:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:16 ===---
_graphics_drawellipse:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO696
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:16 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 61
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO696:
; ARG: x1 TAM: 2 POS: BP+6 
; ARG: y1 TAM: 2 POS: BP+8 
; ARG: x2 TAM: 2 POS: BP+10 
; ARG: y2 TAM: 2 POS: BP+12 
; ARG: bordercolor TAM: 2 POS: BP+14 
; ARG: backgroundcolor TAM: 2 POS: BP+16 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:56 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:84 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:107 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:62:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:62:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:62:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:62:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO700
jmp ROTULO701
ROTULO700:
mov ax, 65535
jmp ROTULO702
ROTULO701:
xor ax, ax
ROTULO702:
cmp ax, 0
jne ROTULO698
jmp ROTULO699
ROTULO698:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:62:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 62
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO699:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:63:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:63:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:63:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:63:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO705
jmp ROTULO706
ROTULO705:
mov ax, 65535
jmp ROTULO707
ROTULO706:
xor ax, ax
ROTULO707:
cmp ax, 0
jne ROTULO703
jmp ROTULO704
ROTULO703:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:63:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:63:40 ===---
xor ax, ax
jmp ROTULO697
ROTULO704:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO710
jmp ROTULO711
ROTULO710:
mov ax, 65535
jmp ROTULO712
ROTULO711:
xor ax, ax
ROTULO712:
cmp ax, 0
jne ROTULO708
jmp ROTULO709
ROTULO708:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:41 ===---
xor ax, ax
jmp ROTULO697
ROTULO709:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:65:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:65:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:65:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:65:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO715
jmp ROTULO716
ROTULO715:
mov ax, 65535
jmp ROTULO717
ROTULO716:
xor ax, ax
ROTULO717:
cmp ax, 0
jne ROTULO713
jmp ROTULO714
ROTULO713:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:65:35 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:65:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:65:54 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:65:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
sub ax, bx
mov [bp+10], ax
ROTULO714:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:66:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:66:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:66:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:66:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO720
jmp ROTULO721
ROTULO720:
mov ax, 65535
jmp ROTULO722
ROTULO721:
xor ax, ax
ROTULO722:
cmp ax, 0
jne ROTULO718
jmp ROTULO719
ROTULO718:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:66:36 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:66:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:66:56 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:66:41 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
sub ax, bx
mov [bp+12], ax
ROTULO719:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:67:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:67:63 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:67:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:67:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:67:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:67:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:67:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:67:9 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
es call far [di+14]
add sp, 16
ROTULO697:
mov sp, bp
pop bp
FIM_graphics_drawellipse:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:16 ===---
_graphics_drawtext:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO723
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:16 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 70
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO723:
; ARG: font TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: x1 TAM: 2 POS: BP+14 
; ARG: y1 TAM: 2 POS: BP+16 
; ARG: x2 TAM: 2 POS: BP+18 
; ARG: y2 TAM: 2 POS: BP+20 
; ARG: color TAM: 2 POS: BP+22 
; ARG: multiline TAM: 2 POS: BP+24 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:69 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:83 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:97 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:111 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:128 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:71:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:71:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:71:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:71:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO727
jmp ROTULO728
ROTULO727:
mov ax, 65535
jmp ROTULO729
ROTULO728:
xor ax, ax
ROTULO729:
cmp ax, 0
jne ROTULO725
jmp ROTULO726
ROTULO725:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:71:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 71
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO726:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:72:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:72:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:72:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:72:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO732
jmp ROTULO733
ROTULO732:
mov ax, 65535
jmp ROTULO734
ROTULO733:
xor ax, ax
ROTULO734:
cmp ax, 0
jne ROTULO730
jmp ROTULO731
ROTULO730:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:72:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:72:40 ===---
xor ax, ax
jmp ROTULO724
ROTULO731:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO737
jmp ROTULO738
ROTULO737:
mov ax, 65535
jmp ROTULO739
ROTULO738:
xor ax, ax
ROTULO739:
cmp ax, 0
jne ROTULO735
jmp ROTULO736
ROTULO735:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:41 ===---
xor ax, ax
jmp ROTULO724
ROTULO736:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:74:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:74:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:74:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:74:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO742
jmp ROTULO743
ROTULO742:
mov ax, 65535
jmp ROTULO744
ROTULO743:
xor ax, ax
ROTULO744:
cmp ax, 0
jne ROTULO740
jmp ROTULO741
ROTULO740:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:74:35 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:74:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:74:54 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:74:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
sub ax, bx
mov [bp+18], ax
ROTULO741:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO747
jmp ROTULO748
ROTULO747:
mov ax, 65535
jmp ROTULO749
ROTULO748:
xor ax, ax
ROTULO749:
cmp ax, 0
jne ROTULO745
jmp ROTULO746
ROTULO745:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:36 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:56 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:41 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
sub ax, bx
mov [bp+20], ax
ROTULO746:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:59 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:52 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:48 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:30 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:9 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+22]
add sp, 20
ROTULO724:
mov sp, bp
pop bp
FIM_graphics_drawtext:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:79:16 ===---
_graphics_calcfontsize:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO750
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:79:16 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 79
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO750:
; ARG: font TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: size TAM: 4 POS: BP+14 
; ARG: totalwidth TAM: 2 POS: BP+18 
; ARG: multiline TAM: 2 POS: BP+20 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:79:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:79:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:79:59 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:79:73 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:79:95 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO754
jmp ROTULO755
ROTULO754:
mov ax, 65535
jmp ROTULO756
ROTULO755:
xor ax, ax
ROTULO756:
cmp ax, 0
jne ROTULO752
jmp ROTULO753
ROTULO752:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 80
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO753:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:81:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:81:54 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:81:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:81:36 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+14+2]
pop es
mov di, [bp+14]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:81:30 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:81:9 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+26]
add sp, 16
ROTULO751:
mov sp, bp
pop bp
FIM_graphics_calcfontsize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:84:16 ===---
_graphics_clearscreen:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO757
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:84:16 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 84
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO757:
; ARG: color TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:84:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO761
jmp ROTULO762
ROTULO761:
mov ax, 65535
jmp ROTULO763
ROTULO762:
xor ax, ax
ROTULO763:
cmp ax, 0
jne ROTULO759
jmp ROTULO760
ROTULO759:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 85
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO760:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:86:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:86:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:86:9 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
push es
push di
es call far [di+22]
add sp, 6
ROTULO758:
mov sp, bp
pop bp
FIM_graphics_clearscreen:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:89:21 ===---
_graphics_getactive:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:90:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:90:16 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
jmp ROTULO764
ROTULO764:
FIM_graphics_getactive:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:93:21 ===---
_graphics_getwidth:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:94:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:94:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:94:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:94:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO768
jmp ROTULO769
ROTULO768:
mov ax, 65535
jmp ROTULO770
ROTULO769:
xor ax, ax
ROTULO770:
cmp ax, 0
jne ROTULO766
jmp ROTULO767
ROTULO766:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:94:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 94
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO767:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:95:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:95:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
jmp ROTULO765
ROTULO765:
FIM_graphics_getwidth:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:98:21 ===---
_graphics_getheight:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:99:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:99:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:99:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:99:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO774
jmp ROTULO775
ROTULO774:
mov ax, 65535
jmp ROTULO776
ROTULO775:
xor ax, ax
ROTULO776:
cmp ax, 0
jne ROTULO772
jmp ROTULO773
ROTULO772:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:99:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 99
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO773:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:100:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:100:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
jmp ROTULO771
ROTULO771:
FIM_graphics_getheight:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:103:21 ===---
_graphics_getcolors:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:104:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:104:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:104:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:104:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO780
jmp ROTULO781
ROTULO780:
mov ax, 65535
jmp ROTULO782
ROTULO781:
xor ax, ax
ROTULO782:
cmp ax, 0
jne ROTULO778
jmp ROTULO779
ROTULO778:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:104:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 104
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO779:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:105:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:105:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+4]
jmp ROTULO777
ROTULO777:
FIM_graphics_getcolors:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:108:16 ===---
_graphics_mode80x25x16:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:109:9 ===---
; ACAO GRAVACAO - Grava em variavel
cs mov word [_graphics_active], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:110:13 ===---
mov ax, 3
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:111:13 ===---
int 0x10
ROTULO783:
FIM_graphics_mode80x25x16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:114:16 ===---
_graphics_modemanual:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO784
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:114:16 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 114
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO784:
; ARG: newmode TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:114:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:115:9 ===---
; ACAO GRAVACAO - Grava em variavel
cs mov word [_graphics_active], 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:116:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:116:19 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+6+2]
cs mov [_graphics_video+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:117:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:117:19 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
cs mov [_graphics_video], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:118:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _font_initialize
ROTULO785:
mov sp, bp
pop bp
FIM_graphics_modemanual:
retf
; MODULO FIM: graphics
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:719:8 ===---
; MODULO: font
_font:
db 18
db 83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:720:16 ===---
jmp ROTULO786
_font_default:
times 34 db 0
ROTULO786:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:722:16 ===---
_font_initialize:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:723:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:723:29 ===---
; ACAO CHAMADA - Carrega binario embutido
jmp ROTULO788
ROTULO789:
db 7,0,3,0,3,0,1,0,88,0,97,0,131,0,140,0,149,0,158,0,167,0,176,0,185,0,194,0,203,0,212,0,221,0,230,0,239,0,248,0,1,1,10,1,19,1,28,1,37,1,46,1,55,1,64,1,73,1,82,1,91,1,100,1,109,1,118,1,127,1,136,1,145,1,154,1,163,1,172,1,181,1,190,1,199,1,208,1,9,83,105,115,116,101,109,97,0,34,72,117,109,98,101,114,116,111,32,67,111,115,116,97,32,100,111,115,32,83,97,110,116,111,115,32,74,117,110,105,111,114,0,5,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,6,0,48,72,148,164,164,72,48,3,0,32,96,160,32,32,32,32,5,0,112,136,8,16,32,64,248,5,0,248,8,48,8,8,8,240,5,0,136,136,136,248,8,8,8,5,0,248,128,240,8,8,8,240,5,0,112,136,128,240,136,136,112,5,0,248,8,8,16,32,64,128,5,0,112,136,136,112,136,136,112,5,0,112,136,136,120,8,136,112,7,0,56,68,130,254,130,130,130,6,0,248,132,132,248,132,132,248,6,0,56,68,128,128,128,68,56,7,0,248,132,130,130,130,132,248,6,0,252,128,128,240,128,128,252,6,0,252,128,128,240,128,128,128,6,0,120,132,128,156,132,132,120,6,0,132,132,132,252,132,132,132,1,0,128,128,128,128,128,128,128,5,0,8,8,8,8,8,136,112,6,0,132,132,136,240,136,132,132,5,0,128,128,128,128,128,128,248,7,0,130,198,170,146,130,130,130,7,0,130,194,162,146,138,134,130,7,0,124,130,130,130,130,130,124,6,0,248,132,132,248,128,128,128,8,0,124,130,130,130,138,132,123,7,0,248,132,132,248,132,132,130,6,0,120,132,128,120,4,132,120,7,0,254,16,16,16,16,16,16,7,0,130,130,130,130,130,130,124,7,0,130,130,130,130,68,40,16,7,0,130,130,130,146,170,198,130,7,0,130,68,40,16,40,68,130,7,0,130,68,40,16,32,64,128,7,0,254,4,8,16,32,64,254
ROTULO788:
push cs
pop es
mov di, ROTULO789
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:723:20 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_font_default+2]
pop es
cs mov di, [_font_default]
push es
push di
push cs
call _font_loadbinary
add sp, 8
ROTULO787:
FIM_font_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:726:16 ===---
_font_loadbinary:
push bp
mov bp, sp
sub sp, 8
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO790
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:726:16 ===---
mov ax, _font
mov [bp+-8], ax
mov ax, 726
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO790:
; ARG: dest TAM: 4 POS: BP+6 
; ARG: data TAM: 4 POS: BP+10 
; ARG: tmp TAM: 4 POS: BP--4 
; ARG: name TAM: 4 POS: BP--8 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:726:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:726:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:727:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:728:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:729:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:729:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:730:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:730:21 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+0]
es pop word [di+0+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:731:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:731:25 ===---
push cs
pop es
mov di, _font_calcsize
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+26]
es pop word [di+26+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:732:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:732:25 ===---
push cs
pop es
mov di, _font_drawtext
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+22]
es pop word [di+22+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:733:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:733:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+0]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+14], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:734:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:735:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:736:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:736:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+0]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+16], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:737:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:738:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:739:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:739:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+0]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+18], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:740:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:741:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:742:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:742:24 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+0]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+20], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:743:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:744:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:745:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:745:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:745:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:745:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+0]
pop bx
add ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:746:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:746:18 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+10+2]
mov word [bp+-8+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:747:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:747:21 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+4]
es pop word [di+4+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:748:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:749:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:750:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:750:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:750:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:750:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+0]
pop bx
add ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:751:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:751:18 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+10+2]
mov word [bp+-8+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:752:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:752:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+8]
es pop word [di+8+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:753:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:753:58 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:753:60 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 18
es mov ax, [di+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:753:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:753:41 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 16
es mov ax, [di+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:753:23 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 14
es mov ax, [di+14]
pop bx
add ax, bx
pop bx
add ax, bx
es mov [di+12], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO791:
mov sp, bp
pop bp
FIM_font_loadbinary:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:756:14 ===---
_font_findchar:
push bp
mov bp, sp
sub sp, 10
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO792
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:756:14 ===---
mov ax, _font
mov [bp+-8], ax
mov ax, 756
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO792:
; ARG: font TAM: 4 POS: BP+6 
; ARG: index TAM: 2 POS: BP+10 
; ARG: ptrindex TAM: 4 POS: BP--4 
; ARG: ptrchar TAM: 4 POS: BP--8 
; ARG: tmp TAM: 2 POS: BP--10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:756:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:756:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:757:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:758:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:759:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:760:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:760:22 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+2]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:761:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:761:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:761:50 ===---
mov ax, 12
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:761:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:761:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:761:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:761:45 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:761:22 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
es mov ax, [di+0]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:762:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:762:21 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+2]
mov word [bp+-8+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:763:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:763:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+0]
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:764:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:764:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:764:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:764:21 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
pop bx
add ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:765:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:765:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-8+2]
pop es
mov di, [bp+-8]
jmp ROTULO793
ROTULO793:
mov sp, bp
pop bp
FIM_font_findchar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:768:9 ===---
_font_drawtext:
push bp
mov bp, sp
sub sp, 38
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO794
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:768:9 ===---
mov ax, _font
mov [bp+-8], ax
mov ax, 768
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO794:
; ARG: font TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: x1 TAM: 2 POS: BP+14 
; ARG: y1 TAM: 2 POS: BP+16 
; ARG: x2 TAM: 2 POS: BP+18 
; ARG: y2 TAM: 2 POS: BP+20 
; ARG: color TAM: 2 POS: BP+22 
; ARG: multiline TAM: 2 POS: BP+24 
; ARG: ptrchar TAM: 4 POS: BP--4 
; ARG: len TAM: 2 POS: BP--6 
; ARG: index TAM: 2 POS: BP--8 
; ARG: width TAM: 2 POS: BP--10 
; ARG: maxbytes TAM: 2 POS: BP--12 
; ARG: subwidth TAM: 2 POS: BP--14 
; ARG: pos TAM: 2 POS: BP--16 
; ARG: extraoffset TAM: 2 POS: BP--18 
; ARG: i TAM: 2 POS: BP--20 
; ARG: j TAM: 2 POS: BP--22 
; ARG: k TAM: 2 POS: BP--24 
; ARG: x TAM: 2 POS: BP--26 
; ARG: ycalc TAM: 2 POS: BP--28 
; ARG: xcalc TAM: 2 POS: BP--30 
; ARG: tmp TAM: 2 POS: BP--32 
; ARG: useabove TAM: 2 POS: BP--34 
; ARG: usebelow TAM: 2 POS: BP--36 
; ARG: totalwidth TAM: 2 POS: BP--38 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:768:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:768:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:768:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:768:68 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:768:82 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:768:96 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:768:110 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:768:127 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:769:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:770:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:771:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:772:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:773:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:774:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:775:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:776:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:777:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:778:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:779:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:780:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:781:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:782:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:783:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:784:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:785:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:786:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:787:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:787:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:787:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:787:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
pop bx
sub ax, bx
mov [bp+-38], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:788:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:788:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:788:29 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
push cs
call _string_length
add sp, 4
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:789:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:790:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-26], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:791:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:791:24 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-16], 1
ROTULO796:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:791:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:791:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:791:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO799
jmp ROTULO800
ROTULO799:
mov ax, 65535
jmp ROTULO801
ROTULO800:
xor ax, ax
ROTULO801:
cmp ax, 0
jne ROTULO797
jmp ROTULO798
ROTULO797:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:792:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-34], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:793:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-36], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:794:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:795:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:795:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:795:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:795:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:795:25 ===---
mov ax, 48
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO807
jmp ROTULO808
ROTULO807:
mov ax, 65535
jmp ROTULO809
ROTULO808:
xor ax, ax
ROTULO809:
cmp ax, 0
je ROTULO805
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:795:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:795:40 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:795:48 ===---
mov ax, 57
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO810
jmp ROTULO811
ROTULO810:
mov ax, 65535
jmp ROTULO812
ROTULO811:
xor ax, ax
ROTULO812:
cmp ax, 0
je ROTULO805
ROTULO804:
mov ax, 65535
jmp ROTULO806
ROTULO805:
xor ax, ax
ROTULO806:
cmp ax, 0
jne ROTULO802
jmp ROTULO803
ROTULO802:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:795:59 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:795:79 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:795:81 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:795:72 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:795:74 ===---
mov ax, 48
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:795:67 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
pop bx
sub ax, bx
pop bx
add ax, bx
mov [bp+-8], ax
ROTULO803:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:796:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:796:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:796:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:796:17 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:796:25 ===---
mov ax, 65
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO818
jmp ROTULO819
ROTULO818:
mov ax, 65535
jmp ROTULO820
ROTULO819:
xor ax, ax
ROTULO820:
cmp ax, 0
je ROTULO816
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:796:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:796:40 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:796:48 ===---
mov ax, 90
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO821
jmp ROTULO822
ROTULO821:
mov ax, 65535
jmp ROTULO823
ROTULO822:
xor ax, ax
ROTULO823:
cmp ax, 0
je ROTULO816
ROTULO815:
mov ax, 65535
jmp ROTULO817
ROTULO816:
xor ax, ax
ROTULO817:
cmp ax, 0
jne ROTULO813
jmp ROTULO814
ROTULO813:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:796:59 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:796:79 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:796:81 ===---
mov ax, 12
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:796:72 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:796:74 ===---
mov ax, 65
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:796:67 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
pop bx
sub ax, bx
pop bx
add ax, bx
mov [bp+-8], ax
ROTULO814:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:797:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:797:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:797:16 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:797:24 ===---
mov ax, 32
mov bx, ax
pop ax
cmp ax, bx
je ROTULO826
jmp ROTULO827
ROTULO826:
mov ax, 65535
jmp ROTULO828
ROTULO827:
xor ax, ax
ROTULO828:
cmp ax, 0
jne ROTULO824
jmp ROTULO825
ROTULO824:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:797:34 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 1
ROTULO825:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:798:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:798:23 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:798:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:798:32 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _font_findchar
add sp, 6
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:799:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:799:21 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:800:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:801:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:801:27 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
mov [bp+-18], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:802:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:803:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:803:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:803:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:803:35 ===---
mov ax, 8
mov cx, ax
pop ax
shr ax, cl
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:804:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:804:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:804:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:804:28 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO831
jmp ROTULO832
ROTULO831:
mov ax, 65535
jmp ROTULO833
ROTULO832:
xor ax, ax
ROTULO833:
cmp ax, 0
jne ROTULO829
jmp ROTULO830
ROTULO829:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:804:35 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 1
ROTULO830:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:805:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:805:31 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-20], 1
ROTULO834:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:805:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:805:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:805:26 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 14
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+14]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO837
jmp ROTULO838
ROTULO837:
mov ax, 65535
jmp ROTULO839
ROTULO838:
xor ax, ax
ROTULO839:
cmp ax, 0
jne ROTULO835
jmp ROTULO836
ROTULO835:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:806:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:806:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:806:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:806:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:806:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:806:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-38]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO842
jmp ROTULO843
ROTULO842:
mov ax, 65535
jmp ROTULO844
ROTULO843:
xor ax, ax
ROTULO844:
cmp ax, 0
jne ROTULO840
jmp ROTULO841
ROTULO840:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:807:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:807:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+24]
cmp ax, 0
jne ROTULO845
jmp ROTULO846
ROTULO845:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:808:25 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-26], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:809:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:809:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:809:35 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:809:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
add ax, bx
mov [bp+16], ax
jmp ROTULO847
ROTULO846:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:811:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:811:30 ===---
xor ax, ax
jmp ROTULO795
ROTULO847:
ROTULO841:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:814:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:814:30 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-22], 1
ROTULO848:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:814:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:814:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:814:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO851
jmp ROTULO852
ROTULO851:
mov ax, 65535
jmp ROTULO853
ROTULO852:
xor ax, ax
ROTULO853:
cmp ax, 0
jne ROTULO849
jmp ROTULO850
ROTULO849:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:815:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:815:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:815:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:815:28 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO856
jmp ROTULO857
ROTULO856:
mov ax, 65535
jmp ROTULO858
ROTULO857:
xor ax, ax
ROTULO858:
cmp ax, 0
jne ROTULO854
jmp ROTULO855
ROTULO854:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:816:25 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 8
jmp ROTULO859
ROTULO855:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:818:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:818:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:818:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:818:46 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:819:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:819:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:819:28 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:819:37 ===---
mov ax, 8
mov bx, ax
pop ax
cmp ax, bx
je ROTULO865
jmp ROTULO866
ROTULO865:
mov ax, 65535
jmp ROTULO867
ROTULO866:
xor ax, ax
ROTULO867:
cmp ax, 0
jne ROTULO863
jmp ROTULO864
ROTULO863:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:819:44 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 8
ROTULO864:
ROTULO859:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:821:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:821:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
xor ax, ax
es mov al, [di+0]
mov [bp+-32], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:822:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:822:34 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-24], 1
ROTULO868:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:822:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:822:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:822:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO871
jmp ROTULO872
ROTULO871:
mov ax, 65535
jmp ROTULO873
ROTULO872:
xor ax, ax
ROTULO873:
cmp ax, 0
jne ROTULO869
jmp ROTULO870
ROTULO869:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:823:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:823:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:823:28 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-32]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:823:36 ===---
mov ax, 128
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO874
jmp ROTULO875
ROTULO874:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:824:29 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:824:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:824:50 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:824:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:824:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:824:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:824:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:824:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
add ax, bx
pop bx
add ax, bx
pop bx
sub ax, bx
mov [bp+-30], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:825:29 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:825:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:825:65 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:825:59 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:825:61 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:825:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:825:42 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 16
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:825:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
add ax, bx
pop bx
add ax, bx
pop bx
sub ax, bx
mov [bp+-28], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:826:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:826:46 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:826:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:826:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-30]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:826:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO884
jmp ROTULO885
ROTULO884:
mov ax, 65535
jmp ROTULO886
ROTULO885:
xor ax, ax
ROTULO886:
cmp ax, 0
je ROTULO882
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:826:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:826:55 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:826:64 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO887
jmp ROTULO888
ROTULO887:
mov ax, 65535
jmp ROTULO889
ROTULO888:
xor ax, ax
ROTULO889:
cmp ax, 0
je ROTULO882
ROTULO881:
mov ax, 65535
jmp ROTULO883
ROTULO882:
xor ax, ax
ROTULO883:
cmp ax, 0
jne ROTULO879
jmp ROTULO880
ROTULO879:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:827:33 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:827:66 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:827:59 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:827:52 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-30]
push ax
push cs
call _graphics_drawpixel
add sp, 6
ROTULO880:
ROTULO875:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:830:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:830:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:830:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-32]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:830:39 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-32], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:822:34 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-24]
jmp ROTULO868
ROTULO870:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:832:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:814:30 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-22]
jmp ROTULO848
ROTULO850:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:805:31 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-20]
jmp ROTULO834
ROTULO836:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:835:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:835:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:835:29 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 20
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:835:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:835:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:835:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+-26], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:836:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:791:24 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-16]
jmp ROTULO796
ROTULO798:
ROTULO795:
mov sp, bp
pop bp
FIM_font_drawtext:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:840:9 ===---
_font_calcsize:
push bp
mov bp, sp
sub sp, 38
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO890
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:840:9 ===---
mov ax, _font
mov [bp+-8], ax
mov ax, 840
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO890:
; ARG: font TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: output TAM: 4 POS: BP+14 
; ARG: totalwidth TAM: 2 POS: BP+18 
; ARG: multiline TAM: 2 POS: BP+20 
; ARG: ptrchar TAM: 4 POS: BP--4 
; ARG: len TAM: 2 POS: BP--6 
; ARG: index TAM: 2 POS: BP--8 
; ARG: width TAM: 2 POS: BP--10 
; ARG: maxbytes TAM: 2 POS: BP--12 
; ARG: subwidth TAM: 2 POS: BP--14 
; ARG: pos TAM: 2 POS: BP--16 
; ARG: extraoffset TAM: 2 POS: BP--18 
; ARG: i TAM: 2 POS: BP--20 
; ARG: j TAM: 2 POS: BP--22 
; ARG: k TAM: 2 POS: BP--24 
; ARG: x TAM: 2 POS: BP--26 
; ARG: ycalc TAM: 2 POS: BP--28 
; ARG: xcalc TAM: 2 POS: BP--30 
; ARG: tmp TAM: 2 POS: BP--32 
; ARG: useabove TAM: 2 POS: BP--34 
; ARG: usebelow TAM: 2 POS: BP--36 
; ARG: newline TAM: 2 POS: BP--38 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:840:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:840:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:840:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:840:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:840:92 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:841:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:842:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:843:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:844:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:845:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:846:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:847:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:848:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:849:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:850:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:851:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:852:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:853:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:854:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:855:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:856:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:857:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:858:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:859:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-38], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:860:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:860:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:860:29 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
push cs
call _string_length
add sp, 4
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:861:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:862:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-26], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:863:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:863:25 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+12]
push word [bp+14+2]
pop es
mov di, [bp+14]
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:864:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:864:24 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-16], 1
ROTULO892:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:864:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:864:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:864:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO895
jmp ROTULO896
ROTULO895:
mov ax, 65535
jmp ROTULO897
ROTULO896:
xor ax, ax
ROTULO897:
cmp ax, 0
jne ROTULO893
jmp ROTULO894
ROTULO893:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:865:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:866:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:866:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:866:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:866:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:866:25 ===---
mov ax, 48
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO903
jmp ROTULO904
ROTULO903:
mov ax, 65535
jmp ROTULO905
ROTULO904:
xor ax, ax
ROTULO905:
cmp ax, 0
je ROTULO901
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:866:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:866:40 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:866:48 ===---
mov ax, 57
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO906
jmp ROTULO907
ROTULO906:
mov ax, 65535
jmp ROTULO908
ROTULO907:
xor ax, ax
ROTULO908:
cmp ax, 0
je ROTULO901
ROTULO900:
mov ax, 65535
jmp ROTULO902
ROTULO901:
xor ax, ax
ROTULO902:
cmp ax, 0
jne ROTULO898
jmp ROTULO899
ROTULO898:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:866:59 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:866:79 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:866:81 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:866:72 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:866:74 ===---
mov ax, 48
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:866:67 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
pop bx
sub ax, bx
pop bx
add ax, bx
mov [bp+-8], ax
ROTULO899:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:867:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:867:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:867:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:867:17 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:867:25 ===---
mov ax, 65
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO914
jmp ROTULO915
ROTULO914:
mov ax, 65535
jmp ROTULO916
ROTULO915:
xor ax, ax
ROTULO916:
cmp ax, 0
je ROTULO912
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:867:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:867:40 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:867:48 ===---
mov ax, 90
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO917
jmp ROTULO918
ROTULO917:
mov ax, 65535
jmp ROTULO919
ROTULO918:
xor ax, ax
ROTULO919:
cmp ax, 0
je ROTULO912
ROTULO911:
mov ax, 65535
jmp ROTULO913
ROTULO912:
xor ax, ax
ROTULO913:
cmp ax, 0
jne ROTULO909
jmp ROTULO910
ROTULO909:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:867:59 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:867:79 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:867:81 ===---
mov ax, 12
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:867:72 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:867:74 ===---
mov ax, 65
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:867:67 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
pop bx
sub ax, bx
pop bx
add ax, bx
mov [bp+-8], ax
ROTULO910:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:868:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:868:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:868:16 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:868:24 ===---
mov ax, 32
mov bx, ax
pop ax
cmp ax, bx
je ROTULO922
jmp ROTULO923
ROTULO922:
mov ax, 65535
jmp ROTULO924
ROTULO923:
xor ax, ax
ROTULO924:
cmp ax, 0
jne ROTULO920
jmp ROTULO921
ROTULO920:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:868:34 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 1
ROTULO921:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:869:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:869:23 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:869:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:869:32 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _font_findchar
add sp, 6
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:870:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:870:21 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:871:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:871:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:871:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:871:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:871:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:871:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO927
jmp ROTULO928
ROTULO927:
mov ax, 65535
jmp ROTULO929
ROTULO928:
xor ax, ax
ROTULO929:
cmp ax, 0
jne ROTULO925
jmp ROTULO926
ROTULO925:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:872:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:872:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
cmp ax, 0
jne ROTULO930
jmp ROTULO931
ROTULO930:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:873:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-26], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:874:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-38], 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:875:21 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:875:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push word [bp+14+2]
pop es
mov di, [bp+14]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:876:21 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:876:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:876:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:876:37 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
push word [bp+14+2]
pop es
mov di, [bp+14]
es mov ax, [di+2]
pop bx
add ax, bx
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
jmp ROTULO932
ROTULO931:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:878:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:878:26 ===---
xor ax, ax
jmp ROTULO891
ROTULO932:
ROTULO926:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:881:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:881:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:881:29 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 20
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:881:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:881:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:881:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+-26], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:882:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:882:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:882:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-38]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:882:27 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO935
jmp ROTULO936
ROTULO935:
mov ax, 65535
jmp ROTULO937
ROTULO936:
xor ax, ax
ROTULO937:
cmp ax, 0
jne ROTULO933
jmp ROTULO934
ROTULO933:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:882:34 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:882:49 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push word [bp+14+2]
pop es
mov di, [bp+14]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO934:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:883:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:864:24 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-16]
jmp ROTULO892
ROTULO894:
ROTULO891:
mov sp, bp
pop bp
FIM_font_calcsize:
retf
; MODULO FIM: font
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:317:8 ===---
; MODULO: application
_application:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:318:9 ===---
jmp ROTULO938
_application_currenttheme:
times 14 db 0
ROTULO938:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:320:16 ===---
_application_initialize:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:321:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:321:40 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_black
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:322:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:322:34 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_white
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:323:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:323:42 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_white
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:324:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:324:36 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_black
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:325:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:325:41 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_white
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:326:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:326:33 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _systemcolors_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:327:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _screen_initialize
ROTULO939:
FIM_application_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:330:16 ===---
_application_run:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO940
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:330:16 ===---
mov ax, _application
mov [bp+-8], ax
mov ax, 330
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO940:
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:330:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:331:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:331:24 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+20], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:332:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:332:43 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:332:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
push es
push di
push cs
call _control_add
add sp, 8
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:333:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:333:24 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO941:
mov sp, bp
pop bp
FIM_application_run:
retf
; MODULO FIM: application
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:288:8 ===---
; MODULO: systemcolors
_systemcolors:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:289:17 ===---
jmp ROTULO942
_systemcolors_current:
times 4 db 0
ROTULO942:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:291:21 ===---
_systemcolors_backgroundcolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:292:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:292:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+0]
jmp ROTULO943
ROTULO943:
FIM_systemcolors_backgroundcolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:295:21 ===---
_systemcolors_textcolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:296:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:296:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+2]
jmp ROTULO944
ROTULO944:
FIM_systemcolors_textcolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:299:21 ===---
_systemcolors_windowbordercolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:300:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:300:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+4]
jmp ROTULO945
ROTULO945:
FIM_systemcolors_windowbordercolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:303:21 ===---
_systemcolors_windowcolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:304:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:304:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+6]
jmp ROTULO946
ROTULO946:
FIM_systemcolors_windowcolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:307:21 ===---
_systemcolors_windowtitlecolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:308:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:308:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 8
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+8]
jmp ROTULO947
ROTULO947:
FIM_systemcolors_windowtitlecolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:311:16 ===---
_systemcolors_initialize:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO948
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:311:16 ===---
mov ax, _systemcolors
mov [bp+-8], ax
mov ax, 311
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO948:
; ARG: newtheme TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:311:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:312:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:312:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
cs mov [_systemcolors_current], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:313:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:313:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+6+2]
cs mov [_systemcolors_current+2], ax
ROTULO949:
mov sp, bp
pop bp
FIM_systemcolors_initialize:
retf
; MODULO FIM: systemcolors
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:216:8 ===---
; MODULO: screen
_screen:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:217:16 ===---
jmp ROTULO950
_screen_screencontrol:
times 86 db 0
ROTULO950:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:219:16 ===---
_screen_initialize:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:220:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:220:28 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
push es
push di
push cs
call _control_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:221:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:221:29 ===---
xor ax, ax
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:222:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:222:30 ===---
xor ax, ax
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:223:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:223:31 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _graphics_getwidth
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:224:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:224:32 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _graphics_getheight
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:225:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:225:33 ===---
mov ax, 1
es mov [di+20], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:226:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:226:38 ===---
push cs
pop es
mov di, _screen_controlpaint
push es
push di
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
es pop word [di+28]
es pop word [di+28+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO951:
FIM_screen_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:229:9 ===---
_screen_controlpaint:
push bp
mov bp, sp
sub sp, 8
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO952
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:229:9 ===---
mov ax, _screen
mov [bp+-8], ax
mov ax, 229
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO952:
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: i TAM: 2 POS: BP--2 
; ARG: qtd TAM: 2 POS: BP--4 
; ARG: child TAM: 4 POS: BP--8 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:229:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:231:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:232:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:233:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:230:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:230:30 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_backgroundcolor
push ax
push cs
call _graphics_clearscreen
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:234:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:234:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:234:29 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_count
add sp, 4
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:235:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:235:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
cmp ax, 0
jne ROTULO954
jmp ROTULO955
ROTULO954:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:236:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:236:26 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
ROTULO956:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:236:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:236:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:236:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO959
jmp ROTULO960
ROTULO959:
mov ax, 65535
jmp ROTULO961
ROTULO960:
xor ax, ax
ROTULO961:
cmp ax, 0
jne ROTULO957
jmp ROTULO958
ROTULO957:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:237:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:237:25 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:237:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:237:38 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_item
add sp, 6
push es
pop word [bp+-8+2]
mov [bp+-8], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:238:17 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:238:32 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _control_redraw
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:236:26 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
jmp ROTULO956
ROTULO958:
ROTULO955:
ROTULO953:
mov sp, bp
pop bp
FIM_screen_controlpaint:
retf
; MODULO FIM: screen
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:55:8 ===---
; MODULO: control
_control:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:56:16 ===---
_control_initialize:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO962
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:56:16 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 56
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO962:
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:56:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:57:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:57:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_font_default+2]
pop es
cs mov di, [_font_default]
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+24]
es pop word [di+24+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:58:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:58:20 ===---
xor ax, ax
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:59:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:59:21 ===---
xor ax, ax
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:60:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:60:22 ===---
mov ax, 10
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:61:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:61:23 ===---
mov ax, 10
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:62:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:62:26 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_black
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+14], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:63:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:63:26 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_white
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+16], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:64:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:64:28 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_black
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+18], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:65:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:65:24 ===---
xor ax, ax
es mov [di+20], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:66:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:66:26 ===---
xor ax, ax
es mov [di+22], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:67:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:67:29 ===---
push cs
pop es
mov di, _control_genericcontrolpaint
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+28]
es pop word [di+28+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:68:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:68:36 ===---
push cs
pop es
mov di, _control_genericcontrolfocuschanged
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+40]
es pop word [di+40+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:69:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:69:42 ===---
push cs
pop es
mov di, _control_genericcontrolkeyboardinteracion
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+36]
es pop word [di+36+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:70:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:70:40 ===---
push cs
pop es
mov di, _control_genericcontrolmouseinteraction
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+32]
es pop word [di+32+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:71:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:71:24 ===---
push cs
pop es
mov di, _control_genericonclick
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+44]
es pop word [di+44+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:72:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:72:24 ===---
push cs
pop es
mov di, _control_genericonfocus
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+56]
es pop word [di+56+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:73:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:73:27 ===---
push cs
pop es
mov di, _control_genericonkeypress
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+48]
es pop word [di+48+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:74:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:74:29 ===---
push cs
pop es
mov di, _control_genericonkeyrelease
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+52]
es pop word [di+52+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:75:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:75:28 ===---
push cs
pop es
mov di, _control_genericonlostfocus
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+60]
es pop word [di+60+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:76:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:76:26 ===---
xor ax, ax
es mov [di+64], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:77:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:77:25 ===---
xor ax, ax
es mov [di+70], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:78:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:78:31 ===---
xor ax, ax
es mov [di+76], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:79:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:79:21 ===---
push cs
pop es
mov di, ROTULO965
jmp ROTULO964
ROTULO965:
db 0
times 1 db 0
ROTULO964:
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+10]
es pop word [di+10+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:80:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:80:22 ===---
xor ax, ax
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO963:
mov sp, bp
pop bp
FIM_control_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:83:9 ===---
_control_genericcontrolpaint:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO966
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:83:9 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 83
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO966:
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:83:29 ===---
ROTULO967:
mov sp, bp
pop bp
FIM_control_genericcontrolpaint:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:86:9 ===---
_control_genericcontrolmouseinteraction:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO968
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:86:9 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 86
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO968:
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:86:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:86:57 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:87:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:87:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:87:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:87:31 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
mov bx, ax
pop ax
or ax, bx
cmp ax, 0
jne ROTULO970
jmp ROTULO971
ROTULO970:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:88:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:88:33 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:88:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+44]
add sp, 8
ROTULO971:
ROTULO969:
mov sp, bp
pop bp
FIM_control_genericcontrolmouseinteraction:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:92:9 ===---
_control_genericcontrolkeyboardinteracion:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO975
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:92:9 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 92
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO975:
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:92:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:92:59 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:93:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:93:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov ax, [di+6]
cmp ax, 0
jne ROTULO977
jmp ROTULO978
ROTULO977:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:94:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:94:36 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:94:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+48]
add sp, 8
jmp ROTULO979
ROTULO978:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:96:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:96:38 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:96:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+52]
add sp, 8
ROTULO979:
ROTULO976:
mov sp, bp
pop bp
FIM_control_genericcontrolkeyboardinteracion:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:100:9 ===---
_control_genericcontrolfocuschanged:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO980
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:100:9 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 100
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO980:
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: focus TAM: 2 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:100:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:100:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:101:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:101:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
cmp ax, 0
jne ROTULO982
jmp ROTULO983
ROTULO982:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:102:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:102:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+56]
add sp, 4
jmp ROTULO984
ROTULO983:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:104:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:104:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+60]
add sp, 4
ROTULO984:
ROTULO981:
mov sp, bp
pop bp
FIM_control_genericcontrolfocuschanged:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:108:9 ===---
_control_genericonclick:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO985
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:108:9 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 108
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO985:
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:108:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:108:41 ===---
ROTULO986:
mov sp, bp
pop bp
FIM_control_genericonclick:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:111:9 ===---
_control_genericonkeypress:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO987
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:111:9 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 111
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO987:
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:111:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:111:44 ===---
ROTULO988:
mov sp, bp
pop bp
FIM_control_genericonkeypress:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:114:9 ===---
_control_genericonkeyrelease:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO989
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:114:9 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 114
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO989:
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:114:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:114:46 ===---
ROTULO990:
mov sp, bp
pop bp
FIM_control_genericonkeyrelease:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:117:9 ===---
_control_genericonfocus:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO991
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:117:9 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 117
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO991:
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:117:24 ===---
ROTULO992:
mov sp, bp
pop bp
FIM_control_genericonfocus:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:120:9 ===---
_control_genericonlostfocus:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO993
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:120:9 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 120
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO993:
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:120:28 ===---
ROTULO994:
mov sp, bp
pop bp
FIM_control_genericonlostfocus:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:123:16 ===---
_control_setparent:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO995
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:123:16 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 123
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO995:
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: parent TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:123:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:123:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:124:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:124:26 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+64], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:125:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:125:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+66]
es pop word [di+66+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO996:
mov sp, bp
pop bp
FIM_control_setparent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:128:21 ===---
_control_getparent:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO997
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:128:21 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 128
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO997:
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:128:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:129:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:129:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:129:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 64
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+64]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:129:30 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1001
jmp ROTULO1002
ROTULO1001:
mov ax, 65535
jmp ROTULO1003
ROTULO1002:
xor ax, ax
ROTULO1003:
cmp ax, 0
jne ROTULO999
jmp ROTULO1000
ROTULO999:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:129:43 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 129
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
ROTULO1000:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:130:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:130:16 ===---
; ACAO LEITURA - Le ponteiro
jmp ROTULO998
ROTULO998:
mov sp, bp
pop bp
FIM_control_getparent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:133:16 ===---
_control_add:
push bp
mov bp, sp
sub sp, 4
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO1004
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:133:16 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 133
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO1004:
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: child TAM: 4 POS: BP+10 
; ARG: tmp TAM: 4 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:133:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:133:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:134:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:135:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:135:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 70
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+70]
cmp ax, 0
jne ROTULO1006
jmp ROTULO1007
ROTULO1006:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:136:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:136:21 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+74]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:137:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:137:21 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
es mov ax, [di+72]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:138:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:138:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:139:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:139:22 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-4+2]
mov word [bp+6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:140:13 ===---
ROTULO1008:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:140:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+76]
cmp ax, 0
jne ROTULO1009
jmp ROTULO1010
ROTULO1009:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:141:18 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:141:25 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+80]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:142:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:142:25 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
es mov ax, [di+78]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:143:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:143:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:144:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:144:26 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-4+2]
mov word [bp+6+2], ax
jmp ROTULO1008
ROTULO1010:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:146:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:146:35 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+76], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:147:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:147:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+10+2]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:148:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:148:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:149:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:149:32 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+78]
es pop word [di+78+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
jmp ROTULO1011
ROTULO1007:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:151:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:151:29 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+70], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:152:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:152:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+10+2]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:153:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:153:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:154:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:154:26 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+72]
es pop word [di+72+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO1011:
ROTULO1005:
mov sp, bp
pop bp
FIM_control_add:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:158:21 ===---
_control_count:
push bp
mov bp, sp
sub sp, 6
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO1012
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:158:21 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 158
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO1012:
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: ret TAM: 2 POS: BP--2 
; ARG: ptr TAM: 4 POS: BP--6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:158:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:159:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:160:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:161:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:162:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:162:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 70
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+70]
cmp ax, 0
jne ROTULO1014
jmp ROTULO1015
ROTULO1014:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:163:13 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:164:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:164:21 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+74]
mov word [bp+-6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:165:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:165:21 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
es mov ax, [di+72]
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:166:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:166:22 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-6+2]
mov word [bp+6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:167:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:167:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:168:13 ===---
ROTULO1016:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:168:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+76]
cmp ax, 0
jne ROTULO1017
jmp ROTULO1018
ROTULO1017:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:169:17 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:170:18 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:170:25 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+80]
mov word [bp+-6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:171:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:171:25 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
es mov ax, [di+78]
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:172:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:172:26 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-6+2]
mov word [bp+6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:173:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:173:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov [bp+6], ax
jmp ROTULO1016
ROTULO1018:
ROTULO1015:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:176:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:176:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO1013
ROTULO1013:
mov sp, bp
pop bp
FIM_control_count:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:179:21 ===---
_control_item:
push bp
mov bp, sp
sub sp, 6
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO1019
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:179:21 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 179
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO1019:
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: i TAM: 2 POS: BP--2 
; ARG: ptr TAM: 4 POS: BP--6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:179:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:179:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:180:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:181:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:182:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:183:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:183:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 70
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+70]
cmp ax, 0
jne ROTULO1021
jmp ROTULO1022
ROTULO1021:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:184:13 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:185:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:185:21 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+74]
mov word [bp+-6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:186:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:186:21 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
es mov ax, [di+72]
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:187:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:187:22 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-6+2]
mov word [bp+6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:188:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:188:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:189:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:189:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:189:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:189:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1025
jmp ROTULO1026
ROTULO1025:
mov ax, 65535
jmp ROTULO1027
ROTULO1026:
xor ax, ax
ROTULO1027:
cmp ax, 0
jne ROTULO1023
jmp ROTULO1024
ROTULO1023:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:189:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:189:42 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-6+2]
pop es
mov di, [bp+-6]
jmp ROTULO1020
ROTULO1024:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:190:13 ===---
ROTULO1028:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:190:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+76]
cmp ax, 0
jne ROTULO1029
jmp ROTULO1030
ROTULO1029:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:191:17 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:192:18 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:192:25 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+80]
mov word [bp+-6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:193:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:193:25 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
es mov ax, [di+78]
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:194:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:194:26 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-6+2]
mov word [bp+6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:195:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:195:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:196:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:196:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:196:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:196:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1033
jmp ROTULO1034
ROTULO1033:
mov ax, 65535
jmp ROTULO1035
ROTULO1034:
xor ax, ax
ROTULO1035:
cmp ax, 0
jne ROTULO1031
jmp ROTULO1032
ROTULO1031:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:196:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:196:46 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-6+2]
pop es
mov di, [bp+-6]
jmp ROTULO1020
ROTULO1032:
jmp ROTULO1028
ROTULO1030:
ROTULO1022:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:199:15 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 199
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
ROTULO1020:
mov sp, bp
pop bp
FIM_control_item:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:202:16 ===---
_control_redraw:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO1036
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:202:16 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 202
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO1036:
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:202:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:203:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:203:9 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+28]
add sp, 4
ROTULO1037:
mov sp, bp
pop bp
FIM_control_redraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:206:16 ===---
_control_settext:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO1038
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:206:16 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 206
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO1038:
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: txt TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:206:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:206:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:207:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:207:21 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+10]
es pop word [di+10+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO1039:
mov sp, bp
pop bp
FIM_control_settext:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:210:21 ===---
_control_gettext:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO1040
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:210:21 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 210
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO1040:
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:210:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:211:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:211:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 10
push word [bp+6+2]
pop es
mov di, [bp+6]
es push word [di+10+2]
es push word [di+10]
pop di
pop es
jmp ROTULO1041
ROTULO1041:
mov sp, bp
pop bp
FIM_control_gettext:
retf
; MODULO FIM: control
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:244:8 ===---
; MODULO: form
_form:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:245:16 ===---
_form_initialize:
push bp
mov bp, sp
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO1042
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:245:16 ===---
mov ax, _form
mov [bp+-8], ax
mov ax, 245
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO1042:
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:245:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:246:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:246:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:247:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:247:28 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+18], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:248:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:248:26 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowcolor
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+16], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:249:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:249:26 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowtitlecolor
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+14], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:250:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:250:29 ===---
push cs
pop es
mov di, _form_controlpaint
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+28]
es pop word [di+28+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO1043:
mov sp, bp
pop bp
FIM_form_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:253:9 ===---
_form_controlpaint:
push bp
mov bp, sp
sub sp, 14
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO1044
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:253:9 ===---
mov ax, _form
mov [bp+-8], ax
mov ax, 253
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO1044:
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: fnt TAM: 4 POS: BP--4 
; ARG: size TAM: 4 POS: BP--8 
; ARG: lefttext TAM: 2 POS: BP--10 
; ARG: righttext TAM: 2 POS: BP--12 
; ARG: i TAM: 2 POS: BP--14 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:253:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:254:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:255:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:256:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:257:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:258:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:259:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 4
push ss
pop es
mov di, sp
push es
pop word [bp+-8+2]
mov [bp+-8], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:260:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:260:17 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+26]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:261:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:261:17 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
es mov ax, [di+24]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:262:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:262:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:262:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:262:26 ===---
mov ax, 30
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO1048
jmp ROTULO1049
ROTULO1048:
mov ax, 65535
jmp ROTULO1050
ROTULO1049:
xor ax, ax
ROTULO1050:
cmp ax, 0
jne ROTULO1046
jmp ROTULO1047
ROTULO1046:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:262:34 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:262:48 ===---
mov ax, 30
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO1047:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:25 ===---
mov ax, 50
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO1053
jmp ROTULO1054
ROTULO1053:
mov ax, 65535
jmp ROTULO1055
ROTULO1054:
xor ax, ax
ROTULO1055:
cmp ax, 0
jne ROTULO1051
jmp ROTULO1052
ROTULO1051:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:33 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:46 ===---
mov ax, 50
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO1052:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:264:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:264:119 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 16
es mov ax, [di+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:264:101 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 18
es mov ax, [di+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:264:86 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:264:88 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:264:77 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:264:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:264:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:264:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:264:43 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:264:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:106 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 18
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:93 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:94 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:91 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:92 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:83 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
pop bx
add ax, bx
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:71 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:61 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:46 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:47 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:38 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
pop bx
add ax, bx
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:265:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:266:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:266:70 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:266:64 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:266:66 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:266:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+6]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:266:47 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:266:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 10
push word [bp+6+2]
pop es
mov di, [bp+6]
es push word [di+10+2]
es push word [di+10]
pop di
pop es
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:266:31 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push cs
call _graphics_calcfontsize
add sp, 16
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:267:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:267:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:267:59 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:267:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:267:47 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:267:34 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+6]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:267:63 ===---
mov ax, 1
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:267:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:268:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:268:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:268:73 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:268:59 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:268:61 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:268:48 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+6]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:268:77 ===---
mov ax, 1
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:268:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:268:33 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:268:21 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
pop bx
sub ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:115 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:99 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 14
es mov ax, [di+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:86 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:87 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:84 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:85 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:76 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
pop bx
add ax, bx
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:65 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:62 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 10
es push word [di+10+2]
es push word [di+10]
pop di
pop es
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:269:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push cs
call _graphics_drawtext
add sp, 20
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:57 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:57 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:28 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
pop bx
add ax, bx
mov [bp+-14], ax
ROTULO1056:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:57 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:57 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:57 ===---
mov ax, 3
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:44 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:33 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
pop bx
add ax, bx
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO1059
jmp ROTULO1060
ROTULO1059:
mov ax, 65535
jmp ROTULO1061
ROTULO1060:
xor ax, ax
ROTULO1061:
cmp ax, 0
jne ROTULO1057
jmp ROTULO1058
ROTULO1057:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:271:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:271:67 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 18
es mov ax, [di+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:271:64 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:271:59 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:271:61 ===---
mov ax, 3
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:271:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:271:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:271:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:271:43 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:271:31 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:272:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:272:67 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 18
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:272:64 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:272:59 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:272:61 ===---
mov ax, 5
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:272:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:272:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:272:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:272:43 ===---
mov ax, 12
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:272:31 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:273:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:273:80 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 18
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:273:77 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:273:72 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:273:74 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:273:59 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:273:61 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:273:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:273:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:273:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:273:43 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:273:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:274:13 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:57 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-14]
jmp ROTULO1056
ROTULO1058:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:121 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 16
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:103 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 18
es mov ax, [di+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:99 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:100 ===---
mov ax, 3
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:86 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:88 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:77 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
pop bx
add ax, bx
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:71 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:73 ===---
mov ax, 10
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:61 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:56 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:58 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:47 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:44 ===---
mov ax, 5
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawrectangle
add sp, 12
ROTULO1045:
mov sp, bp
pop bp
FIM_form_controlpaint:
retf
; MODULO FIM: form
REALOC_TABLE:
dw 3
dw _colors_palette
dw 4
dw 0
dw 3
dw _program_testestring
dw 4
dw 0
dw 3
dw _program_mainform
dw 4
dw 0
dw 3
dw _vga_video
dw 4
dw 0
dw 3
dw _genericvideo_palette
dw 4
dw 0
dw 3
dw _graphics_video
dw 4
dw 0
dw 3
dw _font_default
dw 4
dw 0
dw 3
dw _application_currenttheme
dw 4
dw 0
dw 3
dw _screen_screencontrol
dw 4
dw 0
dw 0
dw 0
dw 0
dw 0
END:
