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
; ARG: c TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:142:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:143:13 ===---
mov dl, [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:144:13 ===---
mov ah, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:145:13 ===---
int 0x21
ROTULO93:
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
jmp ROTULO94
_colors_palette:
times 52 db 0
ROTULO94:
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
ROTULO95:
FIM_colors_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:69:16 ===---
_colors_register:
push bp
mov bp, sp
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
ROTULO96:
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
jmp ROTULO97
ROTULO97:
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
jmp ROTULO98
ROTULO98:
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
jmp ROTULO99
ROTULO99:
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
jmp ROTULO100
ROTULO100:
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
jmp ROTULO101
ROTULO101:
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
jmp ROTULO102
ROTULO102:
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
jmp ROTULO103
ROTULO103:
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
jmp ROTULO104
ROTULO104:
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
jmp ROTULO105
ROTULO105:
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
jmp ROTULO106
ROTULO106:
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
jmp ROTULO107
ROTULO107:
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
jmp ROTULO108
ROTULO108:
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
jmp ROTULO109
ROTULO109:
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
jmp ROTULO110
ROTULO110:
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
jmp ROTULO111
ROTULO111:
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
jmp ROTULO112
ROTULO112:
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
jmp ROTULO113
ROTULO113:
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
jb ROTULO114
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:142:21 ===---
mov ax, _colors
mov [bp+-8], ax
mov ax, 142
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO114:
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
jne ROTULO116
jmp ROTULO117
ROTULO116:
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
jmp ROTULO115
jmp ROTULO127
ROTULO117:
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
jmp ROTULO115
ROTULO127:
ROTULO115:
mov sp, bp
pop bp
FIM_colors_fromrgb:
retf
; MODULO FIM: colors
;     ---=== teste.hcb:16:8 ===---
; MODULO: program
_program:
db 9
db 116,101,115,116,101,46,104,99,98
db 0
;     ---=== teste.hcb:17:9 ===---
jmp ROTULO128
_program_testestring:
times 4 db 0
db 255
times 255 db 0
ROTULO128:
;     ---=== teste.hcb:19:9 ===---
jmp ROTULO129
_program_mainform:
times 86 db 0
ROTULO129:
;     ---=== teste.hcb:21:16 ===---
_program_testecruzada:
;     ---=== teste.hcb:22:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _referenciacruzada_testecruzada
ROTULO130:
FIM_program_testecruzada:
retf
;     ---=== teste.hcb:24:16 ===---
_program_main:
push bp
mov bp, sp
sub sp, 34
cs mov ax, [_os_minstackptr]
mov bx, sp
cmp ax, bx
jb ROTULO131
;     ---=== teste.hcb:24:16 ===---
mov ax, _program
mov [bp+-8], ax
mov ax, 24
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO131:
; ARG: args TAM: 4 POS: BP+6 
; ARG: arq TAM: 4 POS: BP--14 
; ARG: txt TAM: 4 POS: BP--18 
; ARG: funcao TAM: 4 POS: BP--22 
; ARG: testestru TAM: 4 POS: BP--26 
; ARG: ptr TAM: 4 POS: BP--30 
; ARG: numero TAM: 2 POS: BP--32 
; ARG: numero2 TAM: 2 POS: BP--34 
;     ---=== teste.hcb:24:21 ===---
;     ---=== teste.hcb:25:13 ===---
;     ---=== teste.hcb:26:13 ===---
;     ---=== teste.hcb:27:13 ===---
;     ---=== teste.hcb:28:13 ===---
;     ---=== teste.hcb:29:13 ===---
;     ---=== teste.hcb:66:17 ===---
;     ---=== teste.hcb:67:17 ===---
;     ---=== teste.hcb:30:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== teste.hcb:30:21 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-30+2]
pop es
mov di, [bp+-30]
push es
pop word [bp+-26+2]
mov [bp+-26], di
;     ---=== teste.hcb:31:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 34
push ss
pop es
mov di, sp
push es
pop word [bp+-14+2]
mov [bp+-14], di
;     ---=== teste.hcb:32:9 ===---
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
;     ---=== teste.hcb:33:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:33:23 ===---
push cs
pop es
mov di, ROTULO134
jmp ROTULO133
ROTULO134:
db 26
db 84,101,115,116,101,32,67,114,105,97,99,97,111,32,100,101,32,97,114,113,117,105,118,111,58,32
times 1 db 0
ROTULO133:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:34:12 ===---
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
mov ax, ROTULO135
cs mov [_os_trycode], ax
;     ---=== teste.hcb:35:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:35:30 ===---
push cs
pop es
mov di, ROTULO138
jmp ROTULO137
ROTULO138:
db 9
db 116,101,115,116,101,46,116,120,116
times 1 db 0
ROTULO137:
push es
push di
;     ---=== teste.hcb:35:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-14+2]
pop es
mov di, [bp+-14]
push es
push di
push cs
call _file_create
add sp, 8
;     ---=== teste.hcb:36:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:36:33 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:36:49 ===---
push cs
pop es
mov di, ROTULO140
jmp ROTULO139
ROTULO140:
db 47
db 84,101,120,116,111,32,116,101,115,116,101,32,110,111,32,97,114,113,117,105,118,111,32,101,115,99,114,105,116,111,32,112,101,108,111,32,116,101,115,116,101,46,104,99,98,46,32
times 1 db 0
ROTULO139:
push es
push di
;     ---=== teste.hcb:36:44 ===---
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
;     ---=== teste.hcb:37:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:37:27 ===---
push cs
pop es
mov di, ROTULO142
jmp ROTULO141
ROTULO142:
db 3
db 32,43,32
times 1 db 0
ROTULO141:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:38:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:38:33 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== teste.hcb:38:50 ===---
push cs
pop es
mov di, ROTULO144
jmp ROTULO143
ROTULO144:
db 41
db 84,101,120,116,111,32,116,101,115,116,101,32,101,109,105,116,105,100,111,32,118,105,97,32,83,116,114,117,99,116,117,114,101,32,83,116,114,101,97,109,46
times 1 db 0
ROTULO143:
push es
push di
;     ---=== teste.hcb:38:33 ===---
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
;     ---=== teste.hcb:39:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:39:24 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-14+2]
pop es
mov di, [bp+-14]
push es
push di
push cs
call _file_close
add sp, 4
;     ---=== teste.hcb:40:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:40:31 ===---
push cs
pop es
mov di, ROTULO146
jmp ROTULO145
ROTULO146:
db 15
db 32,66,121,116,101,115,32,101,115,99,114,105,116,111,115
times 1 db 0
ROTULO145:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO136
ROTULO135:
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
;     ---=== teste.hcb:42:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:42:31 ===---
push cs
pop es
mov di, ROTULO150
jmp ROTULO149
ROTULO150:
db 39
db 32,70,65,76,72,65,32,65,79,32,77,65,78,73,80,85,76,65,82,32,79,32,65,82,81,85,73,86,79,32,116,101,115,116,101,46,116,120,116
times 1 db 0
ROTULO149:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO136
ROTULO148:
cs jmp word [_os_tryfatal]
ROTULO136:
mov ax, [bp+-6]
cs mov [_os_trybase], ax
mov ax, [bp+-4]
cs mov [_os_trystack], ax
mov ax, [bp+-2]
cs mov [_os_trycode], ax
;     ---=== teste.hcb:44:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:44:23 ===---
push cs
pop es
mov di, ROTULO152
jmp ROTULO151
ROTULO152:
db 18
db 69,115,99,114,101,118,97,32,115,101,117,32,110,111,109,101,58,32
times 1 db 0
ROTULO151:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:45:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:45:26 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_readline
add sp, 4
;     ---=== teste.hcb:46:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:46:23 ===---
push cs
pop es
mov di, ROTULO154
jmp ROTULO153
ROTULO154:
db 4
db 79,105,101,32
times 1 db 0
ROTULO153:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:47:9 ===---
;     ---=== teste.hcb:47:31 ===---
;     ---=== teste.hcb:47:12 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:47:26 ===---
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
;     ---=== teste.hcb:47:34 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO157
jmp ROTULO158
ROTULO157:
mov ax, 65535
jmp ROTULO159
ROTULO158:
xor ax, ax
ROTULO159:
cmp ax, 0
jne ROTULO155
jmp ROTULO156
ROTULO155:
;     ---=== teste.hcb:48:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:48:27 ===---
push cs
pop es
mov di, ROTULO161
jmp ROTULO160
ROTULO161:
db 8
db 83,101,109,32,78,111,109,101
times 1 db 0
ROTULO160:
push es
push di
push cs
call _console_write
add sp, 4
jmp ROTULO162
ROTULO156:
;     ---=== teste.hcb:50:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:50:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_write
add sp, 4
ROTULO162:
;     ---=== teste.hcb:52:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:52:27 ===---
push cs
pop es
mov di, ROTULO164
jmp ROTULO163
ROTULO164:
db 1
db 33
times 1 db 0
ROTULO163:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:53:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:53:23 ===---
push cs
pop es
mov di, ROTULO166
jmp ROTULO165
ROTULO166:
db 27
db 84,101,115,116,101,32,100,101,32,102,117,110,99,97,111,32,105,110,100,105,114,101,116,97,58,32,39
times 1 db 0
ROTULO165:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:54:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== teste.hcb:54:18 ===---
push cs
pop es
mov di, _program_testefunc
push es
pop word [bp+-22+2]
mov [bp+-22], di
;     ---=== teste.hcb:55:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:55:29 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
call far [bp+-22]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== teste.hcb:56:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:56:27 ===---
push cs
pop es
mov di, ROTULO168
jmp ROTULO167
ROTULO168:
db 1
db 39
times 1 db 0
ROTULO167:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:57:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:57:30 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
cs mov ax, [_program_testestring+2]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== teste.hcb:58:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:58:23 ===---
push cs
pop es
mov di, ROTULO170
jmp ROTULO169
ROTULO170:
db 1
db 58
times 1 db 0
ROTULO169:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:59:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:59:30 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
cs mov ax, [_program_testestring]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== teste.hcb:60:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:60:27 ===---
push cs
pop es
mov di, ROTULO172
jmp ROTULO171
ROTULO172:
db 0
times 1 db 0
ROTULO171:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:61:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:61:26 ===---
push cs
pop es
mov di, ROTULO174
jmp ROTULO173
ROTULO174:
db 16
db 84,101,115,116,101,32,100,101,32,99,111,110,99,97,116,58
times 1 db 0
ROTULO173:
push es
push di
;     ---=== teste.hcb:61:21 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_copy
add sp, 8
;     ---=== teste.hcb:62:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:62:28 ===---
push cs
pop es
mov di, ROTULO176
jmp ROTULO175
ROTULO176:
db 21
db 32,84,101,120,116,111,32,99,111,110,99,97,116,101,110,97,100,111,32,49,44
times 1 db 0
ROTULO175:
push es
push di
;     ---=== teste.hcb:62:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_concat
add sp, 8
;     ---=== teste.hcb:63:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:63:28 ===---
push cs
pop es
mov di, ROTULO178
jmp ROTULO177
ROTULO178:
db 20
db 32,84,101,120,116,111,32,99,111,110,99,97,116,101,110,97,100,111,32,50
times 1 db 0
ROTULO177:
push es
push di
;     ---=== teste.hcb:63:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_concat
add sp, 8
;     ---=== teste.hcb:64:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:64:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:65:11 ===---
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
mov ax, ROTULO179
cs mov [_os_trycode], ax
;     ---=== teste.hcb:68:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-34], 0
;     ---=== teste.hcb:69:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== teste.hcb:69:25 ===---
;     ---=== teste.hcb:69:22 ===---
mov ax, 10
push ax
;     ---=== teste.hcb:69:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-34]
cmp ax, 0
jne ROTULO181
;     ---=== teste.hcb:69:27 ===---
mov ax, _program
mov [bp+-8], ax
mov ax, 69
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO181:
mov bx, ax
pop ax
xor dx, dx
div bx
mov [bp+-32], ax
jmp ROTULO180
ROTULO179:
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
je ROTULO182
jmp ROTULO183
ROTULO182:
;     ---=== teste.hcb:71:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:71:31 ===---
push cs
pop es
mov di, ROTULO185
jmp ROTULO184
ROTULO185:
db 21
db 68,105,118,105,115,97,111,32,112,111,114,32,122,101,114,111,32,112,101,103,97
times 1 db 0
ROTULO184:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:72:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:72:27 ===---
; ACAO CHAMADA - Le nome do arquivo com erro
mov di, [bp+-8]
push cs
pop es
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:73:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:73:27 ===---
push cs
pop es
mov di, ROTULO187
jmp ROTULO186
ROTULO187:
db 2
db 58,32
times 1 db 0
ROTULO186:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:74:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:74:33 ===---
; ACAO CHAMADA - Le linha com erro
mov ax, [bp+-10]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== teste.hcb:75:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:75:31 ===---
push cs
pop es
mov di, ROTULO189
jmp ROTULO188
ROTULO189:
db 0
times 1 db 0
ROTULO188:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO180
ROTULO183:
cs jmp word [_os_tryfatal]
ROTULO180:
mov ax, [bp+-6]
cs mov [_os_trybase], ax
mov ax, [bp+-4]
cs mov [_os_trystack], ax
mov ax, [bp+-2]
cs mov [_os_trycode], ax
;     ---=== teste.hcb:77:9 ===---
;     ---=== teste.hcb:77:12 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:77:32 ===---
push cs
pop es
mov di, ROTULO193
jmp ROTULO192
ROTULO193:
db 2
db 111,105
times 1 db 0
ROTULO192:
push es
push di
;     ---=== teste.hcb:77:26 ===---
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
push cs
call _string_equals
add sp, 8
cmp ax, 0
jne ROTULO190
jmp ROTULO191
ROTULO190:
;     ---=== teste.hcb:77:43 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:77:61 ===---
push cs
pop es
mov di, ROTULO197
jmp ROTULO196
ROTULO197:
db 10
db 69,81,85,65,76,32,84,69,83,84
times 1 db 0
ROTULO196:
push es
push di
push cs
call _console_writeline
add sp, 4
ROTULO191:
;     ---=== teste.hcb:79:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _vga_mode640x480x2
;     ---=== teste.hcb:80:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:80:37 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:80:33 ===---
mov ax, 19
push ax
;     ---=== teste.hcb:80:28 ===---
mov ax, 114
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== teste.hcb:81:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:81:37 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:81:33 ===---
mov ax, 51
push ax
;     ---=== teste.hcb:81:28 ===---
mov ax, 114
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== teste.hcb:82:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:82:37 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:82:33 ===---
mov ax, 19
push ax
;     ---=== teste.hcb:82:28 ===---
mov ax, 216
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== teste.hcb:83:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:83:37 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:83:33 ===---
mov ax, 51
push ax
;     ---=== teste.hcb:83:28 ===---
mov ax, 216
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== teste.hcb:84:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:84:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:84:38 ===---
mov ax, 44
push ax
;     ---=== teste.hcb:84:35 ===---
xor ax, ax
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
;     ---=== teste.hcb:85:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:85:38 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:85:35 ===---
xor ax, ax
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
;     ---=== teste.hcb:86:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:86:38 ===---
mov ax, 65
push ax
;     ---=== teste.hcb:86:35 ===---
xor ax, ax
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
;     ---=== teste.hcb:87:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:87:39 ===---
xor ax, ax
push ax
;     ---=== teste.hcb:87:35 ===---
mov ax, 44
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
;     ---=== teste.hcb:88:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:88:39 ===---
xor ax, ax
push ax
;     ---=== teste.hcb:88:35 ===---
mov ax, 50
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
;     ---=== teste.hcb:89:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:89:39 ===---
xor ax, ax
push ax
;     ---=== teste.hcb:89:35 ===---
mov ax, 65
push ax
;     ---=== teste.hcb:89:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:89:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:90:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:90:44 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:90:40 ===---
mov ax, 65
push ax
;     ---=== teste.hcb:90:35 ===---
mov ax, 100
push ax
;     ---=== teste.hcb:90:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:90:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:91:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:91:44 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:91:40 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:91:35 ===---
mov ax, 100
push ax
;     ---=== teste.hcb:91:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:91:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:92:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:92:44 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:92:40 ===---
mov ax, 45
push ax
;     ---=== teste.hcb:92:35 ===---
mov ax, 100
push ax
;     ---=== teste.hcb:92:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:92:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:93:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:93:44 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:93:39 ===---
mov ax, 100
push ax
;     ---=== teste.hcb:93:35 ===---
mov ax, 65
push ax
;     ---=== teste.hcb:93:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:93:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:94:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:94:44 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:94:39 ===---
mov ax, 100
push ax
;     ---=== teste.hcb:94:35 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:94:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:94:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:95:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:95:44 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:95:39 ===---
mov ax, 100
push ax
;     ---=== teste.hcb:95:35 ===---
mov ax, 45
push ax
;     ---=== teste.hcb:95:31 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:95:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== teste.hcb:96:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:96:51 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:96:49 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:96:46 ===---
mov ax, 48
push ax
;     ---=== teste.hcb:96:41 ===---
mov ax, 213
push ax
;     ---=== teste.hcb:96:37 ===---
mov ax, 22
push ax
;     ---=== teste.hcb:96:32 ===---
mov ax, 117
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== teste.hcb:97:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:97:51 ===---
mov ax, 65535
push ax
;     ---=== teste.hcb:97:49 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:97:46 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:97:41 ===---
mov ax, 215
push ax
;     ---=== teste.hcb:97:37 ===---
mov ax, 20
push ax
;     ---=== teste.hcb:97:32 ===---
mov ax, 115
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== teste.hcb:98:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _application_initialize
;     ---=== teste.hcb:99:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:99:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _form_initialize
add sp, 4
;     ---=== teste.hcb:100:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:100:24 ===---
mov ax, 30
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:101:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:101:25 ===---
mov ax, 10
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:102:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:102:26 ===---
mov ax, 200
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:103:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:103:27 ===---
mov ax, 100
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:104:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:104:35 ===---
push cs
pop es
mov di, ROTULO199
jmp ROTULO198
ROTULO199:
db 37
db 48,49,50,51,52,53,54,55,56,57,32,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90
times 1 db 0
ROTULO198:
push es
push di
;     ---=== teste.hcb:104:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _control_settext
add sp, 8
;     ---=== teste.hcb:105:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:105:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _application_run
add sp, 4
;     ---=== teste.hcb:106:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _console_readchar
;     ---=== teste.hcb:107:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _graphics_mode80x25x16
ROTULO132:
mov sp, bp
pop bp
FIM_program_main:
retf
;     ---=== teste.hcb:110:14 ===---
_program_testefunc:
;     ---=== teste.hcb:111:9 ===---
;     ---=== teste.hcb:111:16 ===---
mov ax, 123
jmp ROTULO200
ROTULO200:
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
ROTULO201:
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
jmp ROTULO202
ROTULO202:
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
jb ROTULO203
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:250:16 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 250
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO203:
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
ROTULO205:
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
ja ROTULO214
jmp ROTULO215
ROTULO214:
mov ax, 65535
jmp ROTULO216
ROTULO215:
xor ax, ax
ROTULO216:
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
jne ROTULO217
jmp ROTULO218
ROTULO217:
mov ax, 65535
jmp ROTULO219
ROTULO218:
xor ax, ax
ROTULO219:
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
jne ROTULO220
jmp ROTULO221
ROTULO220:
mov ax, 65535
jmp ROTULO222
ROTULO221:
xor ax, ax
ROTULO222:
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO206
jmp ROTULO207
ROTULO206:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:259:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
jmp ROTULO205
ROTULO207:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:261:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO204:
mov sp, bp
pop bp
FIM_console_readline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:264:16 ===---
_console_writechar:
push bp
mov bp, sp
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
ROTULO223:
mov sp, bp
pop bp
FIM_console_writechar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:268:16 ===---
_console_write:
push bp
mov bp, sp
; ARG: txt TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:268:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:270:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:271:9 ===---
ROTULO225:
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
ja ROTULO228
jmp ROTULO229
ROTULO228:
mov ax, 65535
jmp ROTULO230
ROTULO229:
xor ax, ax
ROTULO230:
cmp ax, 0
jne ROTULO226
jmp ROTULO227
ROTULO226:
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
jmp ROTULO225
ROTULO227:
ROTULO224:
mov sp, bp
pop bp
FIM_console_write:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:277:16 ===---
_console_writeline:
push bp
mov bp, sp
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
ROTULO231:
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
jb ROTULO232
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:283:16 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 283
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO232:
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
jne ROTULO234
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:286:27 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 286
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO234:
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
jne ROTULO235
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:287:26 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 287
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO235:
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
ja ROTULO238
jmp ROTULO239
ROTULO238:
mov ax, 65535
jmp ROTULO240
ROTULO239:
xor ax, ax
ROTULO240:
cmp ax, 0
jne ROTULO236
jmp ROTULO237
ROTULO236:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:288:26 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:288:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO237:
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
ROTULO233:
mov sp, bp
pop bp
FIM_console_writeuint16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:292:16 ===---
_console_writeint16:
push bp
mov bp, sp
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
jl ROTULO244
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
ROTULO243:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:296:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:296:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO241:
mov sp, bp
pop bp
FIM_console_writeint16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:299:16 ===---
_console_writeuint8:
push bp
mov bp, sp
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
ROTULO247:
mov sp, bp
pop bp
FIM_console_writeuint8:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:303:16 ===---
_console_writeint8:
push bp
mov bp, sp
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
ROTULO248:
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
jb ROTULO249
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:151:21 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 151
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
ROTULO249:
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
