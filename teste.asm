;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:7:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:9:13 ===---
cpu 8086
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:10:13 ===---
bits 16
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:11:13 ===---
org 0x100
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:12:9 ===---
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
_os_trystack:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:3:9 ===---
_os_trycode:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:4:9 ===---
_os_trybase:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:5:9 ===---
_os_tryfatal:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:7:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:15:9 ===---
_os_stackcheck:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:16:13 ===---
cmp sp, END
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:17:13 ===---
ja .end
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:18:15 ===---
mov ax, _os
mov [bp+-8], ax
mov ax, 18
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:19:13 ===---
.end:
ROTULO1:
FIM_os_stackcheck:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:22:9 ===---
_os_start2:
push bp
mov bp, sp
sub sp, 28
push cs
call _os_stackcheck
; ARG: args TAM: 4 POS: BP--14 
; ARG: realoc TAM: 4 POS: BP--18 
; ARG: ptr TAM: 4 POS: BP--22 
; ARG: tiporealoc TAM: 2 POS: BP--24 
; ARG: desvio TAM: 2 POS: BP--26 
; ARG: soma TAM: 2 POS: BP--28 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:24:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:26:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:27:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:28:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:29:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:30:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:31:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:31:19 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_codesegment
mov word [bp+-18+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:32:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:32:16 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_codesegment
mov word [bp+-22+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:33:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:33:19 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_realoctable
mov [bp+-18], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:34:9 ===---
ROTULO3:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:34:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:34:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:34:25 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO6
jmp ROTULO7
ROTULO6:
mov ax, 65535
jmp ROTULO8
ROTULO7:
xor ax, ax
ROTULO8:
cmp ax, 0
jne ROTULO4
jmp ROTULO5
ROTULO4:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:35:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:35:26 ===---
; ACAO LEITURA - Le ponteiro
es mov ax, [di+0]
mov [bp+-24], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:36:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:37:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:38:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:38:20 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
es mov ax, [di+0]
mov [bp+-22], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:39:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:40:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:41:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:41:22 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
es mov ax, [di+0]
mov [bp+-26], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:42:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:43:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:44:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:44:20 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
es mov ax, [di+0]
mov [bp+-28], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:45:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:46:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:47:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:47:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:47:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:47:30 ===---
mov ax, 3
mov bx, ax
pop ax
cmp ax, bx
je ROTULO11
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:48:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:48:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:48:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:48:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
pop bx
add ax, bx
mov [bp+-26], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:49:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:49:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push word [bp+-22+2]
pop es
mov di, [bp+-22]
es mov [di+0], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:50:18 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-22]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:51:18 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-22]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:52:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:52:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:52:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:52:23 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_codesegment
pop bx
add ax, bx
push word [bp+-22+2]
pop es
mov di, [bp+-22]
es mov [di+0], ax
ROTULO10:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:54:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:54:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:54:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:54:30 ===---
mov ax, 2
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:55:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:55:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:55:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:55:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
pop bx
add ax, bx
mov [bp+-22], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:56:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:56:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:56:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:56:23 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_stacksegment
pop bx
add ax, bx
push word [bp+-22+2]
pop es
mov di, [bp+-22]
es mov [di+0], ax
ROTULO15:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:58:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:58:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:58:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:58:30 ===---
mov ax, 1
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:59:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:59:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:59:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:59:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
pop bx
add ax, bx
mov [bp+-22], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:60:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:60:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:60:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:60:23 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_codesegment
pop bx
add ax, bx
push word [bp+-22+2]
pop es
mov di, [bp+-22]
es mov [di+0], ax
ROTULO20:
jmp ROTULO3
ROTULO5:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:64:10 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 128
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:65:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:65:17 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_codesegment
mov word [bp+-14+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:67:13 ===---
mov al, [0x80]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:68:13 ===---
xor ah, ah
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:69:13 ===---
mov si, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:70:13 ===---
add si, 0x80
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:71:13 ===---
mov byte [si+1], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:72:13 ===---
cs mov word [_os_tryfatal], errofatal
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:74:11 ===---
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
mov ax, ROTULO24
cs mov [_os_trycode], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:75:13 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_initialize
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:76:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:76:26 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-14+2]
pop es
mov di, [bp+-14]
push es
push di
push cs
call _program_main
add sp, 4
jmp ROTULO25
ROTULO24:
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
je ROTULO26
jmp ROTULO27
ROTULO26:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:78:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:78:31 ===---
push cs
pop es
mov di, ROTULO29
jmp ROTULO28
ROTULO29:
db 23
db 69,114,114,111,58,32,68,105,118,105,115,195,163,111,32,112,111,114,32,122,101,114,111
times 1 db 0
ROTULO28:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:79:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO27:
mov bx, 2
cmp ax, bx
je ROTULO30
jmp ROTULO31
ROTULO30:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:81:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:81:31 ===---
push cs
pop es
mov di, ROTULO33
jmp ROTULO32
ROTULO33:
db 22
db 69,114,114,111,58,32,69,115,116,111,117,114,111,32,100,101,32,112,105,108,104,97
times 1 db 0
ROTULO32:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:82:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO31:
mov bx, 3
cmp ax, bx
je ROTULO34
jmp ROTULO35
ROTULO34:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:84:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:84:31 ===---
push cs
pop es
mov di, ROTULO37
jmp ROTULO36
ROTULO37:
db 18
db 69,114,114,111,58,32,83,101,109,32,109,101,109,195,179,114,105,97
times 1 db 0
ROTULO36:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:85:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO35:
mov bx, 4
cmp ax, bx
je ROTULO38
jmp ROTULO39
ROTULO38:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:87:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:87:31 ===---
push cs
pop es
mov di, ROTULO41
jmp ROTULO40
ROTULO41:
db 28
db 69,114,114,111,58,32,86,97,108,111,114,32,102,111,114,97,32,100,111,115,32,108,105,109,105,116,101,115
times 1 db 0
ROTULO40:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:88:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO39:
mov bx, 5
cmp ax, bx
je ROTULO42
jmp ROTULO43
ROTULO42:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:90:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:90:31 ===---
push cs
pop es
mov di, ROTULO45
jmp ROTULO44
ROTULO45:
db 21
db 69,114,114,111,58,32,78,195,163,111,32,101,110,99,111,110,116,114,97,100,111
times 1 db 0
ROTULO44:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:91:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO43:
mov bx, 6
cmp ax, bx
je ROTULO46
jmp ROTULO47
ROTULO46:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:93:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:93:31 ===---
push cs
pop es
mov di, ROTULO49
jmp ROTULO48
ROTULO49:
db 21
db 69,114,114,111,58,32,73,116,101,109,32,106,195,161,32,101,120,105,115,116,101
times 1 db 0
ROTULO48:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:94:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO47:
mov bx, 7
cmp ax, bx
je ROTULO50
jmp ROTULO51
ROTULO50:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:96:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:96:31 ===---
push cs
pop es
mov di, ROTULO53
jmp ROTULO52
ROTULO53:
db 23
db 69,114,114,111,58,32,78,195,163,111,32,105,109,112,108,101,109,101,110,116,97,100,111
times 1 db 0
ROTULO52:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:97:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO51:
mov bx, 8
cmp ax, bx
je ROTULO54
jmp ROTULO55
ROTULO54:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:99:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:99:31 ===---
push cs
pop es
mov di, ROTULO57
jmp ROTULO56
ROTULO57:
db 24
db 69,114,114,111,58,32,70,97,108,104,97,32,100,101,115,99,111,110,104,101,99,105,100,97
times 1 db 0
ROTULO56:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:100:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO55:
mov bx, 9
cmp ax, bx
je ROTULO58
jmp ROTULO59
ROTULO58:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:102:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:102:31 ===---
push cs
pop es
mov di, ROTULO61
jmp ROTULO60
ROTULO61:
db 27
db 69,114,114,111,58,32,69,115,116,111,117,114,111,32,100,97,32,67,97,112,97,99,105,100,97,100,101
times 1 db 0
ROTULO60:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:103:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO59:
mov bx, 10
cmp ax, bx
je ROTULO62
jmp ROTULO63
ROTULO62:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:105:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:105:31 ===---
push cs
pop es
mov di, ROTULO65
jmp ROTULO64
ROTULO65:
db 18
db 69,114,114,111,58,32,83,101,109,32,114,101,115,112,111,115,116,97
times 1 db 0
ROTULO64:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:106:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO63:
mov bx, 11
cmp ax, bx
je ROTULO66
jmp ROTULO67
ROTULO66:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:108:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:108:31 ===---
push cs
pop es
mov di, ROTULO69
jmp ROTULO68
ROTULO69:
db 29
db 69,114,114,111,58,32,69,115,116,111,117,114,111,32,100,111,32,116,101,109,112,111,32,108,105,109,105,116,101
times 1 db 0
ROTULO68:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:109:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO67:
mov bx, 12
cmp ax, bx
je ROTULO70
jmp ROTULO71
ROTULO70:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:111:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:111:31 ===---
push cs
pop es
mov di, ROTULO73
jmp ROTULO72
ROTULO73:
db 21
db 69,114,114,111,58,32,86,97,108,111,114,32,105,110,118,195,161,108,105,100,111
times 1 db 0
ROTULO72:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:112:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO71:
mov bx, 13
cmp ax, bx
je ROTULO74
jmp ROTULO75
ROTULO74:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:114:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:114:31 ===---
push cs
pop es
mov di, ROTULO77
jmp ROTULO76
ROTULO77:
db 19
db 69,114,114,111,58,32,65,99,101,115,115,111,32,110,101,103,97,100,111
times 1 db 0
ROTULO76:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:115:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO75:
mov bx, 14
cmp ax, bx
je ROTULO78
jmp ROTULO79
ROTULO78:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:117:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:117:31 ===---
push cs
pop es
mov di, ROTULO81
jmp ROTULO80
ROTULO81:
db 23
db 69,114,114,111,58,32,70,111,114,109,97,116,111,32,105,110,118,195,161,108,105,100,111
times 1 db 0
ROTULO80:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:118:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO79:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:120:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:120:31 ===---
push cs
pop es
mov di, ROTULO85
jmp ROTULO84
ROTULO85:
db 28
db 79,99,111,114,114,101,117,32,117,109,32,101,114,114,111,32,110,195,163,111,32,116,114,97,116,97,100,111
times 1 db 0
ROTULO84:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:121:13 ===---
escreveerro:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:122:17 ===---
mov ax, 0x3
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:123:17 ===---
int 0x10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:124:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:124:27 ===---
; ACAO CHAMADA - Le nome do arquivo com erro
mov di, [bp+-8]
push cs
pop es
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:125:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:125:27 ===---
push cs
pop es
mov di, ROTULO87
jmp ROTULO86
ROTULO87:
db 2
db 58,32
times 1 db 0
ROTULO86:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:126:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:126:33 ===---
; ACAO CHAMADA - Le linha com erro
mov ax, [bp+-10]
push ax
push cs
call _console_writeuint16
add sp, 2
jmp ROTULO25
ROTULO83:
cs jmp word [_os_tryfatal]
ROTULO25:
mov ax, [bp+-6]
cs mov [_os_trybase], ax
mov ax, [bp+-4]
cs mov [_os_trystack], ax
mov ax, [bp+-2]
cs mov [_os_trycode], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:129:13 ===---
errofatal:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:130:13 ===---
int 0x20
ROTULO2:
mov sp, bp
pop bp
FIM_os_start2:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:133:21 ===---
_os_codesegment:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:134:13 ===---
mov ax, cs
ROTULO88:
FIM_os_codesegment:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:137:21 ===---
_os_stacksegment:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:138:13 ===---
mov ax, ss
ROTULO89:
FIM_os_stacksegment:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:141:21 ===---
_os_realoctable:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:142:13 ===---
mov ax, REALOC_TABLE
ROTULO90:
FIM_os_realoctable:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:145:21 ===---
_os_consoleavail:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:146:13 ===---
mov ah, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:147:13 ===---
int 0x16
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:148:13 ===---
jnz .sim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:149:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:149:16 ===---
xor ax, ax
jmp ROTULO91
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:150:13 ===---
.sim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:151:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:151:16 ===---
mov ax, 1
jmp ROTULO91
ROTULO91:
FIM_os_consoleavail:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:154:21 ===---
_os_consolereadchar:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:155:13 ===---
mov ah, 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:156:13 ===---
int 0x16
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:157:13 ===---
xor ah, ah
ROTULO92:
FIM_os_consolereadchar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:160:16 ===---
_os_consolewritechar:
push bp
mov bp, sp
; ARG: c TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:160:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:161:13 ===---
mov dl, [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:162:13 ===---
mov ah, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:163:13 ===---
int 0x21
ROTULO93:
mov sp, bp
pop bp
FIM_os_consolewritechar:
retf
; MODULO FIM: os
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:46:8 ===---
; MODULO: colors
_colors:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:47:9 ===---
_colors_palette:
times 46 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:49:16 ===---
_colors_initialize:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:50:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:50:25 ===---
xor ax, ax
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:51:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:51:24 ===---
mov ax, 1
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:52:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:52:25 ===---
mov ax, 2
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:53:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:53:24 ===---
mov ax, 3
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:54:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:54:23 ===---
mov ax, 4
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:55:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:55:27 ===---
mov ax, 5
es mov [di+10], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:56:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:56:25 ===---
mov ax, 6
es mov [di+12], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:57:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:57:29 ===---
mov ax, 7
es mov [di+14], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:58:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:58:24 ===---
mov ax, 8
es mov [di+16], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:59:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:59:29 ===---
mov ax, 9
es mov [di+18], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:60:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:60:30 ===---
mov ax, 10
es mov [di+20], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:61:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:61:29 ===---
mov ax, 11
es mov [di+22], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:62:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:62:28 ===---
mov ax, 12
es mov [di+24], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:63:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:63:32 ===---
mov ax, 13
es mov [di+26], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:64:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:64:26 ===---
mov ax, 14
es mov [di+28], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:65:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:65:25 ===---
mov ax, 15
es mov [di+30], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:66:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:66:31 ===---
mov ax, 65535
es mov [di+32], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:67:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:67:38 ===---
mov ax, 1
es mov [di+34], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO94:
FIM_colors_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:70:16 ===---
_colors_register:
push bp
mov bp, sp
; ARG: newpal TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:70:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:71:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:71:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+6+2]
cs mov [_colors_palette+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:72:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:72:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
cs mov [_colors_palette], ax
ROTULO95:
mov sp, bp
pop bp
FIM_colors_register:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:75:21 ===---
_colors_black:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:76:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:76:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+0]
jmp ROTULO96
ROTULO96:
FIM_colors_black:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:79:21 ===---
_colors_blue:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:80:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:80:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+2]
jmp ROTULO97
ROTULO97:
FIM_colors_blue:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:83:21 ===---
_colors_green:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:84:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:84:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+4]
jmp ROTULO98
ROTULO98:
FIM_colors_green:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:87:21 ===---
_colors_cyan:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:88:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:88:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+6]
jmp ROTULO99
ROTULO99:
FIM_colors_cyan:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:91:21 ===---
_colors_red:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:92:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:92:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 8
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+8]
jmp ROTULO100
ROTULO100:
FIM_colors_red:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:95:21 ===---
_colors_magenta:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:96:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:96:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 10
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+10]
jmp ROTULO101
ROTULO101:
FIM_colors_magenta:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:99:21 ===---
_colors_brown:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:100:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:100:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+12]
jmp ROTULO102
ROTULO102:
FIM_colors_brown:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:103:21 ===---
_colors_lightgray:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:104:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:104:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 14
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+14]
jmp ROTULO103
ROTULO103:
FIM_colors_lightgray:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:107:21 ===---
_colors_gray:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:108:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:108:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 16
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+16]
jmp ROTULO104
ROTULO104:
FIM_colors_gray:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:111:21 ===---
_colors_lightblue:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:112:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:112:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 18
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+18]
jmp ROTULO105
ROTULO105:
FIM_colors_lightblue:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:115:21 ===---
_colors_lightgreen:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:116:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:116:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 20
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+20]
jmp ROTULO106
ROTULO106:
FIM_colors_lightgreen:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:119:21 ===---
_colors_lightcyan:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:120:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:120:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 22
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+22]
jmp ROTULO107
ROTULO107:
FIM_colors_lightcyan:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:123:21 ===---
_colors_lightred:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:124:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:124:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 24
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+24]
jmp ROTULO108
ROTULO108:
FIM_colors_lightred:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:127:21 ===---
_colors_lightmagenta:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:128:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:128:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 26
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+26]
jmp ROTULO109
ROTULO109:
FIM_colors_lightmagenta:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:131:21 ===---
_colors_yellow:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:132:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:132:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 28
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+28]
jmp ROTULO110
ROTULO110:
FIM_colors_yellow:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:135:21 ===---
_colors_white:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:136:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:136:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 30
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+30]
jmp ROTULO111
ROTULO111:
FIM_colors_white:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:139:21 ===---
_colors_transparent:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:140:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:140:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 32
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+32]
jmp ROTULO112
ROTULO112:
FIM_colors_transparent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:143:21 ===---
_colors_fromrgb:
push bp
mov bp, sp
sub sp, 8
push cs
call _os_stackcheck
; ARG: r TAM: 2 POS: BP+6 
; ARG: g TAM: 2 POS: BP+8 
; ARG: b TAM: 2 POS: BP+10 
; ARG: tmpr TAM: 2 POS: BP--2 
; ARG: tmpg TAM: 2 POS: BP--4 
; ARG: tmpb TAM: 2 POS: BP--6 
; ARG: tmpi TAM: 2 POS: BP--8 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:143:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:143:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:143:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:144:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:145:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:146:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:147:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:148:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:148:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 34
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+34]
cmp ax, 0
jne ROTULO114
jmp ROTULO115
ROTULO114:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:149:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:149:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:149:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:149:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
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
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:150:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:150:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:150:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:150:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
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
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:27 ===---
mov ax, 6
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:151:34 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:51 ===---
mov ax, 7
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:39 ===---
mov ax, 7
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:152:27 ===---
mov ax, 7
mov cx, ax
pop ax
shr ax, cl
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:153:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:153:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:153:65 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:153:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:153:56 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:153:51 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:153:60 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:153:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:153:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:153:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:153:45 ===---
mov ax, 2
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:153:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:153:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:153:30 ===---
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
jmp ROTULO113
jmp ROTULO125
ROTULO115:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 36
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
xor ax, ax
es mov al, [di+36]
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:57 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 37
xor ax, ax
es mov al, [di+37]
mov cx, ax
pop ax
shr ax, cl
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:156:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:156:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:156:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:156:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:156:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 38
xor ax, ax
es mov al, [di+38]
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:156:59 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 39
xor ax, ax
es mov al, [di+39]
mov cx, ax
pop ax
shr ax, cl
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:157:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:157:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:157:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:157:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:157:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 40
xor ax, ax
es mov al, [di+40]
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:157:58 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 41
xor ax, ax
es mov al, [di+41]
mov cx, ax
pop ax
shr ax, cl
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:158:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:158:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:158:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:158:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:158:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:158:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
pop bx
add ax, bx
pop bx
add ax, bx
jmp ROTULO113
ROTULO125:
ROTULO113:
mov sp, bp
pop bp
FIM_colors_fromrgb:
retf
; MODULO FIM: colors
;     ---=== teste.hcb:52:8 ===---
; MODULO: program
_program:
db 9
db 116,101,115,116,101,46,104,99,98
db 0
;     ---=== teste.hcb:54:9 ===---
_program_mainform:
times 100 db 0
;     ---=== teste.hcb:55:9 ===---
_program_helloworldlabel:
times 100 db 0
;     ---=== teste.hcb:56:9 ===---
_program_okbutton:
times 100 db 0
;     ---=== teste.hcb:57:9 ===---
_program_temptextbox:
times 100 db 0
;     ---=== teste.hcb:58:9 ===---
_program_temptext:
times 4 db 0
db 255
times 255 db 0
;     ---=== teste.hcb:59:9 ===---
_program_copiabutton:
times 100 db 0
;     ---=== teste.hcb:60:9 ===---
_program_helloworldtext:
times 4 db 0
db 255
times 255 db 0
;     ---=== teste.hcb:62:16 ===---
_program_main:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: args TAM: 4 POS: BP+6 
; ARG: a TAM: 2 POS: BP--2 
;     ---=== teste.hcb:62:21 ===---
;     ---=== teste.hcb:121:13 ===---
;     ---=== teste.hcb:64:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _vga_mode640x480x2
;     ---=== teste.hcb:65:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _application_initialize
;     ---=== teste.hcb:67:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:67:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _form_initialize
add sp, 4
;     ---=== teste.hcb:68:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:68:24 ===---
mov ax, 30
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:69:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:69:25 ===---
mov ax, 10
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:70:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:70:26 ===---
mov ax, 200
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:71:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:71:27 ===---
mov ax, 110
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:72:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:72:25 ===---
push cs
pop es
mov di, ROTULO128
jmp ROTULO127
ROTULO128:
db 18
db 78,97,118,101,103,117,101,32,117,115,97,110,100,111,32,84,65,66
times 1 db 0
ROTULO127:
push es
push di
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
es pop word [di+10]
es pop word [di+10+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:74:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:74:26 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_helloworldlabel+2]
pop es
cs mov di, [_program_helloworldlabel]
push es
push di
push cs
call _label_initialize
add sp, 4
;     ---=== teste.hcb:75:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:75:37 ===---
push cs
pop es
mov di, ROTULO130
jmp ROTULO129
ROTULO130:
db 11
db 72,69,76,76,79,32,87,79,82,76,68
times 1 db 0
ROTULO129:
push es
push di
;     ---=== teste.hcb:75:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_helloworldtext+2]
pop es
cs mov di, [_program_helloworldtext]
push es
push di
push cs
call _string_copy
add sp, 8
;     ---=== teste.hcb:76:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:76:33 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_helloworldtext+2]
pop es
cs mov di, [_program_helloworldtext]
push es
push di
cs push word [_program_helloworldlabel+2]
pop es
cs mov di, [_program_helloworldlabel]
es pop word [di+10]
es pop word [di+10+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:77:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:77:31 ===---
mov ax, 8
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:78:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:78:32 ===---
mov ax, 4
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:79:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:79:33 ===---
mov ax, 200
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:80:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:80:34 ===---
mov ax, 10
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:81:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:81:35 ===---
mov ax, 1
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:82:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:82:31 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== teste.hcb:82:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _control_add
add sp, 8
;     ---=== teste.hcb:84:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:84:27 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_okbutton+2]
pop es
cs mov di, [_program_okbutton]
push es
push di
push cs
call _button_initialize
add sp, 4
;     ---=== teste.hcb:85:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:85:25 ===---
push cs
pop es
mov di, ROTULO132
jmp ROTULO131
ROTULO132:
db 20
db 69,110,116,101,114,32,97,113,117,105,32,112,97,114,97,32,83,65,73,82
times 1 db 0
ROTULO131:
push es
push di
cs push word [_program_okbutton+2]
pop es
cs mov di, [_program_okbutton]
es pop word [di+10]
es pop word [di+10+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:86:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:86:24 ===---
mov ax, 21
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:87:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:87:25 ===---
mov ax, 4
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:88:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:88:26 ===---
mov ax, 190
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:89:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:89:27 ===---
mov ax, 20
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:90:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:90:28 ===---
mov ax, 1
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:91:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:91:31 ===---
push cs
pop es
mov di, _program_okbutton_onkeypress
push es
push di
cs push word [_program_okbutton+2]
pop es
cs mov di, [_program_okbutton]
es pop word [di+43]
es pop word [di+43+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:92:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:92:28 ===---
push cs
pop es
mov di, _program_okbutton_onclick
push es
push di
cs push word [_program_okbutton+2]
pop es
cs mov di, [_program_okbutton]
es pop word [di+39]
es pop word [di+39+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:93:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:93:31 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== teste.hcb:93:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _control_add
add sp, 8
;     ---=== teste.hcb:95:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:95:28 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_temptextbox+2]
pop es
cs mov di, [_program_temptextbox]
push es
push di
push cs
call _textbox_initialize
add sp, 4
;     ---=== teste.hcb:96:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:96:31 ===---
push cs
pop es
mov di, ROTULO134
jmp ROTULO133
ROTULO134:
db 20
db 68,105,103,105,116,101,32,115,101,117,32,110,111,109,101,32,97,113,117,105
times 1 db 0
ROTULO133:
push es
push di
;     ---=== teste.hcb:96:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_temptext+2]
pop es
cs mov di, [_program_temptext]
push es
push di
push cs
call _string_copy
add sp, 8
;     ---=== teste.hcb:97:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:97:28 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_temptext+2]
pop es
cs mov di, [_program_temptext]
push es
push di
cs push word [_program_temptextbox+2]
pop es
cs mov di, [_program_temptextbox]
es pop word [di+10]
es pop word [di+10+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:98:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:98:27 ===---
mov ax, 43
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:99:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:99:28 ===---
mov ax, 4
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:100:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:100:29 ===---
mov ax, 190
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:101:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:101:30 ===---
mov ax, 20
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:102:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:102:31 ===---
mov ax, 1
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:103:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:103:34 ===---
push cs
pop es
mov di, _program_temptextbox_onkeypress
push es
push di
cs push word [_program_temptextbox+2]
pop es
cs mov di, [_program_temptextbox]
es pop word [di+43]
es pop word [di+43+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:104:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:104:31 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== teste.hcb:104:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _control_add
add sp, 8
;     ---=== teste.hcb:106:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:106:27 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_copiabutton+2]
pop es
cs mov di, [_program_copiabutton]
push es
push di
push cs
call _button_initialize
add sp, 4
;     ---=== teste.hcb:107:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:107:28 ===---
push cs
pop es
mov di, ROTULO136
jmp ROTULO135
ROTULO136:
db 13
db 65,112,108,105,99,97,114,32,84,101,120,116,111
times 1 db 0
ROTULO135:
push es
push di
cs push word [_program_copiabutton+2]
pop es
cs mov di, [_program_copiabutton]
es pop word [di+10]
es pop word [di+10+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:108:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:108:27 ===---
mov ax, 66
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:109:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:109:28 ===---
mov ax, 4
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:110:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:110:29 ===---
mov ax, 190
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:111:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:111:30 ===---
mov ax, 20
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:112:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:112:31 ===---
mov ax, 1
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:113:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:113:31 ===---
push cs
pop es
mov di, _program_copiabutton_onclick
push es
push di
cs push word [_program_copiabutton+2]
pop es
cs mov di, [_program_copiabutton]
es pop word [di+39]
es pop word [di+39+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:114:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:114:31 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== teste.hcb:114:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _control_add
add sp, 8
;     ---=== teste.hcb:116:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _info_exibe
;     ---=== teste.hcb:118:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:118:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _application_run
add sp, 4
;     ---=== teste.hcb:120:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _graphics_mode80x25x16
;     ---=== teste.hcb:122:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 4
;     ---=== teste.hcb:123:9 ===---
;     ---=== teste.hcb:123:14 ===---
;     ---=== teste.hcb:123:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== teste.hcb:123:17 ===---
mov ax, 1
mov bx, ax
pop ax
cmp ax, bx
je ROTULO139
jmp ROTULO140
ROTULO139:
mov ax, 65535
jmp ROTULO141
ROTULO140:
xor ax, ax
ROTULO141:
cmp ax, 0
jne ROTULO137
jmp ROTULO138
ROTULO137:
;     ---=== teste.hcb:124:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:124:27 ===---
push cs
pop es
mov di, ROTULO143
jmp ROTULO142
ROTULO143:
db 4
db 105,102,32,49
times 1 db 0
ROTULO142:
push es
push di
push cs
call _console_write
add sp, 4
jmp ROTULO144
ROTULO138:
;     ---=== teste.hcb:125:9 ===---
;     ---=== teste.hcb:125:18 ===---
;     ---=== teste.hcb:125:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== teste.hcb:125:21 ===---
mov ax, 2
mov bx, ax
pop ax
cmp ax, bx
je ROTULO147
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
;     ---=== teste.hcb:126:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:126:27 ===---
push cs
pop es
mov di, ROTULO151
jmp ROTULO150
ROTULO151:
db 4
db 105,102,32,50
times 1 db 0
ROTULO150:
push es
push di
push cs
call _console_write
add sp, 4
jmp ROTULO152
ROTULO146:
;     ---=== teste.hcb:127:9 ===---
;     ---=== teste.hcb:127:18 ===---
;     ---=== teste.hcb:127:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== teste.hcb:127:21 ===---
mov ax, 3
mov bx, ax
pop ax
cmp ax, bx
je ROTULO155
jmp ROTULO156
ROTULO155:
mov ax, 65535
jmp ROTULO157
ROTULO156:
xor ax, ax
ROTULO157:
cmp ax, 0
jne ROTULO153
jmp ROTULO154
ROTULO153:
;     ---=== teste.hcb:128:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:128:27 ===---
push cs
pop es
mov di, ROTULO159
jmp ROTULO158
ROTULO159:
db 4
db 105,102,32,51
times 1 db 0
ROTULO158:
push es
push di
push cs
call _console_write
add sp, 4
jmp ROTULO160
ROTULO154:
;     ---=== teste.hcb:130:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:130:27 ===---
push cs
pop es
mov di, ROTULO162
jmp ROTULO161
ROTULO162:
db 4
db 101,108,115,101
times 1 db 0
ROTULO161:
push es
push di
push cs
call _console_write
add sp, 4
ROTULO160:
ROTULO152:
ROTULO144:
ROTULO126:
mov sp, bp
pop bp
FIM_program_main:
retf
;     ---=== teste.hcb:135:9 ===---
_program_okbutton_onkeypress:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
; ARG: ptr TAM: 4 POS: BP--4 
;     ---=== teste.hcb:135:29 ===---
;     ---=== teste.hcb:135:46 ===---
;     ---=== teste.hcb:137:13 ===---
;     ---=== teste.hcb:136:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:136:37 ===---
push cs
pop es
mov di, ROTULO165
jmp ROTULO164
ROTULO165:
db 16
db 80,82,69,83,83,73,79,78,65,68,79,32,32,32,32,32
times 1 db 0
ROTULO164:
push es
push di
;     ---=== teste.hcb:136:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_helloworldtext+2]
pop es
cs mov di, [_program_helloworldtext]
push es
push di
push cs
call _string_copy
add sp, 8
;     ---=== teste.hcb:138:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== teste.hcb:138:15 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_helloworldtext+2]
pop es
cs mov di, [_program_helloworldtext]
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== teste.hcb:139:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== teste.hcb:139:21 ===---
;     ---=== teste.hcb:139:23 ===---
mov ax, 14
push ax
;     ---=== teste.hcb:139:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
pop bx
add ax, bx
mov [bp+-4], ax
;     ---=== teste.hcb:140:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== teste.hcb:140:15 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov [di+0], al
;     ---=== teste.hcb:141:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:141:24 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_helloworldlabel+2]
pop es
cs mov di, [_program_helloworldlabel]
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO163:
mov sp, bp
pop bp
FIM_program_okbutton_onkeypress:
retf
;     ---=== teste.hcb:144:9 ===---
_program_okbutton_onclick:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== teste.hcb:144:26 ===---
;     ---=== teste.hcb:144:43 ===---
;     ---=== teste.hcb:145:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:145:26 ===---
xor ax, ax
push ax
push cs
call _application_exit
add sp, 2
ROTULO166:
mov sp, bp
pop bp
FIM_program_okbutton_onclick:
retf
;     ---=== teste.hcb:148:9 ===---
_program_dizhello:
;     ---=== teste.hcb:149:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:149:37 ===---
push cs
pop es
mov di, ROTULO169
jmp ROTULO168
ROTULO169:
db 6
db 72,101,108,108,111,32
times 1 db 0
ROTULO168:
push es
push di
;     ---=== teste.hcb:149:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_helloworldtext+2]
pop es
cs mov di, [_program_helloworldtext]
push es
push di
push cs
call _string_copy
add sp, 8
;     ---=== teste.hcb:150:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:150:39 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_temptext+2]
pop es
cs mov di, [_program_temptext]
push es
push di
;     ---=== teste.hcb:150:23 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_helloworldtext+2]
pop es
cs mov di, [_program_helloworldtext]
push es
push di
push cs
call _string_concat
add sp, 8
;     ---=== teste.hcb:151:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:151:24 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_helloworldlabel+2]
pop es
cs mov di, [_program_helloworldlabel]
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO167:
FIM_program_dizhello:
retf
;     ---=== teste.hcb:154:9 ===---
_program_temptextbox_onkeypress:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== teste.hcb:154:32 ===---
;     ---=== teste.hcb:154:49 ===---
;     ---=== teste.hcb:155:9 ===---
;     ---=== teste.hcb:155:24 ===---
;     ---=== teste.hcb:155:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== teste.hcb:155:27 ===---
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
je ROTULO173
jmp ROTULO174
ROTULO173:
mov ax, 65535
jmp ROTULO175
ROTULO174:
xor ax, ax
ROTULO175:
cmp ax, 0
jne ROTULO171
jmp ROTULO172
ROTULO171:
;     ---=== teste.hcb:156:13 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _program_dizhello
;     ---=== teste.hcb:157:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:157:24 ===---
mov ax, 1
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov [di+7], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO172:
ROTULO170:
mov sp, bp
pop bp
FIM_program_temptextbox_onkeypress:
retf
;     ---=== teste.hcb:161:9 ===---
_program_copiabutton_onclick:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== teste.hcb:161:29 ===---
;     ---=== teste.hcb:161:46 ===---
;     ---=== teste.hcb:162:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _program_dizhello
ROTULO176:
mov sp, bp
pop bp
FIM_program_copiabutton_onclick:
retf
; MODULO FIM: program
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:2:8 ===---
; MODULO: vga
_vga:
db 7
db 86,71,65,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:3:9 ===---
_vga_video:
times 34 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:5:16 ===---
_vga_mode640x480x2:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:6:13 ===---
mov ax, 0x11
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:7:13 ===---
int 0x10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:8:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:8:23 ===---
mov ax, 640
cs push word [_vga_video+2]
pop es
cs mov di, [_vga_video]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:9:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:9:24 ===---
mov ax, 480
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:10:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:10:24 ===---
mov ax, 2
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:11:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:11:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:12:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:12:39 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _genericvideo_registerdrawline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:13:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:13:41 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_vga_video+2]
pop es
cs mov di, [_vga_video]
push es
push di
push cs
call _genericvideo_registerdrawcircle
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:14:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:14:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:15:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:15:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:16:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:16:25 ===---
push cs
pop es
mov di, _vga_refresh
push es
push di
cs push word [_vga_video+2]
pop es
cs mov di, [_vga_video]
es pop word [di+26]
es pop word [di+26+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:17:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:17:29 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _graphics_modemanual
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:18:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _genericvideo_register2colorspalette
ROTULO177:
FIM_vga_mode640x480x2:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:21:9 ===---
_vga_refresh:
push bp
mov bp, sp
; ARG: mode TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:21:17 ===---
ROTULO178:
mov sp, bp
pop bp
FIM_vga_refresh:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:24:9 ===---
_vga_drawpixel:
push bp
mov bp, sp
; ARG: mode TAM: 4 POS: BP+6 
; ARG: x TAM: 2 POS: BP+10 
; ARG: y TAM: 2 POS: BP+12 
; ARG: color TAM: 2 POS: BP+14 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:24:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:24:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:24:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:24:64 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:25:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:25:14 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:25:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:25:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO182
jmp ROTULO183
ROTULO182:
mov ax, 65535
jmp ROTULO184
ROTULO183:
xor ax, ax
ROTULO184:
cmp ax, 0
jne ROTULO180
jmp ROTULO181
ROTULO180:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:25:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:25:38 ===---
xor ax, ax
jmp ROTULO179
ROTULO181:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:26:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:26:14 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:26:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:26:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO187
jmp ROTULO188
ROTULO187:
mov ax, 65535
jmp ROTULO189
ROTULO188:
xor ax, ax
ROTULO189:
cmp ax, 0
jne ROTULO185
jmp ROTULO186
ROTULO185:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:26:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:26:39 ===---
xor ax, ax
jmp ROTULO179
ROTULO186:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:27:13 ===---
mov ax, 0xa000
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:28:13 ===---
mov es, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:29:13 ===---
mov ax, [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:30:13 ===---
mov bx, 80
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:31:13 ===---
mul bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:32:13 ===---
mov bx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:33:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:34:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:35:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:36:13 ===---
add ax, bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:37:13 ===---
mov di, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:38:13 ===---
mov cx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:39:13 ===---
and cx, 7
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:40:13 ===---
inc cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:41:13 ===---
mov ax, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:42:13 ===---
and ax, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:43:13 ===---
je .inverte
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:44:13 ===---
ror al, cl
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:45:13 ===---
es or [di], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:46:13 ===---
jmp .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:47:13 ===---
.inverte:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:48:13 ===---
mov al, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:49:13 ===---
ror al, cl
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:50:13 ===---
not al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:51:13 ===---
es and [di], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:52:13 ===---
.fim:
ROTULO179:
mov sp, bp
pop bp
FIM_vga_drawpixel:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:55:9 ===---
_vga_byteandor:
push bp
mov bp, sp
; ARG: mode TAM: 4 POS: BP+6 
; ARG: x TAM: 2 POS: BP+10 
; ARG: y TAM: 2 POS: BP+12 
; ARG: valueand TAM: 2 POS: BP+14 
; ARG: valueor TAM: 2 POS: BP+16 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:55:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:55:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:55:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:55:64 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:55:83 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:56:13 ===---
mov ax, 0xa000
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:57:13 ===---
mov es, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:58:13 ===---
mov ax, [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:59:13 ===---
mov bx, 80
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:60:13 ===---
mul bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:61:13 ===---
mov bx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:62:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:63:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:64:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:65:13 ===---
add ax, bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:66:13 ===---
mov di, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:67:13 ===---
mov ax, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:68:13 ===---
es and [di], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:69:13 ===---
mov ax, [bp+16]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:70:13 ===---
es or [di], al
ROTULO190:
mov sp, bp
pop bp
FIM_vga_byteandor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:73:9 ===---
_vga_byteset:
push bp
mov bp, sp
; ARG: mode TAM: 4 POS: BP+6 
; ARG: x TAM: 2 POS: BP+10 
; ARG: y TAM: 2 POS: BP+12 
; ARG: value TAM: 2 POS: BP+14 
; ARG: len TAM: 2 POS: BP+16 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:73:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:73:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:73:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:73:62 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:73:78 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:74:13 ===---
mov ax, 0xa000
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:75:13 ===---
mov es, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:76:13 ===---
mov ax, [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:77:13 ===---
mov bx, 80
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:78:13 ===---
mul bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:79:13 ===---
mov bx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:80:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:81:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:82:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:83:13 ===---
add ax, bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:84:13 ===---
mov di, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:85:13 ===---
mov ax, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:86:13 ===---
mov cx, [bp+16]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:87:13 ===---
cld
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:88:13 ===---
rep stosb
ROTULO191:
mov sp, bp
pop bp
FIM_vga_byteset:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:91:14 ===---
_vga_convertmask:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: first TAM: 2 POS: BP+6 
; ARG: last TAM: 2 POS: BP+8 
; ARG: ret TAM: 2 POS: BP--2 
; ARG: i TAM: 2 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:91:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:91:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:92:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:93:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:94:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:95:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:95:41 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:95:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:95:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:95:27 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov [bp+-4], ax
ROTULO193:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:95:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:95:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:95:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:95:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:95:41 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO199
jmp ROTULO200
ROTULO199:
mov ax, 65535
jmp ROTULO201
ROTULO200:
xor ax, ax
ROTULO201:
cmp ax, 0
jne ROTULO194
jmp ROTULO195
ROTULO194:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:96:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:96:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:96:19 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:96:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:96:27 ===---
mov ax, 128
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:96:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shr al, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:95:41 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO193
ROTULO195:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:98:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:98:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO192
ROTULO192:
mov sp, bp
pop bp
FIM_vga_convertmask:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:101:14 ===---
_vga_convertinversemask:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: first TAM: 2 POS: BP+6 
; ARG: last TAM: 2 POS: BP+8 
; ARG: ret TAM: 2 POS: BP--2 
; ARG: i TAM: 2 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:101:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:101:50 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:102:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:103:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:104:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:105:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:105:41 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:105:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:105:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:105:27 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov [bp+-4], ax
ROTULO209:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:105:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:105:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:105:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:105:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:105:41 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO215
jmp ROTULO216
ROTULO215:
mov ax, 65535
jmp ROTULO217
ROTULO216:
xor ax, ax
ROTULO217:
cmp ax, 0
jne ROTULO210
jmp ROTULO211
ROTULO210:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:106:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:106:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:106:19 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:106:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:106:27 ===---
mov ax, 128
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:106:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shl al, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:105:41 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO209
ROTULO211:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:108:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:108:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:108:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
not ax
ROTULO224:
mov ax, 65535
jmp ROTULO226
ROTULO225:
xor ax, ax
ROTULO226:
jmp ROTULO208
ROTULO208:
mov sp, bp
pop bp
FIM_vga_convertinversemask:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:111:9 ===---
_vga_drawrectangle:
push bp
mov bp, sp
sub sp, 14
push cs
call _os_stackcheck
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:111:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:111:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:111:56 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:111:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:111:84 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:111:98 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:111:121 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:112:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:113:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:114:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:115:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:116:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:117:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:118:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:119:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:119:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:119:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:119:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:119:13 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:119:24 ===---
mov ax, 24
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO230
jmp ROTULO231
ROTULO230:
mov ax, 65535
jmp ROTULO232
ROTULO231:
xor ax, ax
ROTULO232:
cmp ax, 0
jne ROTULO228
jmp ROTULO229
ROTULO228:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:120:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:120:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:120:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:120:35 ===---
mov ax, 65535
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO235
jmp ROTULO236
ROTULO235:
mov ax, 65535
jmp ROTULO237
ROTULO236:
xor ax, ax
ROTULO237:
cmp ax, 0
jne ROTULO233
jmp ROTULO234
ROTULO233:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:121:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:121:36 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:121:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:121:28 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:121:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
add ax, bx
mov [bp+-2], ax
ROTULO238:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:121:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:121:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:121:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:121:36 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:121:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO241
jmp ROTULO242
ROTULO241:
mov ax, 65535
jmp ROTULO243
ROTULO242:
xor ax, ax
ROTULO243:
cmp ax, 0
jne ROTULO239
jmp ROTULO240
ROTULO239:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:122:21 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:122:61 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:122:58 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:122:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:122:55 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:122:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:122:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:122:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:122:44 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:122:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:121:36 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
jmp ROTULO238
ROTULO240:
ROTULO234:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:125:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:125:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:125:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:125:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:125:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:125:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:126:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:126:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:126:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:126:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:126:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:126:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:127:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:127:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:127:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:127:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:127:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:127:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:128:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:128:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:128:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:128:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:128:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:128:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:129:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:129:18 ===---
xor ax, ax
jmp ROTULO227
ROTULO229:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:131:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:131:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:131:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:131:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:131:37 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:131:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:131:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:131:24 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
pop bx
sub ax, bx
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:132:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:133:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:133:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:133:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:133:20 ===---
xor ax, ax
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:133:27 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:133:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:133:35 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:133:34 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+-14], ax
ROTULO251:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:134:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:134:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:134:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:134:19 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jl ROTULO257
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:134:26 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:134:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:134:34 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:134:33 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+-14], ax
ROTULO256:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:135:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:135:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:135:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:135:23 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:136:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-10], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:137:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:137:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:137:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:137:18 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO265
jmp ROTULO266
ROTULO265:
mov ax, 65535
jmp ROTULO267
ROTULO266:
xor ax, ax
ROTULO267:
cmp ax, 0
jne ROTULO263
jmp ROTULO264
ROTULO263:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:137:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:137:34 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:137:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:137:53 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:137:49 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:137:46 ===---
xor ax, ax
push ax
push cs
call _vga_convertmask
add sp, 4
mov [bp+-12], ax
jmp ROTULO268
ROTULO264:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:137:61 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 0
ROTULO268:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:138:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:138:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:138:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:138:28 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO269
jmp ROTULO270
ROTULO269:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:139:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:139:21 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:139:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:139:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
push cs
call _vga_convertmask
add sp, 4
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:140:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:140:45 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:140:62 ===---
mov ax, 7
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:140:57 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
push cs
call _vga_convertmask
add sp, 4
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:140:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:140:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:140:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:140:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:141:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:141:45 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:141:62 ===---
mov ax, 7
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:141:57 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
push cs
call _vga_convertmask
add sp, 4
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:141:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:141:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:141:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:141:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
jmp ROTULO274
ROTULO270:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:143:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:143:45 ===---
xor ax, ax
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:143:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:143:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:143:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:143:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:144:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:144:45 ===---
xor ax, ax
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:144:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:144:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:144:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:144:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
ROTULO274:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:146:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:146:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:146:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:146:31 ===---
mov ax, 65535
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO277
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:147:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:147:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:147:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:147:36 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO280
jmp ROTULO281
ROTULO280:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:148:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:148:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:148:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:148:34 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:148:53 ===---
mov ax, 7
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:148:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:148:50 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:148:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
pop bx
add ax, bx
push ax
push cs
call _vga_convertmask
add sp, 4
mov bx, ax
pop ax
or ax, bx
mov [bp+-10], ax
ROTULO281:
jmp ROTULO288
ROTULO276:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:151:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:151:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:151:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:151:32 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:151:51 ===---
mov ax, 7
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:151:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:151:48 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:151:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
pop bx
add ax, bx
push ax
push cs
call _vga_convertmask
add sp, 4
mov bx, ax
pop ax
or ax, bx
mov [bp+-12], ax
ROTULO288:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:153:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:153:32 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:153:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:153:22 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:153:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
add ax, bx
mov [bp+-2], ax
ROTULO292:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:153:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:153:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:153:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:153:32 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:153:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO295
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:154:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:154:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:154:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:154:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:154:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:154:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:153:32 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
jmp ROTULO292
ROTULO294:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:156:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:156:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:156:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:156:31 ===---
mov ax, 65535
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO300
jmp ROTULO301
ROTULO300:
mov ax, 65535
jmp ROTULO302
ROTULO301:
xor ax, ax
ROTULO302:
cmp ax, 0
jne ROTULO298
jmp ROTULO299
ROTULO298:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:157:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:157:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:157:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:157:36 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO303
jmp ROTULO304
ROTULO303:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:158:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 255
jmp ROTULO308
ROTULO304:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:160:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 0
ROTULO308:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:162:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:162:27 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:162:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-2], ax
ROTULO309:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:162:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:162:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:162:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO312
jmp ROTULO313
ROTULO312:
mov ax, 65535
jmp ROTULO314
ROTULO313:
xor ax, ax
ROTULO314:
cmp ax, 0
jne ROTULO310
jmp ROTULO311
ROTULO310:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:163:17 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:163:68 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:163:70 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:163:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:163:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:163:57 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:163:52 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:163:65 ===---
mov ax, 3
mov cx, ax
pop ax
shr ax, cl
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:163:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:163:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:163:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:163:36 ===---
mov ax, 8
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:163:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:163:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteset
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:162:27 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
jmp ROTULO309
ROTULO311:
ROTULO299:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:167:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:167:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:167:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:167:23 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:168:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-10], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:169:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:169:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:169:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:169:18 ===---
mov ax, 7
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO320
jmp ROTULO321
ROTULO320:
mov ax, 65535
jmp ROTULO322
ROTULO321:
xor ax, ax
ROTULO322:
cmp ax, 0
jne ROTULO318
jmp ROTULO319
ROTULO318:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:169:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:169:34 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:169:53 ===---
mov ax, 7
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:169:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:169:50 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:169:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
pop bx
add ax, bx
push ax
push cs
call _vga_convertmask
add sp, 4
mov [bp+-12], ax
jmp ROTULO323
ROTULO319:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:169:61 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:169:70 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:169:87 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:169:82 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
push cs
call _vga_convertmask
add sp, 4
mov [bp+-12], ax
ROTULO323:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:170:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:170:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:170:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:170:28 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO324
jmp ROTULO325
ROTULO324:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:171:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:171:21 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:171:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:171:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
push cs
call _vga_convertmask
add sp, 4
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:172:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:172:45 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:172:60 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:172:57 ===---
xor ax, ax
push ax
push cs
call _vga_convertmask
add sp, 4
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:172:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:172:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:172:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:172:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:173:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:173:45 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:173:60 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:173:57 ===---
xor ax, ax
push ax
push cs
call _vga_convertmask
add sp, 4
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:173:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:173:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:173:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:173:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
jmp ROTULO329
ROTULO325:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:175:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:175:45 ===---
xor ax, ax
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:175:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:175:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:175:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:175:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:176:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:176:45 ===---
xor ax, ax
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:176:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:176:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:176:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:176:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
ROTULO329:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:178:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:178:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:178:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:178:18 ===---
mov ax, 1
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO332
jmp ROTULO333
ROTULO332:
mov ax, 65535
jmp ROTULO334
ROTULO333:
xor ax, ax
ROTULO334:
cmp ax, 0
jne ROTULO330
jmp ROTULO331
ROTULO330:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:179:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:179:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:179:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:179:35 ===---
mov ax, 65535
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO337
jmp ROTULO338
ROTULO337:
mov ax, 65535
jmp ROTULO339
ROTULO338:
xor ax, ax
ROTULO339:
cmp ax, 0
jne ROTULO335
jmp ROTULO336
ROTULO335:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:180:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:180:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:180:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:180:40 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO340
jmp ROTULO341
ROTULO340:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:181:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:181:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:181:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:181:38 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:181:56 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:181:57 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:181:53 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:181:50 ===---
xor ax, ax
push ax
push cs
call _vga_convertmask
add sp, 4
mov bx, ax
pop ax
or ax, bx
mov [bp+-10], ax
ROTULO341:
jmp ROTULO348
ROTULO336:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:184:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:184:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:184:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:184:36 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:184:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:184:55 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:184:51 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:184:48 ===---
xor ax, ax
push ax
push cs
call _vga_convertmask
add sp, 4
mov bx, ax
pop ax
or ax, bx
mov [bp+-12], ax
ROTULO348:
ROTULO331:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:187:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:187:32 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:187:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:187:22 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:187:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
add ax, bx
mov [bp+-2], ax
ROTULO352:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:187:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:187:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:187:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:187:32 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:187:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO355
jmp ROTULO356
ROTULO355:
mov ax, 65535
jmp ROTULO357
ROTULO356:
xor ax, ax
ROTULO357:
cmp ax, 0
jne ROTULO353
jmp ROTULO354
ROTULO353:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:188:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:188:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:188:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:188:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:188:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:188:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:187:32 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
jmp ROTULO352
ROTULO354:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:190:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:190:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:190:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:190:28 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO358
jmp ROTULO359
ROTULO358:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:191:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 255
jmp ROTULO363
ROTULO359:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:193:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 0
ROTULO363:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:195:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:195:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:195:63 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:195:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:195:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:195:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:195:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:195:58 ===---
mov ax, 3
mov cx, ax
pop ax
shr ax, cl
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:195:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:195:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:195:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:195:28 ===---
mov ax, 8
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:195:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:195:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteset
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:196:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:196:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:196:63 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:196:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:196:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:196:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:196:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:196:58 ===---
mov ax, 3
mov cx, ax
pop ax
shr ax, cl
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:196:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:196:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:196:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:196:28 ===---
mov ax, 8
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:196:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:196:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteset
add sp, 12
ROTULO227:
mov sp, bp
pop bp
FIM_vga_drawrectangle:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:199:9 ===---
_vga_clearscreen:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: mode TAM: 4 POS: BP+6 
; ARG: color TAM: 2 POS: BP+10 
; ARG: tmp TAM: 2 POS: BP--2 
; ARG: y TAM: 2 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:199:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:199:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:200:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:201:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:202:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:203:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:203:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-4], 0
ROTULO365:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:203:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:203:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:203:22 ===---
mov ax, 479
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO368
jmp ROTULO369
ROTULO368:
mov ax, 65535
jmp ROTULO370
ROTULO369:
xor ax, ax
ROTULO370:
cmp ax, 0
jne ROTULO366
jmp ROTULO367
ROTULO366:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:204:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:204:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:204:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:204:26 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO371
jmp ROTULO372
ROTULO371:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:204:33 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 170
ROTULO372:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:205:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:205:38 ===---
mov ax, 80
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:205:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:205:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:205:27 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:205:21 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteset
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:206:13 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:207:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:207:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:207:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:207:26 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO376
jmp ROTULO377
ROTULO376:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:207:33 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 85
ROTULO377:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:208:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:208:38 ===---
mov ax, 80
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:208:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:208:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:208:27 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:208:21 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteset
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/VGA.hcb:203:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO365
ROTULO367:
ROTULO364:
mov sp, bp
pop bp
FIM_vga_clearscreen:
retf
; MODULO FIM: vga
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:138:8 ===---
; MODULO: genericvideo
_genericvideo:
db 18
db 83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:139:9 ===---
_genericvideo_palette:
times 46 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:141:16 ===---
_genericvideo_register2colorspalette:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:142:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:142:25 ===---
xor ax, ax
cs push word [_genericvideo_palette+2]
pop es
cs mov di, [_genericvideo_palette]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:143:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:143:24 ===---
xor ax, ax
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:144:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:144:25 ===---
xor ax, ax
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:145:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:145:24 ===---
xor ax, ax
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:146:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:146:23 ===---
xor ax, ax
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:147:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:147:27 ===---
xor ax, ax
es mov [di+10], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:148:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:148:25 ===---
xor ax, ax
es mov [di+12], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:149:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:149:29 ===---
mov ax, 1
es mov [di+14], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:150:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:150:24 ===---
xor ax, ax
es mov [di+16], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:151:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:151:29 ===---
mov ax, 1
es mov [di+18], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:152:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:152:30 ===---
mov ax, 1
es mov [di+20], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:153:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:153:29 ===---
mov ax, 1
es mov [di+22], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:154:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:154:28 ===---
mov ax, 1
es mov [di+24], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:155:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:155:32 ===---
mov ax, 1
es mov [di+26], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:156:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:156:26 ===---
mov ax, 1
es mov [di+28], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:157:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:157:25 ===---
mov ax, 1
es mov [di+30], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:158:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:158:31 ===---
mov ax, 65535
es mov [di+32], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:159:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:159:38 ===---
mov ax, 1
es mov [di+34], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:160:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:160:25 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _colors_register
add sp, 4
ROTULO381:
FIM_genericvideo_register2colorspalette:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:163:16 ===---
_genericvideo_register16colorspalette:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:164:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:164:25 ===---
xor ax, ax
cs push word [_genericvideo_palette+2]
pop es
cs mov di, [_genericvideo_palette]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:165:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:165:24 ===---
mov ax, 1
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:166:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:166:25 ===---
mov ax, 2
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:167:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:167:24 ===---
mov ax, 3
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:168:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:168:23 ===---
mov ax, 4
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:169:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:169:27 ===---
mov ax, 5
es mov [di+10], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:170:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:170:25 ===---
mov ax, 6
es mov [di+12], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:171:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:171:29 ===---
mov ax, 7
es mov [di+14], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:172:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:172:24 ===---
mov ax, 8
es mov [di+16], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:173:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:173:29 ===---
mov ax, 9
es mov [di+18], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:174:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:174:30 ===---
mov ax, 10
es mov [di+20], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:175:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:175:29 ===---
mov ax, 11
es mov [di+22], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:176:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:176:28 ===---
mov ax, 12
es mov [di+24], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:177:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:177:32 ===---
mov ax, 13
es mov [di+26], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:178:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:178:26 ===---
mov ax, 14
es mov [di+28], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:179:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:179:25 ===---
mov ax, 15
es mov [di+30], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:180:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:180:31 ===---
mov ax, 65535
es mov [di+32], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:181:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:181:38 ===---
mov ax, 1
es mov [di+34], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:182:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:182:25 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _colors_register
add sp, 4
ROTULO382:
FIM_genericvideo_register16colorspalette:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:185:16 ===---
_genericvideo_registerdrawline:
push bp
mov bp, sp
; ARG: mode TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:185:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:186:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:186:25 ===---
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
ROTULO383:
mov sp, bp
pop bp
FIM_genericvideo_registerdrawline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:189:16 ===---
_genericvideo_registerdrawcircle:
push bp
mov bp, sp
; ARG: mode TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:189:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:190:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:190:27 ===---
push cs
pop es
mov di, _genericvideo_drawcircle
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+14]
es pop word [di+14+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO384:
mov sp, bp
pop bp
FIM_genericvideo_registerdrawcircle:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:193:9 ===---
_genericvideo_drawline:
push bp
mov bp, sp
sub sp, 16
push cs
call _os_stackcheck
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:193:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:193:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:193:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:193:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:193:79 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:193:93 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:194:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:195:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:196:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:197:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:198:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:199:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:200:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:201:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:202:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:202:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:202:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:202:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO388
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:203:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:203:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:203:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:203:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
sub ax, bx
mov [bp+-8], ax
jmp ROTULO391
ROTULO387:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:205:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:205:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:205:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:205:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
mov [bp+-8], ax
ROTULO391:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:207:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:207:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:207:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:207:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO394
jmp ROTULO395
ROTULO394:
mov ax, 65535
jmp ROTULO396
ROTULO395:
xor ax, ax
ROTULO396:
cmp ax, 0
jne ROTULO392
jmp ROTULO393
ROTULO392:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:208:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:208:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:208:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:208:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
sub ax, bx
mov [bp+-10], ax
jmp ROTULO397
ROTULO393:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:210:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:210:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:210:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:210:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
sub ax, bx
mov [bp+-10], ax
ROTULO397:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:212:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:212:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:212:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:212:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
mov bx, ax
pop ax
cmp ax, bx
jg ROTULO400
jmp ROTULO401
ROTULO400:
mov ax, 65535
jmp ROTULO402
ROTULO401:
xor ax, ax
ROTULO402:
cmp ax, 0
jne ROTULO398
jmp ROTULO399
ROTULO398:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:213:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:213:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:213:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:213:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO405
jmp ROTULO406
ROTULO405:
mov ax, 65535
jmp ROTULO407
ROTULO406:
xor ax, ax
ROTULO407:
cmp ax, 0
jne ROTULO403
jmp ROTULO404
ROTULO403:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:214:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:214:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:215:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:215:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov [bp+10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:216:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:216:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
mov [bp+14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:217:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:217:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:218:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:218:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov [bp+12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:219:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:219:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
mov [bp+16], ax
ROTULO404:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:221:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:221:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:221:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:221:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO410
jmp ROTULO411
ROTULO410:
mov ax, 65535
jmp ROTULO412
ROTULO411:
xor ax, ax
ROTULO412:
cmp ax, 0
jne ROTULO408
jmp ROTULO409
ROTULO408:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:222:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
jmp ROTULO413
ROTULO409:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:224:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:224:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:224:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:224:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO416
jmp ROTULO417
ROTULO416:
mov ax, 65535
jmp ROTULO418
ROTULO417:
xor ax, ax
ROTULO418:
cmp ax, 0
jne ROTULO414
jmp ROTULO415
ROTULO414:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:225:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
jmp ROTULO419
ROTULO415:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:227:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:227:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:227:28 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:227:27 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+-2], ax
ROTULO419:
ROTULO413:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:230:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:230:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:231:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:231:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:232:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:232:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:232:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:232:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:232:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:232:25 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
pop bx
sub ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:233:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:233:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:233:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:233:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:233:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:233:32 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:234:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:234:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:234:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:234:27 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:235:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:235:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:235:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:235:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:235:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+6]
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:236:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:236:31 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:236:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:236:26 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:236:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
mov [bp+-14], ax
ROTULO420:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:236:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:236:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:236:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO423
jmp ROTULO424
ROTULO423:
mov ax, 65535
jmp ROTULO425
ROTULO424:
xor ax, ax
ROTULO425:
cmp ax, 0
jne ROTULO421
jmp ROTULO422
ROTULO421:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:237:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:237:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:237:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:237:25 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jge ROTULO428
jmp ROTULO429
ROTULO428:
mov ax, 65535
jmp ROTULO430
ROTULO429:
xor ax, ax
ROTULO430:
cmp ax, 0
jne ROTULO426
jmp ROTULO427
ROTULO426:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:238:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:238:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:238:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:238:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
pop bx
add ax, bx
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:239:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:239:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:239:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:239:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
mov [bp+-12], ax
jmp ROTULO431
ROTULO427:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:241:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:241:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:241:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:241:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
mov [bp+-12], ax
ROTULO431:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:243:17 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:243:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:243:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:243:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:243:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+6]
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:236:31 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-14]
jmp ROTULO420
ROTULO422:
jmp ROTULO432
ROTULO399:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:246:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:246:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:246:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:246:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO435
jmp ROTULO436
ROTULO435:
mov ax, 65535
jmp ROTULO437
ROTULO436:
xor ax, ax
ROTULO437:
cmp ax, 0
jne ROTULO433
jmp ROTULO434
ROTULO433:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:247:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:247:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:248:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:248:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov [bp+10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:249:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:249:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
mov [bp+14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:250:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:250:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:251:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:251:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov [bp+12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:252:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:252:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
mov [bp+16], ax
ROTULO434:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:254:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:254:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:254:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:254:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO440
jmp ROTULO441
ROTULO440:
mov ax, 65535
jmp ROTULO442
ROTULO441:
xor ax, ax
ROTULO442:
cmp ax, 0
jne ROTULO438
jmp ROTULO439
ROTULO438:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:255:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
jmp ROTULO443
ROTULO439:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:257:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:257:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:257:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:257:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO446
jmp ROTULO447
ROTULO446:
mov ax, 65535
jmp ROTULO448
ROTULO447:
xor ax, ax
ROTULO448:
cmp ax, 0
jne ROTULO444
jmp ROTULO445
ROTULO444:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:258:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
jmp ROTULO449
ROTULO445:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:260:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:260:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:260:28 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:260:27 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+-2], ax
ROTULO449:
ROTULO443:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:263:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:263:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:264:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:264:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:265:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:265:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:265:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:265:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:265:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:265:25 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
pop bx
sub ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:32 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:267:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:267:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:267:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:267:27 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:268:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:268:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:268:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:268:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:268:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+6]
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:269:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:269:31 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:269:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:269:26 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:269:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
add ax, bx
mov [bp+-16], ax
ROTULO450:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:269:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:269:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:269:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO453
jmp ROTULO454
ROTULO453:
mov ax, 65535
jmp ROTULO455
ROTULO454:
xor ax, ax
ROTULO455:
cmp ax, 0
jne ROTULO451
jmp ROTULO452
ROTULO451:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:270:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:270:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:270:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:270:25 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jge ROTULO458
jmp ROTULO459
ROTULO458:
mov ax, 65535
jmp ROTULO460
ROTULO459:
xor ax, ax
ROTULO460:
cmp ax, 0
jne ROTULO456
jmp ROTULO457
ROTULO456:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:271:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:271:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:271:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:271:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
pop bx
add ax, bx
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:272:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:272:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:272:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:272:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
mov [bp+-12], ax
jmp ROTULO461
ROTULO457:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:274:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:274:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:274:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:274:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
mov [bp+-12], ax
ROTULO461:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:276:17 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:276:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:276:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:276:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:276:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+6]
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:269:31 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-16]
jmp ROTULO450
ROTULO452:
ROTULO432:
ROTULO385:
mov sp, bp
pop bp
FIM_genericvideo_drawline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:281:9 ===---
_genericvideo_drawcircle:
push bp
mov bp, sp
sub sp, 6
push cs
call _os_stackcheck
; ARG: mode TAM: 4 POS: BP+6 
; ARG: xm TAM: 2 POS: BP+10 
; ARG: ym TAM: 2 POS: BP+12 
; ARG: r TAM: 2 POS: BP+14 
; ARG: bordercolor TAM: 2 POS: BP+16 
; ARG: backgroundcolor TAM: 2 POS: BP+18 
; ARG: x TAM: 2 POS: BP--2 
; ARG: y TAM: 2 POS: BP--4 
; ARG: err TAM: 2 POS: BP--6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:281:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:281:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:281:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:281:67 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:281:80 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:281:103 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:282:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:283:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:284:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:285:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:285:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:285:14 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:285:13 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:286:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-4], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:287:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:287:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:287:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:287:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:287:24 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:287:15 ===---
mov ax, 2
pop bx
sub ax, bx
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:288:14 ===---
jmp drawcirclestart
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:289:9 ===---
ROTULO463:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:289:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:289:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:289:20 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO466
jmp ROTULO467
ROTULO466:
mov ax, 65535
jmp ROTULO468
ROTULO467:
xor ax, ax
ROTULO468:
cmp ax, 0
jne ROTULO464
jmp ROTULO465
ROTULO464:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:290:13 ===---
drawcirclestart:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:291:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:291:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:291:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:291:35 ===---
mov ax, 65535
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO471
jmp ROTULO472
ROTULO471:
mov ax, 65535
jmp ROTULO473
ROTULO472:
xor ax, ax
ROTULO473:
cmp ax, 0
jne ROTULO469
jmp ROTULO470
ROTULO469:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:17 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:59 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:56 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:53 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:292:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
sub ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:17 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:59 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:56 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:53 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:293:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
sub ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
ROTULO470:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:295:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:295:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:295:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:295:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:295:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:295:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:295:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:295:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
sub ax, bx
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:296:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:296:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:296:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:296:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:296:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:296:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:296:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:296:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
sub ax, bx
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:297:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:297:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:297:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:297:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:297:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:297:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:297:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:297:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:298:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:298:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:298:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:298:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:298:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:298:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:298:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:298:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:299:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:299:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov [bp+14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:300:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:300:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:300:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:300:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO476
jmp ROTULO477
ROTULO476:
mov ax, 65535
jmp ROTULO478
ROTULO477:
xor ax, ax
ROTULO478:
cmp ax, 0
jne ROTULO474
jmp ROTULO475
ROTULO474:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:301:17 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:302:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:302:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:302:41 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:302:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:302:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:302:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:302:36 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:302:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+-6], ax
ROTULO475:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:304:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:304:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:304:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:304:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:304:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO484
jmp ROTULO485
ROTULO484:
mov ax, 65535
jmp ROTULO486
ROTULO485:
xor ax, ax
ROTULO486:
cmp ax, 0
jne ROTULO481
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:304:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:304:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:304:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO487
jmp ROTULO488
ROTULO487:
mov ax, 65535
jmp ROTULO489
ROTULO488:
xor ax, ax
ROTULO489:
cmp ax, 0
je ROTULO482
ROTULO481:
mov ax, 65535
jmp ROTULO483
ROTULO482:
xor ax, ax
ROTULO483:
cmp ax, 0
jne ROTULO479
jmp ROTULO480
ROTULO479:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:305:17 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:306:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:306:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:306:41 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:306:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:306:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:306:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:306:36 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:306:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+-6], ax
ROTULO480:
jmp ROTULO463
ROTULO465:
ROTULO462:
mov sp, bp
pop bp
FIM_genericvideo_drawcircle:
retf
; MODULO FIM: genericvideo
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:44:8 ===---
; MODULO: graphics
_graphics:
db 18
db 83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:45:9 ===---
_graphics_active:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:46:9 ===---
_graphics_video:
times 34 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:48:16 ===---
_graphics_drawpixel:
push bp
mov bp, sp
; ARG: x TAM: 2 POS: BP+6 
; ARG: y TAM: 2 POS: BP+8 
; ARG: color TAM: 2 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:48:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:48:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:48:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:49:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:49:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:49:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:49:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO493
jmp ROTULO494
ROTULO493:
mov ax, 65535
jmp ROTULO495
ROTULO494:
xor ax, ax
ROTULO495:
cmp ax, 0
jne ROTULO491
jmp ROTULO492
ROTULO491:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:49:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 49
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO492:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:50:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:50:14 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:50:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:50:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO498
jmp ROTULO499
ROTULO498:
mov ax, 65535
jmp ROTULO500
ROTULO499:
xor ax, ax
ROTULO500:
cmp ax, 0
jne ROTULO496
jmp ROTULO497
ROTULO496:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:50:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:50:39 ===---
xor ax, ax
jmp ROTULO490
ROTULO497:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:51:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:51:14 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:51:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:51:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO503
jmp ROTULO504
ROTULO503:
mov ax, 65535
jmp ROTULO505
ROTULO504:
xor ax, ax
ROTULO505:
cmp ax, 0
jne ROTULO501
jmp ROTULO502
ROTULO501:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:51:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:51:40 ===---
xor ax, ax
jmp ROTULO490
ROTULO502:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:52:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:52:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:52:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:52:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:52:9 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
push es
push di
es call far [di+6]
add sp, 10
ROTULO490:
mov sp, bp
pop bp
FIM_graphics_drawpixel:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:16 ===---
_graphics_drawline:
push bp
mov bp, sp
; ARG: x1 TAM: 2 POS: BP+6 
; ARG: y1 TAM: 2 POS: BP+8 
; ARG: x2 TAM: 2 POS: BP+10 
; ARG: y2 TAM: 2 POS: BP+12 
; ARG: color TAM: 2 POS: BP+14 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:67 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:81 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:56:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:56:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:56:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:56:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO509
jmp ROTULO510
ROTULO509:
mov ax, 65535
jmp ROTULO511
ROTULO510:
xor ax, ax
ROTULO511:
cmp ax, 0
jne ROTULO507
jmp ROTULO508
ROTULO507:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:56:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 56
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO508:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:57:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:57:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:57:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:57:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO514
jmp ROTULO515
ROTULO514:
mov ax, 65535
jmp ROTULO516
ROTULO515:
xor ax, ax
ROTULO516:
cmp ax, 0
jne ROTULO512
jmp ROTULO513
ROTULO512:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:57:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:57:40 ===---
xor ax, ax
jmp ROTULO506
ROTULO513:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:58:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:58:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:58:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:58:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO519
jmp ROTULO520
ROTULO519:
mov ax, 65535
jmp ROTULO521
ROTULO520:
xor ax, ax
ROTULO521:
cmp ax, 0
jne ROTULO517
jmp ROTULO518
ROTULO517:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:58:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:58:41 ===---
xor ax, ax
jmp ROTULO506
ROTULO518:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:59:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:59:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:59:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:59:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO524
jmp ROTULO525
ROTULO524:
mov ax, 65535
jmp ROTULO526
ROTULO525:
xor ax, ax
ROTULO526:
cmp ax, 0
jne ROTULO522
jmp ROTULO523
ROTULO522:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:59:35 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:59:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:59:54 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:59:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
sub ax, bx
mov [bp+10], ax
ROTULO523:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:60:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:60:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:60:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:60:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO529
jmp ROTULO530
ROTULO529:
mov ax, 65535
jmp ROTULO531
ROTULO530:
xor ax, ax
ROTULO531:
cmp ax, 0
jne ROTULO527
jmp ROTULO528
ROTULO527:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:60:36 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:60:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:60:56 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:60:41 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
sub ax, bx
mov [bp+12], ax
ROTULO528:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:9 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
push es
push di
es call far [di+18]
add sp, 14
ROTULO506:
mov sp, bp
pop bp
FIM_graphics_drawline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:16 ===---
_graphics_drawrectangle:
push bp
mov bp, sp
; ARG: x1 TAM: 2 POS: BP+6 
; ARG: y1 TAM: 2 POS: BP+8 
; ARG: x2 TAM: 2 POS: BP+10 
; ARG: y2 TAM: 2 POS: BP+12 
; ARG: bordercolor TAM: 2 POS: BP+14 
; ARG: backgroundcolor TAM: 2 POS: BP+16 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:58 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:72 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:86 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:109 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:65:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:65:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:65:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:65:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO535
jmp ROTULO536
ROTULO535:
mov ax, 65535
jmp ROTULO537
ROTULO536:
xor ax, ax
ROTULO537:
cmp ax, 0
jne ROTULO533
jmp ROTULO534
ROTULO533:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:65:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 65
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO534:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:66:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:66:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:66:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:66:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO540
jmp ROTULO541
ROTULO540:
mov ax, 65535
jmp ROTULO542
ROTULO541:
xor ax, ax
ROTULO542:
cmp ax, 0
jne ROTULO538
jmp ROTULO539
ROTULO538:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:66:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:66:40 ===---
xor ax, ax
jmp ROTULO532
ROTULO539:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:67:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:67:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:67:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:67:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO545
jmp ROTULO546
ROTULO545:
mov ax, 65535
jmp ROTULO547
ROTULO546:
xor ax, ax
ROTULO547:
cmp ax, 0
jne ROTULO543
jmp ROTULO544
ROTULO543:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:67:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:67:41 ===---
xor ax, ax
jmp ROTULO532
ROTULO544:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:68:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:68:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:68:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:68:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO550
jmp ROTULO551
ROTULO550:
mov ax, 65535
jmp ROTULO552
ROTULO551:
xor ax, ax
ROTULO552:
cmp ax, 0
jne ROTULO548
jmp ROTULO549
ROTULO548:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:68:35 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:68:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:68:54 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:68:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
sub ax, bx
mov [bp+10], ax
ROTULO549:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:69:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:69:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:69:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:69:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO555
jmp ROTULO556
ROTULO555:
mov ax, 65535
jmp ROTULO557
ROTULO556:
xor ax, ax
ROTULO557:
cmp ax, 0
jne ROTULO553
jmp ROTULO554
ROTULO553:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:69:36 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:69:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:69:56 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:69:41 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
sub ax, bx
mov [bp+12], ax
ROTULO554:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:65 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:52 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:48 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:9 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
push es
push di
es call far [di+10]
add sp, 16
ROTULO532:
mov sp, bp
pop bp
FIM_graphics_drawrectangle:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:16 ===---
_graphics_drawcircle:
push bp
mov bp, sp
; ARG: xm TAM: 2 POS: BP+6 
; ARG: ym TAM: 2 POS: BP+8 
; ARG: r TAM: 2 POS: BP+10 
; ARG: bordercolor TAM: 2 POS: BP+12 
; ARG: backgroundcolor TAM: 2 POS: BP+14 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:68 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:91 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:74:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:74:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:74:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:74:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO561
jmp ROTULO562
ROTULO561:
mov ax, 65535
jmp ROTULO563
ROTULO562:
xor ax, ax
ROTULO563:
cmp ax, 0
jne ROTULO559
jmp ROTULO560
ROTULO559:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:74:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 74
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO560:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:13 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:24 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO566
jmp ROTULO567
ROTULO566:
mov ax, 65535
jmp ROTULO568
ROTULO567:
xor ax, ax
ROTULO568:
cmp ax, 0
jne ROTULO564
jmp ROTULO565
ROTULO564:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:75:46 ===---
xor ax, ax
jmp ROTULO558
ROTULO565:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:13 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:24 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO571
jmp ROTULO572
ROTULO571:
mov ax, 65535
jmp ROTULO573
ROTULO572:
xor ax, ax
ROTULO573:
cmp ax, 0
jne ROTULO569
jmp ROTULO570
ROTULO569:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:76:47 ===---
xor ax, ax
jmp ROTULO558
ROTULO570:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:77:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:77:57 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:77:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:77:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:77:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:77:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:77:9 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
push es
push di
es call far [di+14]
add sp, 14
ROTULO558:
mov sp, bp
pop bp
FIM_graphics_drawcircle:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:16 ===---
_graphics_drawtext:
push bp
mov bp, sp
; ARG: font TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: x1 TAM: 2 POS: BP+14 
; ARG: y1 TAM: 2 POS: BP+16 
; ARG: x2 TAM: 2 POS: BP+18 
; ARG: y2 TAM: 2 POS: BP+20 
; ARG: color TAM: 2 POS: BP+22 
; ARG: multiline TAM: 2 POS: BP+24 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:69 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:83 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:97 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:111 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:128 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:81:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:81:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:81:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:81:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO577
jmp ROTULO578
ROTULO577:
mov ax, 65535
jmp ROTULO579
ROTULO578:
xor ax, ax
ROTULO579:
cmp ax, 0
jne ROTULO575
jmp ROTULO576
ROTULO575:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:81:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 81
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO576:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:82:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:82:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:82:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:82:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO582
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:82:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:82:40 ===---
xor ax, ax
jmp ROTULO574
ROTULO581:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:83:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:83:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:83:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:83:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO587
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:83:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:83:41 ===---
xor ax, ax
jmp ROTULO574
ROTULO586:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:84:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:84:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:84:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:84:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO592
jmp ROTULO593
ROTULO592:
mov ax, 65535
jmp ROTULO594
ROTULO593:
xor ax, ax
ROTULO594:
cmp ax, 0
jne ROTULO590
jmp ROTULO591
ROTULO590:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:84:35 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:84:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:84:54 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:84:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
sub ax, bx
mov [bp+18], ax
ROTULO591:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO597
jmp ROTULO598
ROTULO597:
mov ax, 65535
jmp ROTULO599
ROTULO598:
xor ax, ax
ROTULO599:
cmp ax, 0
jne ROTULO595
jmp ROTULO596
ROTULO595:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:36 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:56 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:41 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
sub ax, bx
mov [bp+20], ax
ROTULO596:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:86:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:86:59 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:86:52 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:86:48 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:86:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:86:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:86:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:86:30 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:86:9 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+22]
add sp, 20
ROTULO574:
mov sp, bp
pop bp
FIM_graphics_drawtext:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:89:16 ===---
_graphics_calcfontsize:
push bp
mov bp, sp
; ARG: font TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: size TAM: 4 POS: BP+14 
; ARG: totalwidth TAM: 2 POS: BP+18 
; ARG: multiline TAM: 2 POS: BP+20 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:89:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:89:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:89:59 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:89:73 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:89:95 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:90:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:90:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:90:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:90:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO603
jmp ROTULO604
ROTULO603:
mov ax, 65535
jmp ROTULO605
ROTULO604:
xor ax, ax
ROTULO605:
cmp ax, 0
jne ROTULO601
jmp ROTULO602
ROTULO601:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:90:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 90
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO602:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:91:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:91:54 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:91:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:91:36 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+14+2]
pop es
mov di, [bp+14]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:91:30 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:91:9 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+26]
add sp, 16
ROTULO600:
mov sp, bp
pop bp
FIM_graphics_calcfontsize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:94:16 ===---
_graphics_clearscreen:
push bp
mov bp, sp
; ARG: color TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:94:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:95:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:95:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:95:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:95:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO609
jmp ROTULO610
ROTULO609:
mov ax, 65535
jmp ROTULO611
ROTULO610:
xor ax, ax
ROTULO611:
cmp ax, 0
jne ROTULO607
jmp ROTULO608
ROTULO607:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:95:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 95
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO608:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:96:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:96:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:96:9 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
push es
push di
es call far [di+22]
add sp, 6
ROTULO606:
mov sp, bp
pop bp
FIM_graphics_clearscreen:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:99:21 ===---
_graphics_getactive:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:100:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:100:16 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
jmp ROTULO612
ROTULO612:
FIM_graphics_getactive:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:103:21 ===---
_graphics_getwidth:
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
je ROTULO616
jmp ROTULO617
ROTULO616:
mov ax, 65535
jmp ROTULO618
ROTULO617:
xor ax, ax
ROTULO618:
cmp ax, 0
jne ROTULO614
jmp ROTULO615
ROTULO614:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:104:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 104
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO615:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:105:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:105:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
jmp ROTULO613
ROTULO613:
FIM_graphics_getwidth:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:108:21 ===---
_graphics_getheight:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:109:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:109:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:109:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:109:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO622
jmp ROTULO623
ROTULO622:
mov ax, 65535
jmp ROTULO624
ROTULO623:
xor ax, ax
ROTULO624:
cmp ax, 0
jne ROTULO620
jmp ROTULO621
ROTULO620:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:109:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 109
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO621:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:110:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:110:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
jmp ROTULO619
ROTULO619:
FIM_graphics_getheight:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:113:21 ===---
_graphics_getcolors:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:114:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:114:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:114:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:114:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO628
jmp ROTULO629
ROTULO628:
mov ax, 65535
jmp ROTULO630
ROTULO629:
xor ax, ax
ROTULO630:
cmp ax, 0
jne ROTULO626
jmp ROTULO627
ROTULO626:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:114:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 114
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO627:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:115:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:115:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+4]
jmp ROTULO625
ROTULO625:
FIM_graphics_getcolors:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:118:16 ===---
_graphics_mode80x25x16:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:119:9 ===---
; ACAO GRAVACAO - Grava em variavel
cs mov word [_graphics_active], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:120:13 ===---
mov ax, 3
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:121:13 ===---
int 0x10
ROTULO631:
FIM_graphics_mode80x25x16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:124:16 ===---
_graphics_modemanual:
push bp
mov bp, sp
; ARG: newmode TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:124:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:125:9 ===---
; ACAO GRAVACAO - Grava em variavel
cs mov word [_graphics_active], 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:126:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:126:19 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+6+2]
cs mov [_graphics_video+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:127:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:127:19 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
cs mov [_graphics_video], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:128:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _font_initialize
ROTULO632:
mov sp, bp
pop bp
FIM_graphics_modemanual:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:131:16 ===---
_graphics_refresh:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:132:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:132:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:132:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:132:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO636
jmp ROTULO637
ROTULO636:
mov ax, 65535
jmp ROTULO638
ROTULO637:
xor ax, ax
ROTULO638:
cmp ax, 0
jne ROTULO634
jmp ROTULO635
ROTULO634:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:132:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 132
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO635:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:133:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:133:9 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
push es
push di
es call far [di+26]
add sp, 4
ROTULO633:
FIM_graphics_refresh:
retf
; MODULO FIM: graphics
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:313:8 ===---
; MODULO: font
_font:
db 18
db 83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:314:16 ===---
_font_default:
times 34 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:316:16 ===---
_font_initialize:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:317:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:317:29 ===---
; ACAO CHAMADA - Carrega binario embutido
jmp ROTULO640
ROTULO641:
db 7,0,3,0,3,0,1,0,168,0,177,0,211,0,220,0,229,0,238,0,247,0,0,1,9,1,18,1,27,1,36,1,45,1,54,1,63,1,72,1,81,1,90,1,99,1,108,1,117,1,126,1,135,1,144,1,153,1,162,1,171,1,180,1,189,1,198,1,207,1,216,1,225,1,234,1,243,1,252,1,5,2,14,2,23,2,32,2,63,1,72,1,81,1,90,1,99,1,108,1,117,1,126,1,135,1,144,1,153,1,162,1,171,1,180,1,189,1,198,1,207,1,216,1,225,1,234,1,243,1,252,1,5,2,14,2,23,2,32,2,41,2,46,2,51,2,56,2,61,2,66,2,71,2,76,2,81,2,86,2,91,2,96,2,101,2,106,2,9,83,105,115,116,101,109,97,0,34,72,117,109,98,101,114,116,111,32,67,111,115,116,97,32,100,111,115,32,83,97,110,116,111,115,32,74,117,110,105,111,114,0,5,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,6,0,48,72,148,164,164,72,48,3,0,32,96,160,32,32,32,32,5,0,112,136,8,16,32,64,248,5,0,248,8,48,8,8,8,240,5,0,136,136,136,248,8,8,8,5,0,248,128,240,8,8,8,240,5,0,112,136,128,240,136,136,112,5,0,248,8,8,16,32,64,128,5,0,112,136,136,112,136,136,112,5,0,112,136,136,120,8,136,112,7,0,56,68,130,254,130,130,130,6,0,248,132,132,248,132,132,248,6,0,56,68,128,128,128,68,56,7,0,248,132,130,130,130,132,248,6,0,252,128,128,240,128,128,252,6,0,252,128,128,240,128,128,128,6,0,120,132,128,156,132,132,120,6,0,132,132,132,252,132,132,132,1,0,128,128,128,128,128,128,128,5,0,8,8,8,8,8,136,112,6,0,132,132,136,240,136,132,132,5,0,128,128,128,128,128,128,248,7,0,130,198,170,146,130,130,130,7,0,130,194,162,146,138,134,130,7,0,124,130,130,130,130,130,124,6,0,248,132,132,248,128,128,128,8,0,124,130,130,130,138,132,123,7,0,248,132,132,248,132,132,130,6,0,120,132,128,120,4,132,120,7,0,254,16,16,16,16,16,16,7,0,130,130,130,130,130,130,124,7,0,130,130,130,130,68,40,16,7,0,130,130,130,146,170,198,130,7,0,130,68,40,16,40,68,130,7,0,130,68,40,16,32,64,128,7,0,254,4,8,16,32,64,254,2,0,64,128,0,2,0,128,64,0,5,0,72,144,0,5,0,144,72,0,5,0,72,176,0,3,0,64,160,0,3,0,0,224,0,4,0,144,96,0,4,0,96,144,0,3,0,160,64,0,3,0,0,160,0,4,0,96,144,96,3,0,32,144,96,3,0,64,144,96
ROTULO640:
push cs
pop es
mov di, ROTULO641
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:317:20 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_font_default+2]
pop es
cs mov di, [_font_default]
push es
push di
push cs
call _font_loadbinary
add sp, 8
ROTULO639:
FIM_font_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:320:16 ===---
_font_loadbinary:
push bp
mov bp, sp
sub sp, 8
push cs
call _os_stackcheck
; ARG: dest TAM: 4 POS: BP+6 
; ARG: data TAM: 4 POS: BP+10 
; ARG: tmp TAM: 4 POS: BP--4 
; ARG: name TAM: 4 POS: BP--8 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:320:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:320:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:321:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:322:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:323:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:323:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:324:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:324:21 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+0]
es pop word [di+0+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:325:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:325:25 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:326:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:326:25 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:327:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:327:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:328:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:329:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:330:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:330:28 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:331:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:332:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:333:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:333:28 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:334:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:335:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:336:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:336:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:337:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:338:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:339:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:339:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:339:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:339:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+0]
pop bx
add ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:340:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:340:18 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+10+2]
mov word [bp+-8+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:341:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:341:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:342:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:343:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:344:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:344:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:344:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:344:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+0]
pop bx
add ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:345:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:345:18 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+10+2]
mov word [bp+-8+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:346:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:346:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:347:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:347:58 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:347:60 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 18
es mov ax, [di+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:347:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:347:41 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 16
es mov ax, [di+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:347:23 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 14
es mov ax, [di+14]
pop bx
add ax, bx
pop bx
add ax, bx
es mov [di+12], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO642:
mov sp, bp
pop bp
FIM_font_loadbinary:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:350:14 ===---
_font_findchar:
push bp
mov bp, sp
sub sp, 10
push cs
call _os_stackcheck
; ARG: font TAM: 4 POS: BP+6 
; ARG: index TAM: 2 POS: BP+10 
; ARG: ptrindex TAM: 4 POS: BP--4 
; ARG: ptrchar TAM: 4 POS: BP--8 
; ARG: tmp TAM: 2 POS: BP--10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:350:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:350:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:351:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:352:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:353:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:354:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:354:22 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+2]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:50 ===---
mov ax, 12
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:45 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:22 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:356:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:356:21 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+2]
mov word [bp+-8+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:357:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:357:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+0]
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:358:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:358:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:358:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:358:21 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
pop bx
add ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:359:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:359:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-8+2]
pop es
mov di, [bp+-8]
jmp ROTULO643
ROTULO643:
mov sp, bp
pop bp
FIM_font_findchar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:362:14 ===---
_font_convertchartofont:
push bp
mov bp, sp
sub sp, 6
push cs
call _os_stackcheck
; ARG: font TAM: 4 POS: BP+6 
; ARG: char TAM: 4 POS: BP+10 
; ARG: text TAM: 4 POS: BP+14 
; ARG: pos TAM: 2 POS: BP+18 
; ARG: index TAM: 2 POS: BP--2 
; ARG: aboveindex TAM: 2 POS: BP--4 
; ARG: belowindex TAM: 2 POS: BP--6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:362:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:362:46 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:362:64 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:362:86 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:363:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:364:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:365:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:367:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:368:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-4], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:369:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-6], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:370:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:370:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:370:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:370:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
add ax, bx
mov [bp+14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:372:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:372:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:372:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:372:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+14+2]
pop es
mov di, [bp+14]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:372:21 ===---
mov ax, 48
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO650
jmp ROTULO651
ROTULO650:
mov ax, 65535
jmp ROTULO652
ROTULO651:
xor ax, ax
ROTULO652:
cmp ax, 0
je ROTULO648
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:372:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:372:36 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:372:44 ===---
mov ax, 57
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO653
jmp ROTULO654
ROTULO653:
mov ax, 65535
jmp ROTULO655
ROTULO654:
xor ax, ax
ROTULO655:
cmp ax, 0
je ROTULO648
ROTULO647:
mov ax, 65535
jmp ROTULO649
ROTULO648:
xor ax, ax
ROTULO649:
cmp ax, 0
jne ROTULO645
jmp ROTULO646
ROTULO645:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:373:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:373:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:373:35 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:373:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:373:28 ===---
mov ax, 48
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:373:21 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
pop bx
sub ax, bx
pop bx
add ax, bx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:374:18 ===---
jmp charfontend
ROTULO646:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:376:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:376:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:376:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:376:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+14+2]
pop es
mov di, [bp+14]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:376:21 ===---
mov ax, 65
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
je ROTULO659
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:376:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:376:36 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:376:44 ===---
mov ax, 90
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO664
jmp ROTULO665
ROTULO664:
mov ax, 65535
jmp ROTULO666
ROTULO665:
xor ax, ax
ROTULO666:
cmp ax, 0
je ROTULO659
ROTULO658:
mov ax, 65535
jmp ROTULO660
ROTULO659:
xor ax, ax
ROTULO660:
cmp ax, 0
jne ROTULO656
jmp ROTULO657
ROTULO656:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:377:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:377:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:377:35 ===---
mov ax, 12
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:377:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:377:28 ===---
mov ax, 65
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:377:21 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
pop bx
sub ax, bx
pop bx
add ax, bx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:378:18 ===---
jmp charfontend
ROTULO657:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:380:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:380:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:380:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:380:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+14+2]
pop es
mov di, [bp+14]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:380:21 ===---
mov ax, 97
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO672
jmp ROTULO673
ROTULO672:
mov ax, 65535
jmp ROTULO674
ROTULO673:
xor ax, ax
ROTULO674:
cmp ax, 0
je ROTULO670
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:380:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:380:36 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:380:44 ===---
mov ax, 122
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO675
jmp ROTULO676
ROTULO675:
mov ax, 65535
jmp ROTULO677
ROTULO676:
xor ax, ax
ROTULO677:
cmp ax, 0
je ROTULO670
ROTULO669:
mov ax, 65535
jmp ROTULO671
ROTULO670:
xor ax, ax
ROTULO671:
cmp ax, 0
jne ROTULO667
jmp ROTULO668
ROTULO667:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:381:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:381:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:381:35 ===---
mov ax, 38
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:381:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:381:28 ===---
mov ax, 97
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:381:21 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
pop bx
sub ax, bx
pop bx
add ax, bx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:382:18 ===---
jmp charfontend
ROTULO668:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:384:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:384:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:384:12 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+14+2]
pop es
mov di, [bp+14]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:384:20 ===---
mov ax, 32
mov bx, ax
pop ax
cmp ax, bx
je ROTULO680
jmp ROTULO681
ROTULO680:
mov ax, 65535
jmp ROTULO682
ROTULO681:
xor ax, ax
ROTULO682:
cmp ax, 0
jne ROTULO678
jmp ROTULO679
ROTULO678:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:385:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:386:18 ===---
jmp charfontend
ROTULO679:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:388:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:388:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:388:12 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+14+2]
pop es
mov di, [bp+14]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:388:20 ===---
mov ax, 195
mov bx, ax
pop ax
cmp ax, bx
je ROTULO685
jmp ROTULO686
ROTULO685:
mov ax, 65535
jmp ROTULO687
ROTULO686:
xor ax, ax
ROTULO687:
cmp ax, 0
jne ROTULO683
jmp ROTULO684
ROTULO683:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:389:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+14]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:390:13 ===---
; ACAO INC - Incrementa variavel
inc word [bp+18]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:391:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:391:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:391:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+14+2]
pop es
mov di, [bp+14]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:391:24 ===---
mov ax, 179
mov bx, ax
pop ax
cmp ax, bx
je ROTULO690
jmp ROTULO691
ROTULO690:
mov ax, 65535
jmp ROTULO692
ROTULO691:
xor ax, ax
ROTULO692:
cmp ax, 0
jne ROTULO688
jmp ROTULO689
ROTULO688:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:392:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 26
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:393:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-4], 74
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:394:22 ===---
jmp charfontend
ROTULO689:
ROTULO684:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:397:9 ===---
charfontend:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:398:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:398:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:398:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:398:26 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO695
jmp ROTULO696
ROTULO695:
mov ax, 65535
jmp ROTULO697
ROTULO696:
xor ax, ax
ROTULO697:
cmp ax, 0
jne ROTULO693
jmp ROTULO694
ROTULO693:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:399:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:399:29 ===---
mov ax, 1
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov [di+24], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:400:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:400:26 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:400:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:400:35 ===---
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
push di
push word [bp+10+2]
pop es
mov di, [bp+10]
es pop word [di+8]
es pop word [di+8+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
jmp ROTULO698
ROTULO694:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:402:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:402:29 ===---
xor ax, ax
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov [di+24], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO698:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:404:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:404:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:404:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:404:26 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO701
jmp ROTULO702
ROTULO701:
mov ax, 65535
jmp ROTULO703
ROTULO702:
xor ax, ax
ROTULO703:
cmp ax, 0
jne ROTULO699
jmp ROTULO700
ROTULO699:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:405:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:405:30 ===---
mov ax, 1
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov [di+25], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:406:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:406:26 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:406:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:406:35 ===---
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
push di
push word [bp+10+2]
pop es
mov di, [bp+10]
es pop word [di+16]
es pop word [di+16+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
jmp ROTULO704
ROTULO700:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:408:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:408:30 ===---
xor ax, ax
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov [di+25], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO704:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:410:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:410:21 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:410:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:410:30 ===---
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
push di
push word [bp+10+2]
pop es
mov di, [bp+10]
es pop word [di+0]
es pop word [di+0+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:411:9 ===---
; ACAO INC - Incrementa variavel
inc word [bp+18]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:412:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:412:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
jmp ROTULO644
ROTULO644:
mov sp, bp
pop bp
FIM_font_convertchartofont:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:415:9 ===---
_font_drawtext:
push bp
mov bp, sp
sub sp, 36
push cs
call _os_stackcheck
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
; ARG: width TAM: 2 POS: BP--8 
; ARG: maxbytes TAM: 2 POS: BP--10 
; ARG: subwidth TAM: 2 POS: BP--12 
; ARG: pos TAM: 2 POS: BP--14 
; ARG: extraoffset TAM: 2 POS: BP--16 
; ARG: i TAM: 2 POS: BP--18 
; ARG: j TAM: 2 POS: BP--20 
; ARG: k TAM: 2 POS: BP--22 
; ARG: x TAM: 2 POS: BP--24 
; ARG: ycalc TAM: 2 POS: BP--26 
; ARG: xcalc TAM: 2 POS: BP--28 
; ARG: tmp TAM: 2 POS: BP--30 
; ARG: totalwidth TAM: 2 POS: BP--32 
; ARG: fontchar TAM: 4 POS: BP--36 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:415:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:415:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:415:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:415:68 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:415:82 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:415:96 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:415:110 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:415:127 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:416:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:417:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:418:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:419:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:420:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:421:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:422:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:423:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:424:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:425:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:426:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:427:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:428:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:429:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:430:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:431:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:432:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 26
push ss
pop es
mov di, sp
push es
pop word [bp+-36+2]
mov [bp+-36], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:433:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:433:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:433:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:433:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
pop bx
sub ax, bx
mov [bp+-32], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:434:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:434:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:434:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:435:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-24], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:436:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:437:9 ===---
ROTULO706:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:437:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:437:15 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:437:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO709
jmp ROTULO710
ROTULO709:
mov ax, 65535
jmp ROTULO711
ROTULO710:
xor ax, ax
ROTULO711:
cmp ax, 0
jne ROTULO707
jmp ROTULO708
ROTULO707:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:438:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:438:19 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:438:59 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:438:53 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:438:43 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-36+2]
pop es
mov di, [bp+-36]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:438:37 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _font_convertchartofont
add sp, 14
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:439:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:439:23 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 0
push word [bp+-36+2]
pop es
mov di, [bp+-36]
es push word [di+0+2]
es push word [di+0]
pop di
pop es
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:440:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:440:21 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:441:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:442:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:442:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
xor ax, ax
es mov al, [di+0]
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:443:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:444:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:444:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:444:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:444:35 ===---
mov ax, 8
mov cx, ax
pop ax
shr ax, cl
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:445:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:445:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:445:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:445:28 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO714
jmp ROTULO715
ROTULO714:
mov ax, 65535
jmp ROTULO716
ROTULO715:
xor ax, ax
ROTULO716:
cmp ax, 0
jne ROTULO712
jmp ROTULO713
ROTULO712:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:445:35 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-10], 1
ROTULO713:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:446:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:446:31 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-18], 1
ROTULO717:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:446:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:446:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:446:26 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 14
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+14]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO720
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:447:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:447:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:447:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:447:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:447:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:447:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-32]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO725
jmp ROTULO726
ROTULO725:
mov ax, 65535
jmp ROTULO727
ROTULO726:
xor ax, ax
ROTULO727:
cmp ax, 0
jne ROTULO723
jmp ROTULO724
ROTULO723:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:448:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+24]
cmp ax, 0
jne ROTULO728
jmp ROTULO729
ROTULO728:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:449:25 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-24], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:450:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:450:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:450:35 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:450:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
add ax, bx
mov [bp+16], ax
jmp ROTULO730
ROTULO729:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:452:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:452:30 ===---
xor ax, ax
jmp ROTULO705
ROTULO730:
ROTULO724:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:455:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:455:30 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-20], 1
ROTULO731:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:455:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:455:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:455:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO734
jmp ROTULO735
ROTULO734:
mov ax, 65535
jmp ROTULO736
ROTULO735:
xor ax, ax
ROTULO736:
cmp ax, 0
jne ROTULO732
jmp ROTULO733
ROTULO732:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:456:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:456:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:456:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:456:28 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO739
jmp ROTULO740
ROTULO739:
mov ax, 65535
jmp ROTULO741
ROTULO740:
xor ax, ax
ROTULO741:
cmp ax, 0
jne ROTULO737
jmp ROTULO738
ROTULO737:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:457:25 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 8
jmp ROTULO742
ROTULO738:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:459:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:459:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:459:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:459:46 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:28 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:37 ===---
mov ax, 8
mov bx, ax
pop ax
cmp ax, bx
je ROTULO748
jmp ROTULO749
ROTULO748:
mov ax, 65535
jmp ROTULO750
ROTULO749:
xor ax, ax
ROTULO750:
cmp ax, 0
jne ROTULO746
jmp ROTULO747
ROTULO746:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:44 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 8
ROTULO747:
ROTULO742:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:462:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:462:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
xor ax, ax
es mov al, [di+0]
mov [bp+-30], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:463:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:463:34 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-22], 1
ROTULO751:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:463:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:463:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:463:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO754
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:464:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:464:59 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:464:61 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:464:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:464:57 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:464:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:464:38 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 16
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:464:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
add ax, bx
pop bx
add ax, bx
pop bx
sub ax, bx
mov [bp+-26], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:465:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:465:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:465:28 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-30]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:465:36 ===---
mov ax, 128
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO757
jmp ROTULO758
ROTULO757:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:466:29 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:466:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:466:50 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:466:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:466:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:466:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:466:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:466:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
add ax, bx
pop bx
add ax, bx
pop bx
sub ax, bx
mov [bp+-28], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:467:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:467:46 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:467:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:467:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:467:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO767
jmp ROTULO768
ROTULO767:
mov ax, 65535
jmp ROTULO769
ROTULO768:
xor ax, ax
ROTULO769:
cmp ax, 0
je ROTULO765
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:467:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:467:55 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:467:64 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO770
jmp ROTULO771
ROTULO770:
mov ax, 65535
jmp ROTULO772
ROTULO771:
xor ax, ax
ROTULO772:
cmp ax, 0
je ROTULO765
ROTULO764:
mov ax, 65535
jmp ROTULO766
ROTULO765:
xor ax, ax
ROTULO766:
cmp ax, 0
jne ROTULO762
jmp ROTULO763
ROTULO762:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:468:33 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:468:66 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:468:59 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:468:52 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
push cs
call _graphics_drawpixel
add sp, 6
ROTULO763:
ROTULO758:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:471:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:471:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:471:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-30]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:471:39 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-30], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:463:34 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-22]
jmp ROTULO751
ROTULO753:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:473:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:455:30 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-20]
jmp ROTULO731
ROTULO733:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:446:31 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
jmp ROTULO717
ROTULO719:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:476:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:476:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:476:29 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 20
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:476:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:476:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:476:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+-24], ax
jmp ROTULO706
ROTULO708:
ROTULO705:
mov sp, bp
pop bp
FIM_font_drawtext:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:480:9 ===---
_font_calcsize:
push bp
mov bp, sp
sub sp, 40
push cs
call _os_stackcheck
; ARG: font TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: output TAM: 4 POS: BP+14 
; ARG: totalwidth TAM: 2 POS: BP+18 
; ARG: multiline TAM: 2 POS: BP+20 
; ARG: ptrchar TAM: 4 POS: BP--4 
; ARG: len TAM: 2 POS: BP--6 
; ARG: width TAM: 2 POS: BP--8 
; ARG: maxbytes TAM: 2 POS: BP--10 
; ARG: subwidth TAM: 2 POS: BP--12 
; ARG: pos TAM: 2 POS: BP--14 
; ARG: extraoffset TAM: 2 POS: BP--16 
; ARG: i TAM: 2 POS: BP--18 
; ARG: j TAM: 2 POS: BP--20 
; ARG: k TAM: 2 POS: BP--22 
; ARG: x TAM: 2 POS: BP--24 
; ARG: ycalc TAM: 2 POS: BP--26 
; ARG: xcalc TAM: 2 POS: BP--28 
; ARG: tmp TAM: 2 POS: BP--30 
; ARG: useabove TAM: 2 POS: BP--32 
; ARG: usebelow TAM: 2 POS: BP--34 
; ARG: newline TAM: 2 POS: BP--36 
; ARG: fontchar TAM: 4 POS: BP--40 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:480:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:480:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:480:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:480:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:480:92 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:481:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:482:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:483:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:484:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:485:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:486:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:487:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:488:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:489:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:490:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:491:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:492:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:493:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:494:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:495:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:496:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:497:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:498:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:499:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 26
push ss
pop es
mov di, sp
push es
pop word [bp+-40+2]
mov [bp+-40], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:500:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-36], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:501:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:501:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:501:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:502:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-24], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:503:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:503:25 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:504:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:505:9 ===---
ROTULO774:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:505:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:505:15 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:505:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO777
jmp ROTULO778
ROTULO777:
mov ax, 65535
jmp ROTULO779
ROTULO778:
xor ax, ax
ROTULO779:
cmp ax, 0
jne ROTULO775
jmp ROTULO776
ROTULO775:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:506:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:506:19 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:506:59 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:506:53 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:506:43 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-40+2]
pop es
mov di, [bp+-40]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:506:37 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _font_convertchartofont
add sp, 14
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:507:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:507:23 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 0
push word [bp+-40+2]
pop es
mov di, [bp+-40]
es push word [di+0+2]
es push word [di+0]
pop di
pop es
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:508:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:508:21 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:509:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:509:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:509:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:509:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:509:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:509:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO782
jmp ROTULO783
ROTULO782:
mov ax, 65535
jmp ROTULO784
ROTULO783:
xor ax, ax
ROTULO784:
cmp ax, 0
jne ROTULO780
jmp ROTULO781
ROTULO780:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:510:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:510:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
cmp ax, 0
jne ROTULO785
jmp ROTULO786
ROTULO785:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:511:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-24], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:512:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-36], 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:513:21 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:513:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push word [bp+14+2]
pop es
mov di, [bp+14]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:514:21 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:514:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:514:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:514:37 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
push word [bp+14+2]
pop es
mov di, [bp+14]
es mov ax, [di+2]
pop bx
add ax, bx
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
jmp ROTULO787
ROTULO786:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:516:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:516:26 ===---
xor ax, ax
jmp ROTULO773
ROTULO787:
ROTULO781:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:519:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:519:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:519:29 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 20
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:519:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:519:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:519:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+-24], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:520:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:520:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:520:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-36]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:520:27 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO790
jmp ROTULO791
ROTULO790:
mov ax, 65535
jmp ROTULO792
ROTULO791:
xor ax, ax
ROTULO792:
cmp ax, 0
jne ROTULO788
jmp ROTULO789
ROTULO788:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:520:34 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:520:49 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push word [bp+14+2]
pop es
mov di, [bp+14]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO789:
jmp ROTULO774
ROTULO776:
ROTULO773:
mov sp, bp
pop bp
FIM_font_calcsize:
retf
; MODULO FIM: font
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:163:8 ===---
; MODULO: string
_string:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:164:21 ===---
_string_length:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: text TAM: 4 POS: BP+6 
; ARG: i TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:164:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:165:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:166:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:168:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:169:9 ===---
ROTULO794:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:169:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:169:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:169:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO797
jmp ROTULO798
ROTULO797:
mov ax, 65535
jmp ROTULO799
ROTULO798:
xor ax, ax
ROTULO799:
cmp ax, 0
jne ROTULO795
jmp ROTULO796
ROTULO795:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:170:17 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:171:18 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
jmp ROTULO794
ROTULO796:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:173:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:173:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO793
ROTULO793:
mov sp, bp
pop bp
FIM_string_length:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:176:16 ===---
_string_substring:
push bp
mov bp, sp
sub sp, 8
push cs
call _os_stackcheck
; ARG: dest TAM: 4 POS: BP+6 
; ARG: orig TAM: 4 POS: BP+10 
; ARG: pos TAM: 2 POS: BP+14 
; ARG: size TAM: 2 POS: BP+16 
; ARG: dest_len TAM: 2 POS: BP--2 
; ARG: orig_len TAM: 2 POS: BP--4 
; ARG: i TAM: 2 POS: BP--6 
; ARG: value TAM: 2 POS: BP--8 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:176:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:176:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:176:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:176:85 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:177:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:178:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:179:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:180:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:181:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:181:20 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:182:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:182:20 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:182:34 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
push cs
call _string_length
add sp, 4
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:183:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:183:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:183:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:183:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO803
jmp ROTULO804
ROTULO803:
mov ax, 65535
jmp ROTULO805
ROTULO804:
xor ax, ax
ROTULO805:
cmp ax, 0
jne ROTULO801
jmp ROTULO802
ROTULO801:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:183:38 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 183
mov [bp+-10], ax
mov ax, 4
cs jmp word [_os_trycode]
ROTULO802:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:184:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:184:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:184:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:184:20 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:184:13 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:184:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO808
jmp ROTULO809
ROTULO808:
mov ax, 65535
jmp ROTULO810
ROTULO809:
xor ax, ax
ROTULO810:
cmp ax, 0
jne ROTULO806
jmp ROTULO807
ROTULO806:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:184:45 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 184
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO807:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:185:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:186:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:186:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:186:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:186:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:186:25 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:186:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:187:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:187:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-6], 1
ROTULO811:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:187:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:187:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:187:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO814
jmp ROTULO815
ROTULO814:
mov ax, 65535
jmp ROTULO816
ROTULO815:
xor ax, ax
ROTULO816:
cmp ax, 0
jne ROTULO812
jmp ROTULO813
ROTULO812:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:188:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:188:21 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:189:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:189:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:190:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:191:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:187:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-6]
jmp ROTULO811
ROTULO813:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:193:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO800:
mov sp, bp
pop bp
FIM_string_substring:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:21 ===---
_string_equals:
push bp
mov bp, sp
; ARG: txt1 TAM: 4 POS: BP+6 
; ARG: txt2 TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:50 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:197:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:198:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:199:9 ===---
ROTULO818:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:199:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:199:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:199:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO821
jmp ROTULO822
ROTULO821:
mov ax, 65535
jmp ROTULO823
ROTULO822:
xor ax, ax
ROTULO823:
cmp ax, 0
jne ROTULO819
jmp ROTULO820
ROTULO819:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:200:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:200:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:200:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:200:24 ===---
xor ax, ax
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:200:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:200:38 ===---
mov ax, 1
jmp ROTULO817
ROTULO825:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:201:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:202:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
jmp ROTULO818
ROTULO820:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:204:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:204:16 ===---
xor ax, ax
jmp ROTULO817
ROTULO817:
mov sp, bp
pop bp
FIM_string_equals:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:207:21 ===---
_string_concat:
push bp
mov bp, sp
sub sp, 10
push cs
call _os_stackcheck
; ARG: dest TAM: 4 POS: BP+6 
; ARG: orig TAM: 4 POS: BP+10 
; ARG: dest_len TAM: 2 POS: BP--2 
; ARG: dest_capacity TAM: 2 POS: BP--4 
; ARG: len TAM: 2 POS: BP--6 
; ARG: i TAM: 2 POS: BP--8 
; ARG: tmp TAM: 2 POS: BP--10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:207:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:207:50 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:208:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:209:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:210:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:211:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:212:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:213:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:213:20 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:213:34 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:214:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:214:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:215:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:215:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:215:37 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:215:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:215:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:31 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:13 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
pop bx
add ax, bx
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO832
jmp ROTULO833
ROTULO832:
mov ax, 65535
jmp ROTULO834
ROTULO833:
xor ax, ax
ROTULO834:
cmp ax, 0
jne ROTULO830
jmp ROTULO831
ROTULO830:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:62 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 216
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO831:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:217:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:217:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:217:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:217:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:217:25 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:217:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:218:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 1
ROTULO835:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO838
jmp ROTULO839
ROTULO838:
mov ax, 65535
jmp ROTULO840
ROTULO839:
xor ax, ax
ROTULO840:
cmp ax, 0
jne ROTULO836
jmp ROTULO837
ROTULO836:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:220:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:220:19 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:221:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:221:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:222:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:223:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-8]
jmp ROTULO835
ROTULO837:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:225:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:226:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:226:16 ===---
mov ax, 1
jmp ROTULO829
ROTULO829:
mov sp, bp
pop bp
FIM_string_concat:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:229:21 ===---
_string_copy:
push bp
mov bp, sp
sub sp, 8
push cs
call _os_stackcheck
; ARG: dest TAM: 4 POS: BP+6 
; ARG: orig TAM: 4 POS: BP+10 
; ARG: dest_capacity TAM: 2 POS: BP--2 
; ARG: orig_len TAM: 2 POS: BP--4 
; ARG: i TAM: 2 POS: BP--6 
; ARG: tmp TAM: 2 POS: BP--8 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:229:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:229:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:230:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:231:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:232:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:233:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:234:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:234:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:235:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:235:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:235:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:235:20 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:235:34 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:236:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:237:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:238:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:239:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:239:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:239:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:239:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:239:40 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:239:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
pop bx
add ax, bx
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO844
jmp ROTULO845
ROTULO844:
mov ax, 65535
jmp ROTULO846
ROTULO845:
xor ax, ax
ROTULO846:
cmp ax, 0
jne ROTULO842
jmp ROTULO843
ROTULO842:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:239:54 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 239
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO843:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:240:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:240:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-6], 1
ROTULO847:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:240:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:240:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:240:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO850
jmp ROTULO851
ROTULO850:
mov ax, 65535
jmp ROTULO852
ROTULO851:
xor ax, ax
ROTULO852:
cmp ax, 0
jne ROTULO848
jmp ROTULO849
ROTULO848:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:241:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:241:19 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:242:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:242:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:243:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:244:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:240:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-6]
jmp ROTULO847
ROTULO849:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:246:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:247:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:247:16 ===---
mov ax, 1
jmp ROTULO841
ROTULO841:
mov sp, bp
pop bp
FIM_string_copy:
retf
; MODULO FIM: string
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:550:8 ===---
; MODULO: application
_application:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:551:9 ===---
_application_currenttheme:
times 14 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:552:9 ===---
_application_running:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:553:16 ===---
_application_currentfocus:
times 100 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:554:16 ===---
_application_currentfocusform:
times 100 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:555:16 ===---
_application_keyboardupdate:
times 4 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:556:16 ===---
_application_mouseupdate:
times 4 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:557:16 ===---
_application_exitstatus:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:559:16 ===---
_application_applydarktheme:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:560:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:560:40 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_black
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:561:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:561:34 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_white
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:562:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:562:42 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_white
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:563:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:563:36 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_black
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:564:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:564:41 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_white
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:565:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:565:33 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _systemcolors_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:566:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:566:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_application_running]
cmp ax, 0
jne ROTULO854
jmp ROTULO855
ROTULO854:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:566:25 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:566:40 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO855:
ROTULO853:
FIM_application_applydarktheme:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:569:16 ===---
_application_applydefaulttheme:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:570:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:570:40 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_white
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:571:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:571:34 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_black
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:572:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:572:42 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_black
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:573:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:573:36 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_white
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:574:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:574:41 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_black
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:575:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:575:33 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _systemcolors_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:576:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:576:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_application_running]
cmp ax, 0
jne ROTULO857
jmp ROTULO858
ROTULO857:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:576:25 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:576:40 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO858:
ROTULO856:
FIM_application_applydefaulttheme:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:579:16 ===---
_application_initialize:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:580:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
cs mov word [_application_currentfocus+2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:581:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
cs mov word [_application_currentfocus], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:582:9 ===---
; ACAO GRAVACAO - Grava em variavel
cs mov word [_application_running], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:583:9 ===---
; ACAO GRAVACAO - Grava em variavel
cs mov word [_application_exitstatus], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:584:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _screen_initialize
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:585:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _application_applydefaulttheme
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:586:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:586:26 ===---
push cs
pop es
mov di, _application_generickeyboardupdate
push es
cs pop word [_application_keyboardupdate+2]
cs mov [_application_keyboardupdate], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:587:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:587:23 ===---
push cs
pop es
mov di, _application_genericmouseupdate
push es
cs pop word [_application_mouseupdate+2]
cs mov [_application_mouseupdate], di
ROTULO859:
FIM_application_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:590:9 ===---
_application_generickeyboardupdate:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:590:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:592:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:591:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:591:12 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_consoleavail
cmp ax, 0
jne ROTULO861
jmp ROTULO862
ROTULO861:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:593:13 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 9
push ss
pop es
mov di, sp
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:594:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:594:27 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_consolereadchar
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov [di+0], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:595:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:595:29 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
xor ax, ax
es mov al, [di+0]
es mov [di+1], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:596:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:596:30 ===---
xor ax, ax
es mov [di+3], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:597:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:597:24 ===---
xor ax, ax
es mov [di+7], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:598:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:598:25 ===---
mov ax, 1
es mov [di+5], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:599:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:599:43 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:599:37 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_processkeyboard
add sp, 8
ROTULO862:
ROTULO860:
mov sp, bp
pop bp
FIM_application_generickeyboardupdate:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:603:9 ===---
_application_genericmouseupdate:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:603:28 ===---
ROTULO863:
mov sp, bp
pop bp
FIM_application_genericmouseupdate:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:606:16 ===---
_application_exit:
push bp
mov bp, sp
; ARG: status TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:606:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:607:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:607:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
cs mov [_application_exitstatus], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:608:9 ===---
; ACAO GRAVACAO - Grava em variavel
cs mov word [_application_running], 0
ROTULO864:
mov sp, bp
pop bp
FIM_application_exit:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:611:16 ===---
_application_run:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:611:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:612:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:612:24 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:613:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:613:43 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:613:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
push es
push di
push cs
call _control_add
add sp, 8
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:614:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:614:24 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
push es
push di
push cs
call _control_redraw
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:615:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:615:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_focus
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:616:9 ===---
; ACAO GRAVACAO - Grava em variavel
cs mov word [_application_running], 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:617:9 ===---
ROTULO866:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:617:15 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_application_running]
cmp ax, 0
jne ROTULO867
jmp ROTULO868
ROTULO867:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:618:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:618:35 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_application_currentfocus+2]
pop es
cs mov di, [_application_currentfocus]
push es
push di
cs push word [_application_keyboardupdate+2]
pop es
cs mov di, [_application_keyboardupdate]
cs call far [_application_keyboardupdate]
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:619:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:619:32 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_application_currentfocus+2]
pop es
cs mov di, [_application_currentfocus]
push es
push di
cs push word [_application_mouseupdate+2]
pop es
cs mov di, [_application_mouseupdate]
cs call far [_application_mouseupdate]
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:620:17 ===---
sti
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:621:17 ===---
hlt
jmp ROTULO866
ROTULO868:
ROTULO865:
mov sp, bp
pop bp
FIM_application_run:
retf
; MODULO FIM: application
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:522:8 ===---
; MODULO: systemcolors
_systemcolors:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:523:17 ===---
_systemcolors_current:
times 4 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:525:21 ===---
_systemcolors_backgroundcolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:526:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:526:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+0]
jmp ROTULO869
ROTULO869:
FIM_systemcolors_backgroundcolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:529:21 ===---
_systemcolors_textcolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:530:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:530:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+2]
jmp ROTULO870
ROTULO870:
FIM_systemcolors_textcolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:533:21 ===---
_systemcolors_windowbordercolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:534:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:534:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+4]
jmp ROTULO871
ROTULO871:
FIM_systemcolors_windowbordercolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:537:21 ===---
_systemcolors_windowcolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:538:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:538:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+6]
jmp ROTULO872
ROTULO872:
FIM_systemcolors_windowcolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:541:21 ===---
_systemcolors_windowtitlecolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:542:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:542:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 8
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+8]
jmp ROTULO873
ROTULO873:
FIM_systemcolors_windowtitlecolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:545:16 ===---
_systemcolors_initialize:
push bp
mov bp, sp
; ARG: newtheme TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:545:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:546:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:546:19 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
cs pop word [_systemcolors_current+2]
cs mov [_systemcolors_current], di
ROTULO874:
mov sp, bp
pop bp
FIM_systemcolors_initialize:
retf
; MODULO FIM: systemcolors
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:66:8 ===---
; MODULO: control
_control:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:67:16 ===---
_control_initialize:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:67:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:68:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:68:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_font_default+2]
pop es
cs mov di, [_font_default]
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+19]
es pop word [di+19+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:69:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:69:20 ===---
xor ax, ax
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:70:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:70:21 ===---
xor ax, ax
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:71:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:71:22 ===---
mov ax, 10
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:72:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:72:23 ===---
mov ax, 10
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:73:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:73:24 ===---
xor ax, ax
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:74:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:74:26 ===---
xor ax, ax
es mov [di+15], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:75:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:75:26 ===---
mov ax, 1
es mov [di+16], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:76:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:76:37 ===---
mov ax, 1
es mov [di+17], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:77:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:77:25 ===---
xor ax, ax
es mov [di+18], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:78:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:78:29 ===---
push cs
pop es
mov di, _control_genericcontrolpaint
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+23]
es pop word [di+23+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:79:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:79:36 ===---
push cs
pop es
mov di, _control_genericcontrolfocuschanged
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+35]
es pop word [di+35+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:80:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:80:42 ===---
push cs
pop es
mov di, _control_genericcontrolkeyboardinteracion
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+31]
es pop word [di+31+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:81:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:81:40 ===---
push cs
pop es
mov di, _control_genericcontrolmouseinteraction
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+27]
es pop word [di+27+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:82:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:82:24 ===---
push cs
pop es
mov di, _control_genericonclick
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+39]
es pop word [di+39+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:83:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:83:24 ===---
push cs
pop es
mov di, _control_genericonfocus
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+51]
es pop word [di+51+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:84:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:84:27 ===---
push cs
pop es
mov di, _control_genericonkeypress
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+43]
es pop word [di+43+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:85:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:85:29 ===---
push cs
pop es
mov di, _control_genericonkeyrelease
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+47]
es pop word [di+47+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:86:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:86:28 ===---
push cs
pop es
mov di, _control_genericonlostfocus
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+55]
es pop word [di+55+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:87:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:87:26 ===---
xor ax, ax
es mov [di+59], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:88:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:88:25 ===---
xor ax, ax
es mov [di+64], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:89:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:89:31 ===---
xor ax, ax
es mov [di+69], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:90:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:90:30 ===---
xor ax, ax
es mov [di+76], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:91:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:91:28 ===---
xor ax, ax
es mov [di+78], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:92:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:92:29 ===---
xor ax, ax
es mov [di+80], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:93:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:93:27 ===---
xor ax, ax
es mov [di+74], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:94:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:94:21 ===---
push cs
pop es
mov di, ROTULO877
jmp ROTULO876
ROTULO877:
db 0
times 1 db 0
ROTULO876:
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+10]
es pop word [di+10+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:95:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:95:22 ===---
xor ax, ax
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:96:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:96:28 ===---
xor ax, ax
es mov [di+94], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO875:
mov sp, bp
pop bp
FIM_control_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:99:9 ===---
_control_genericcontrolpaint:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:99:29 ===---
ROTULO878:
mov sp, bp
pop bp
FIM_control_genericcontrolpaint:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:102:9 ===---
_control_genericcontrolmouseinteraction:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:102:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:102:57 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:103:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:103:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:103:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:103:31 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
mov bx, ax
pop ax
or ax, bx
cmp ax, 0
jne ROTULO880
jmp ROTULO881
ROTULO880:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:104:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:104:33 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:104:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+39]
add sp, 8
ROTULO881:
ROTULO879:
mov sp, bp
pop bp
FIM_control_genericcontrolmouseinteraction:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:108:9 ===---
_control_genericcontrolkeyboardinteracion:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:108:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:108:59 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:109:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:109:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 5
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov ax, [di+5]
cmp ax, 0
jne ROTULO886
jmp ROTULO887
ROTULO886:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:110:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:110:36 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:110:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+43]
add sp, 8
jmp ROTULO888
ROTULO887:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:112:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:112:38 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:112:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+47]
add sp, 8
ROTULO888:
ROTULO885:
mov sp, bp
pop bp
FIM_control_genericcontrolkeyboardinteracion:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:116:9 ===---
_control_genericcontrolfocuschanged:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: focus TAM: 2 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:116:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:116:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:117:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:117:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
cmp ax, 0
jne ROTULO890
jmp ROTULO891
ROTULO890:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:118:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:118:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+51]
add sp, 4
jmp ROTULO892
ROTULO891:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:120:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:120:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+55]
add sp, 4
ROTULO892:
ROTULO889:
mov sp, bp
pop bp
FIM_control_genericcontrolfocuschanged:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:124:9 ===---
_control_genericonclick:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:124:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:124:41 ===---
ROTULO893:
mov sp, bp
pop bp
FIM_control_genericonclick:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:127:9 ===---
_control_genericonkeypress:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:127:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:127:44 ===---
ROTULO894:
mov sp, bp
pop bp
FIM_control_genericonkeypress:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:130:9 ===---
_control_genericonkeyrelease:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:130:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:130:46 ===---
ROTULO895:
mov sp, bp
pop bp
FIM_control_genericonkeyrelease:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:133:9 ===---
_control_genericonfocus:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:133:24 ===---
ROTULO896:
mov sp, bp
pop bp
FIM_control_genericonfocus:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:136:9 ===---
_control_genericonlostfocus:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:136:28 ===---
ROTULO897:
mov sp, bp
pop bp
FIM_control_genericonlostfocus:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:139:16 ===---
_control_setparent:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: parent TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:139:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:139:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:140:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:140:26 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+59], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:141:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:141:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+60]
es pop word [di+60+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO898:
mov sp, bp
pop bp
FIM_control_setparent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:144:21 ===---
_control_getparent:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:144:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:145:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:145:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:145:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 59
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+59]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:145:30 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO902
jmp ROTULO903
ROTULO902:
mov ax, 65535
jmp ROTULO904
ROTULO903:
xor ax, ax
ROTULO904:
cmp ax, 0
jne ROTULO900
jmp ROTULO901
ROTULO900:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:145:43 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 145
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
ROTULO901:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:146:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:146:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
jmp ROTULO899
ROTULO899:
mov sp, bp
pop bp
FIM_control_getparent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:149:16 ===---
_control_add:
push bp
mov bp, sp
sub sp, 8
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: child TAM: 4 POS: BP+10 
; ARG: tmp TAM: 4 POS: BP--4 
; ARG: parent TAM: 4 POS: BP--8 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:149:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:149:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:150:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:151:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:152:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:152:18 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
pop word [bp+-8+2]
mov [bp+-8], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:153:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:153:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 64
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+64]
cmp ax, 0
jne ROTULO906
jmp ROTULO907
ROTULO906:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:154:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:154:21 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+67]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:155:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:155:21 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+65]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:156:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:156:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:157:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:157:22 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-4+2]
mov word [bp+6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:158:13 ===---
ROTULO908:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:158:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 69
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+69]
cmp ax, 0
jne ROTULO909
jmp ROTULO910
ROTULO909:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:159:18 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:159:25 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+72]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:160:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:160:25 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+70]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:161:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:161:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:162:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:162:26 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-4+2]
mov word [bp+6+2], ax
jmp ROTULO908
ROTULO910:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:164:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:164:35 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+69], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:165:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:165:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+10+2]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:166:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:166:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:167:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:167:32 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+70]
es pop word [di+70+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:168:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:168:31 ===---
mov ax, 1
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov [di+59], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:169:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:169:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
push word [bp+10+2]
pop es
mov di, [bp+10]
es pop word [di+60]
es pop word [di+60+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
jmp ROTULO911
ROTULO907:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:171:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:171:29 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+64], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:172:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:172:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+10+2]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:173:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:173:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:174:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:174:26 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+65]
es pop word [di+65+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:175:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:175:31 ===---
mov ax, 1
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov [di+59], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:176:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:176:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
push word [bp+10+2]
pop es
mov di, [bp+10]
es pop word [di+60]
es pop word [di+60+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO911:
ROTULO905:
mov sp, bp
pop bp
FIM_control_add:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:180:21 ===---
_control_count:
push bp
mov bp, sp
sub sp, 6
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: ret TAM: 2 POS: BP--2 
; ARG: ptr TAM: 4 POS: BP--6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:180:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:181:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:182:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:183:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:184:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:184:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 64
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+64]
cmp ax, 0
jne ROTULO913
jmp ROTULO914
ROTULO913:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:185:13 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:186:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:186:21 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+67]
mov word [bp+-6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:187:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:187:21 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+65]
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:188:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:188:22 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-6+2]
mov word [bp+6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:189:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:189:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:190:13 ===---
ROTULO915:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:190:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 69
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+69]
cmp ax, 0
jne ROTULO916
jmp ROTULO917
ROTULO916:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:191:17 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:192:18 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:192:25 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+72]
mov word [bp+-6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:193:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:193:25 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+70]
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
jmp ROTULO915
ROTULO917:
ROTULO914:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:198:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:198:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO912
ROTULO912:
mov sp, bp
pop bp
FIM_control_count:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:201:21 ===---
_control_item:
push bp
mov bp, sp
sub sp, 6
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: i TAM: 2 POS: BP--2 
; ARG: ptr TAM: 4 POS: BP--6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:201:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:201:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:202:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:203:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:204:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:205:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:205:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 64
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+64]
cmp ax, 0
jne ROTULO919
jmp ROTULO920
ROTULO919:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:206:13 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:207:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:207:21 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+67]
mov word [bp+-6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:208:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:208:21 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+65]
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:209:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:209:22 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-6+2]
mov word [bp+6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:210:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:210:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:211:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:211:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:211:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:211:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO923
jmp ROTULO924
ROTULO923:
mov ax, 65535
jmp ROTULO925
ROTULO924:
xor ax, ax
ROTULO925:
cmp ax, 0
jne ROTULO921
jmp ROTULO922
ROTULO921:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:211:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:211:42 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-6+2]
pop es
mov di, [bp+-6]
jmp ROTULO918
ROTULO922:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:212:13 ===---
ROTULO926:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:212:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 69
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+69]
cmp ax, 0
jne ROTULO927
jmp ROTULO928
ROTULO927:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:213:17 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:214:18 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:214:25 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+72]
mov word [bp+-6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:215:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:215:25 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+70]
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:216:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:216:26 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-6+2]
mov word [bp+6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:217:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:217:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:218:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:218:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:218:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:218:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO931
jmp ROTULO932
ROTULO931:
mov ax, 65535
jmp ROTULO933
ROTULO932:
xor ax, ax
ROTULO933:
cmp ax, 0
jne ROTULO929
jmp ROTULO930
ROTULO929:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:218:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:218:46 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-6+2]
pop es
mov di, [bp+-6]
jmp ROTULO918
ROTULO930:
jmp ROTULO926
ROTULO928:
ROTULO920:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:221:15 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 221
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
ROTULO918:
mov sp, bp
pop bp
FIM_control_item:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:224:16 ===---
_control_redraw:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:224:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:225:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:225:9 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+23]
add sp, 4
ROTULO934:
mov sp, bp
pop bp
FIM_control_redraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:228:16 ===---
_control_settext:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: txt TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:228:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:228:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:229:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:229:21 ===---
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
ROTULO935:
mov sp, bp
pop bp
FIM_control_settext:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:232:21 ===---
_control_gettext:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:232:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:233:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:233:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 10
push word [bp+6+2]
pop es
mov di, [bp+6]
es push word [di+10+2]
es push word [di+10]
pop di
pop es
jmp ROTULO936
ROTULO936:
mov sp, bp
pop bp
FIM_control_gettext:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:236:9 ===---
_control_drawchildren:
push bp
mov bp, sp
sub sp, 8
push cs
call _os_stackcheck
; ARG: parent TAM: 4 POS: BP+6 
; ARG: i TAM: 2 POS: BP--2 
; ARG: qtd TAM: 2 POS: BP--4 
; ARG: child TAM: 4 POS: BP--8 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:236:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:237:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:238:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:239:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:240:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:240:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:240:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:241:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:241:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
cmp ax, 0
jne ROTULO938
jmp ROTULO939
ROTULO938:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:242:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:242:26 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
ROTULO940:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:242:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:242:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:242:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO943
jmp ROTULO944
ROTULO943:
mov ax, 65535
jmp ROTULO945
ROTULO944:
xor ax, ax
ROTULO945:
cmp ax, 0
jne ROTULO941
jmp ROTULO942
ROTULO941:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:243:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:243:25 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:243:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:243:38 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:244:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:244:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:244:67 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:244:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:244:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:244:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 78
es mov ax, [di+78]
pop bx
add ax, bx
pop bx
add ax, bx
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov [di+82], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:245:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:245:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:245:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:245:50 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:245:52 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:245:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 74
es mov ax, [di+74]
pop bx
add ax, bx
pop bx
add ax, bx
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov [di+84], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:246:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:246:78 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:246:80 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:246:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:246:67 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:246:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:246:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:246:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 78
es mov ax, [di+78]
pop bx
add ax, bx
pop bx
add ax, bx
pop bx
add ax, bx
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov [di+86], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:247:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:247:75 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:247:77 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:247:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:247:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:247:50 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:247:52 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:247:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 74
es mov ax, [di+74]
pop bx
add ax, bx
pop bx
add ax, bx
pop bx
add ax, bx
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov [di+88], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:248:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:248:37 ===---
mov ax, 1
es mov [di+94], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:249:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:249:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:249:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:249:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:249:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 80
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+80]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:249:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:249:50 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:249:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO948
jmp ROTULO949
ROTULO948:
mov ax, 65535
jmp ROTULO950
ROTULO949:
xor ax, ax
ROTULO950:
cmp ax, 0
jne ROTULO946
jmp ROTULO947
ROTULO946:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:250:21 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:250:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:250:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 80
es mov ax, [di+80]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:250:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:250:50 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:250:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
pop bx
sub ax, bx
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov [di+86], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO947:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:252:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:252:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:252:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:252:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:252:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+76]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:252:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:252:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:252:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
add ax, bx
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO953
jmp ROTULO954
ROTULO953:
mov ax, 65535
jmp ROTULO955
ROTULO954:
xor ax, ax
ROTULO955:
cmp ax, 0
jne ROTULO951
jmp ROTULO952
ROTULO951:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:253:21 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:253:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:253:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
es mov ax, [di+76]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:253:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:253:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:253:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
add ax, bx
pop bx
sub ax, bx
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov [di+88], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO952:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:255:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:255:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:255:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+82]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:255:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:255:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 80
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+80]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:255:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:255:50 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:255:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO958
jmp ROTULO959
ROTULO958:
mov ax, 65535
jmp ROTULO960
ROTULO959:
xor ax, ax
ROTULO960:
cmp ax, 0
jne ROTULO956
jmp ROTULO957
ROTULO956:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:256:21 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:256:41 ===---
xor ax, ax
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov [di+94], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO957:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:258:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:258:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:258:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:258:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:258:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+76]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:258:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:258:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:258:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
add ax, bx
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO963
jmp ROTULO964
ROTULO963:
mov ax, 65535
jmp ROTULO965
ROTULO964:
xor ax, ax
ROTULO965:
cmp ax, 0
jne ROTULO961
jmp ROTULO962
ROTULO961:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:259:21 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:259:41 ===---
xor ax, ax
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov [di+94], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO962:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:261:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:261:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:261:50 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+82]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:261:35 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
es mov [di+90], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:262:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:262:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:262:51 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:262:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
es mov ax, [di+88]
pop bx
sub ax, bx
es mov [di+92], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 94
es mov ax, [di+94]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:41 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO971
jmp ROTULO972
ROTULO971:
mov ax, 65535
jmp ROTULO973
ROTULO972:
xor ax, ax
ROTULO973:
cmp ax, 0
je ROTULO969
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:51 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 14
xor ax, ax
es mov al, [di+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:68 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO974
jmp ROTULO975
ROTULO974:
mov ax, 65535
jmp ROTULO976
ROTULO975:
xor ax, ax
ROTULO976:
cmp ax, 0
je ROTULO969
ROTULO968:
mov ax, 65535
jmp ROTULO970
ROTULO969:
xor ax, ax
ROTULO970:
cmp ax, 0
jne ROTULO966
jmp ROTULO967
ROTULO966:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:264:21 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:264:28 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO967:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:242:26 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
jmp ROTULO940
ROTULO942:
ROTULO939:
ROTULO937:
mov sp, bp
pop bp
FIM_control_drawchildren:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:16 ===---
_control_focus:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: old TAM: 4 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:270:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:271:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:272:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:272:15 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_application_currentfocus+2]
pop es
cs mov di, [_application_currentfocus]
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:273:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:273:36 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
cs pop word [_application_currentfocus+2]
cs mov [_application_currentfocus], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:274:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:274:25 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+18], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:275:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:275:41 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:275:9 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
es call far [di+35]
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:13 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-4+2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:276:20 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO980
jmp ROTULO981
ROTULO980:
mov ax, 65535
jmp ROTULO982
ROTULO981:
xor ax, ax
ROTULO982:
cmp ax, 0
jne ROTULO978
jmp ROTULO979
ROTULO978:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:277:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:277:28 ===---
xor ax, ax
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov [di+18], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:278:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:278:44 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:278:13 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
es call far [di+35]
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:279:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:279:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 17
xor ax, ax
es mov al, [di+17]
cmp ax, 0
jne ROTULO983
jmp ROTULO984
ROTULO983:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:279:46 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:279:53 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO984:
ROTULO979:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:281:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:281:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 17
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+17]
cmp ax, 0
jne ROTULO985
jmp ROTULO986
ROTULO985:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:281:43 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:281:50 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO986:
ROTULO977:
mov sp, bp
pop bp
FIM_control_focus:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:284:16 ===---
_control_processkeyboard:
push bp
mov bp, sp
sub sp, 8
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
; ARG: next TAM: 4 POS: BP--4 
; ARG: i TAM: 2 POS: BP--6 
; ARG: max TAM: 2 POS: BP--8 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:284:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:284:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:286:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:296:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:297:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:285:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:285:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:285:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:285:27 ===---
mov ax, 9
mov bx, ax
pop ax
cmp ax, bx
je ROTULO990
jmp ROTULO991
ROTULO990:
mov ax, 65535
jmp ROTULO992
ROTULO991:
xor ax, ax
ROTULO992:
cmp ax, 0
jne ROTULO988
jmp ROTULO989
ROTULO988:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:287:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:287:20 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:288:13 ===---
ROTULO993:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:288:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 69
push word [bp+-4+2]
pop es
mov di, [bp+-4]
xor ax, ax
es mov al, [di+69]
cmp ax, 0
jne ROTULO994
jmp ROTULO995
ROTULO994:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:289:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:289:24 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 70
push word [bp+6+2]
pop es
mov di, [bp+6]
es push word [di+70+2]
es push word [di+70]
pop di
pop es
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:290:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:290:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 16
xor ax, ax
es mov al, [di+16]
cmp ax, 0
jne ROTULO996
jmp ROTULO997
ROTULO996:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:291:21 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:291:27 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _control_focus
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:292:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:292:26 ===---
xor ax, ax
jmp ROTULO987
ROTULO997:
jmp ROTULO993
ROTULO995:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:295:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:295:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 59
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+59]
cmp ax, 0
jne ROTULO998
jmp ROTULO999
ROTULO998:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:298:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:298:23 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:298:29 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 60
es push word [di+60+2]
es push word [di+60]
pop di
pop es
push es
push di
push cs
call _control_count
add sp, 4
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:299:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:299:30 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-6], 1
ROTULO1000:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:299:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:299:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:299:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO1003
jmp ROTULO1004
ROTULO1003:
mov ax, 65535
jmp ROTULO1005
ROTULO1004:
xor ax, ax
ROTULO1005:
cmp ax, 0
jne ROTULO1001
jmp ROTULO1002
ROTULO1001:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:300:21 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:300:28 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:300:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:300:33 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 60
push word [bp+6+2]
pop es
mov di, [bp+6]
es push word [di+60+2]
es push word [di+60]
pop di
pop es
push es
push di
push cs
call _control_item
add sp, 6
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:301:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:301:24 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 16
xor ax, ax
es mov al, [di+16]
cmp ax, 0
jne ROTULO1006
jmp ROTULO1007
ROTULO1006:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:302:25 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:302:31 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _control_focus
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:303:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:303:30 ===---
xor ax, ax
jmp ROTULO987
ROTULO1007:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:299:30 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-6]
jmp ROTULO1000
ROTULO1002:
ROTULO999:
jmp ROTULO1008
ROTULO989:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:308:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:308:51 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:308:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+31]
add sp, 8
ROTULO1008:
ROTULO987:
mov sp, bp
pop bp
FIM_control_processkeyboard:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:312:16 ===---
_control_show:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: parent TAM: 4 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:312:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:319:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:313:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:313:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:313:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 59
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+59]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:313:30 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1012
jmp ROTULO1013
ROTULO1012:
mov ax, 65535
jmp ROTULO1014
ROTULO1013:
xor ax, ax
ROTULO1014:
cmp ax, 0
jne ROTULO1010
jmp ROTULO1011
ROTULO1010:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:314:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:314:39 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:314:17 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
push es
push di
push cs
call _control_add
add sp, 8
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:315:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:315:40 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
cs pop word [_application_currentfocus+2]
cs mov [_application_currentfocus], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:316:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:316:44 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
cs pop word [_application_currentfocusform+2]
cs mov [_application_currentfocusform], di
ROTULO1011:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:318:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:318:24 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:320:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:320:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 60
es push word [di+60+2]
es push word [di+60]
pop di
pop es
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:321:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:321:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 94
es mov ax, [di+94]
cmp ax, 0
jne ROTULO1015
jmp ROTULO1016
ROTULO1015:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:321:36 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:321:43 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO1016:
ROTULO1009:
mov sp, bp
pop bp
FIM_control_show:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:324:16 ===---
_control_hide:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: parent TAM: 4 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:324:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:327:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:325:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:325:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:325:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 59
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+59]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:325:30 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1020
jmp ROTULO1021
ROTULO1020:
mov ax, 65535
jmp ROTULO1022
ROTULO1021:
xor ax, ax
ROTULO1022:
cmp ax, 0
jne ROTULO1018
jmp ROTULO1019
ROTULO1018:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:325:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:325:42 ===---
xor ax, ax
jmp ROTULO1017
ROTULO1019:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:326:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:326:24 ===---
xor ax, ax
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:328:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:328:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 60
es push word [di+60+2]
es push word [di+60]
pop di
pop es
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:329:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:329:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 94
es mov ax, [di+94]
cmp ax, 0
jne ROTULO1023
jmp ROTULO1024
ROTULO1023:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:329:36 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:329:43 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO1024:
ROTULO1017:
mov sp, bp
pop bp
FIM_control_hide:
retf
; MODULO FIM: control
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:334:8 ===---
; MODULO: screen
_screen:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:335:16 ===---
_screen_screencontrol:
times 100 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:337:16 ===---
_screen_initialize:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:338:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:338:28 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
push es
push di
push cs
call _control_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:339:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:339:29 ===---
xor ax, ax
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:340:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:340:30 ===---
xor ax, ax
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:341:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:341:31 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _graphics_getwidth
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:342:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:342:32 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _graphics_getheight
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:343:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:343:33 ===---
mov ax, 1
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:344:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:344:37 ===---
xor ax, ax
es mov [di+94], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:345:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:345:38 ===---
push cs
pop es
mov di, _screen_controlpaint
push es
push di
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
es pop word [di+23]
es pop word [di+23+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO1025:
FIM_screen_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:348:9 ===---
_screen_controlpaint:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:348:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:349:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:349:37 ===---
mov ax, 1
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
es mov [di+94], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:350:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:350:30 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_backgroundcolor
push ax
push cs
call _graphics_clearscreen
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:351:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:351:30 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_drawchildren
add sp, 4
ROTULO1026:
mov sp, bp
pop bp
FIM_screen_controlpaint:
retf
; MODULO FIM: screen
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:459:8 ===---
; MODULO: form
_form:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:460:16 ===---
_form_initialize:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:460:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:461:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:461:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:462:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:462:29 ===---
push cs
pop es
mov di, _form_controlpaint
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+23]
es pop word [di+23+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:463:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:463:24 ===---
push cs
pop es
mov di, _form_onfocus
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+51]
es pop word [di+51+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:464:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:464:30 ===---
mov ax, 2
es mov [di+76], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:465:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:465:28 ===---
mov ax, 2
es mov [di+78], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:466:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:466:29 ===---
mov ax, 2
es mov [di+80], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO1027:
mov sp, bp
pop bp
FIM_form_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:469:9 ===---
_form_onfocus:
push bp
mov bp, sp
sub sp, 8
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: qtd TAM: 2 POS: BP--2 
; ARG: i TAM: 2 POS: BP--4 
; ARG: child TAM: 4 POS: BP--8 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:469:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:470:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:471:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:475:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:472:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:472:40 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
cs pop word [_application_currentfocusform+2]
cs mov [_application_currentfocusform], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:473:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:473:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:473:29 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_count
add sp, 4
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:474:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:474:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-4], 1
ROTULO1029:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:474:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:474:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:474:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO1032
jmp ROTULO1033
ROTULO1032:
mov ax, 65535
jmp ROTULO1034
ROTULO1033:
xor ax, ax
ROTULO1034:
cmp ax, 0
jne ROTULO1030
jmp ROTULO1031
ROTULO1030:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:476:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:476:21 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:476:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:476:34 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:477:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:477:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 16
xor ax, ax
es mov al, [di+16]
cmp ax, 0
jne ROTULO1035
jmp ROTULO1036
ROTULO1035:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:478:17 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:478:31 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _control_focus
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:479:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:479:22 ===---
xor ax, ax
jmp ROTULO1028
ROTULO1036:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:474:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO1029
ROTULO1031:
ROTULO1028:
mov sp, bp
pop bp
FIM_form_onfocus:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:484:9 ===---
_form_controlpaint:
push bp
mov bp, sp
sub sp, 14
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: fnt TAM: 4 POS: BP--4 
; ARG: size TAM: 4 POS: BP--8 
; ARG: lefttext TAM: 2 POS: BP--10 
; ARG: righttext TAM: 2 POS: BP--12 
; ARG: i TAM: 2 POS: BP--14 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:484:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:485:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:486:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:487:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:488:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:489:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:490:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 4
push ss
pop es
mov di, sp
push es
pop word [bp+-8+2]
mov [bp+-8], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:491:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:491:15 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 19
push word [bp+6+2]
pop es
mov di, [bp+6]
es push word [di+19+2]
es push word [di+19]
pop di
pop es
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:492:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:492:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:492:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 92
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+92]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:492:30 ===---
mov ax, 30
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO1040
jmp ROTULO1041
ROTULO1040:
mov ax, 65535
jmp ROTULO1042
ROTULO1041:
xor ax, ax
ROTULO1042:
cmp ax, 0
jne ROTULO1038
jmp ROTULO1039
ROTULO1038:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:492:44 ===---
mov ax, _form
mov [bp+-8], ax
mov ax, 492
mov [bp+-10], ax
mov ax, 4
cs jmp word [_os_trycode]
ROTULO1039:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:493:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:493:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:493:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 90
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+90]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:493:29 ===---
mov ax, 50
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO1045
jmp ROTULO1046
ROTULO1045:
mov ax, 65535
jmp ROTULO1047
ROTULO1046:
xor ax, ax
ROTULO1047:
cmp ax, 0
jne ROTULO1043
jmp ROTULO1044
ROTULO1043:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:493:43 ===---
mov ax, _form
mov [bp+-8], ax
mov ax, 493
mov [bp+-10], ax
mov ax, 4
cs jmp word [_os_trycode]
ROTULO1044:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:494:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:494:118 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:494:84 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:494:71 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:494:58 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:494:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:494:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:495:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:495:105 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:495:92 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:495:93 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:495:90 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:495:91 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:495:79 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+84]
pop bx
add ax, bx
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:495:66 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:495:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:495:54 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:495:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:495:52 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:495:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+84]
pop bx
add ax, bx
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:495:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:496:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:496:74 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:496:68 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:496:70 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:496:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 90
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+90]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:496:47 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:496:36 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:496:31 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push cs
call _graphics_calcfontsize
add sp, 16
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:497:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:497:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:497:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:497:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:497:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:497:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 90
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+90]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:497:69 ===---
mov ax, 1
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:497:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:498:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:498:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:498:66 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:498:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:498:54 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:498:37 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 90
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+90]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:498:70 ===---
mov ax, 1
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:498:21 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:138 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:105 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowtitlecolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:92 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:93 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:90 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:91 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:79 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+84]
pop bx
add ax, bx
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:68 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:64 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:65 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 10
es push word [di+10+2]
es push word [di+10]
pop di
pop es
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:499:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push cs
call _graphics_drawtext
add sp, 20
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:500:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:500:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:500:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:500:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+6+2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:500:23 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
cs mov ax, [_application_currentfocusform+2]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1053
jmp ROTULO1054
ROTULO1053:
mov ax, 65535
jmp ROTULO1055
ROTULO1054:
xor ax, ax
ROTULO1055:
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:500:64 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:500:59 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:500:68 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
cs mov ax, [_application_currentfocusform]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1056
jmp ROTULO1057
ROTULO1056:
mov ax, 65535
jmp ROTULO1058
ROTULO1057:
xor ax, ax
ROTULO1058:
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO1048
jmp ROTULO1049
ROTULO1048:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:501:67 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:501:67 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:501:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:501:35 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:501:21 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+84]
pop bx
add ax, bx
mov [bp+-14], ax
ROTULO1059:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:501:67 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:501:67 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:501:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:501:67 ===---
mov ax, 3
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:501:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:501:54 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:501:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+84]
pop bx
add ax, bx
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO1062
jmp ROTULO1063
ROTULO1062:
mov ax, 65535
jmp ROTULO1064
ROTULO1063:
xor ax, ax
ROTULO1064:
cmp ax, 0
jne ROTULO1060
jmp ROTULO1061
ROTULO1060:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:502:17 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:502:75 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:502:72 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:502:67 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:502:69 ===---
mov ax, 3
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:502:55 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+82]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:502:52 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:502:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:502:49 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:502:35 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:503:17 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:503:73 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:503:70 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:503:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:503:67 ===---
mov ax, 5
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:503:56 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:503:53 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:503:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:503:49 ===---
mov ax, 13
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:503:35 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:504:17 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:504:73 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:504:70 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:504:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:504:67 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:504:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:504:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:504:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:504:47 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:504:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:505:17 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:501:67 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-14]
jmp ROTULO1059
ROTULO1061:
ROTULO1049:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:146 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:113 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:109 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:110 ===---
mov ax, 3
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:96 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:98 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:84 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+84]
pop bx
add ax, bx
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:78 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:80 ===---
mov ax, 11
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:66 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:63 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:46 ===---
mov ax, 5
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:508:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:509:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:509:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:509:31 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:509:27 ===---
mov ax, 2
pop bx
add ax, bx
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+74], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:510:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:510:30 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _control_drawchildren
add sp, 4
ROTULO1037:
mov sp, bp
pop bp
FIM_form_controlpaint:
retf
; MODULO FIM: form
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:446:8 ===---
; MODULO: label
_label:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:447:16 ===---
_label_initialize:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:447:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:448:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:448:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:449:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:449:29 ===---
push cs
pop es
mov di, _label_controlpaint
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+23]
es pop word [di+23+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:450:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:450:26 ===---
xor ax, ax
es mov [di+16], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO1065:
mov sp, bp
pop bp
FIM_label_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:453:9 ===---
_label_controlpaint:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:453:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:454:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:454:112 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:454:84 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:454:71 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:454:58 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:454:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:454:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:455:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:455:127 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:455:101 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_textcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:455:88 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:455:75 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:455:62 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:455:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:455:38 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 10
es push word [di+10+2]
es push word [di+10]
pop di
pop es
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:455:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 19
push word [bp+6+2]
pop es
mov di, [bp+6]
es push word [di+19+2]
es push word [di+19]
pop di
pop es
push es
push di
push cs
call _graphics_drawtext
add sp, 20
ROTULO1066:
mov sp, bp
pop bp
FIM_label_controlpaint:
retf
; MODULO FIM: label
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:406:8 ===---
; MODULO: button
_button:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:407:16 ===---
_button_initialize:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:407:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:408:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:408:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:409:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:409:29 ===---
push cs
pop es
mov di, _button_controlpaint
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+23]
es pop word [di+23+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:410:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:410:42 ===---
push cs
pop es
mov di, _button_controlkeyboardinteracion
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+31]
es pop word [di+31+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO1067:
mov sp, bp
pop bp
FIM_button_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:413:9 ===---
_button_controlkeyboardinteracion:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
; ARG: mouse TAM: 4 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:413:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:413:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:417:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:414:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:414:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 5
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov ax, [di+5]
cmp ax, 0
jne ROTULO1069
jmp ROTULO1070
ROTULO1069:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:415:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:415:36 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:415:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+43]
add sp, 8
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:416:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:416:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:416:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:416:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:416:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:416:32 ===---
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1079
jmp ROTULO1080
ROTULO1079:
mov ax, 65535
jmp ROTULO1081
ROTULO1080:
xor ax, ax
ROTULO1081:
cmp ax, 0
jne ROTULO1076
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:416:56 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:416:44 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:416:59 ===---
mov ax, 10
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1082
jmp ROTULO1083
ROTULO1082:
mov ax, 65535
jmp ROTULO1084
ROTULO1083:
xor ax, ax
ROTULO1084:
cmp ax, 0
je ROTULO1077
ROTULO1076:
mov ax, 65535
jmp ROTULO1078
ROTULO1077:
xor ax, ax
ROTULO1078:
cmp ax, 0
jne ROTULO1073
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:416:83 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:416:71 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:416:86 ===---
mov ax, 32
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1085
jmp ROTULO1086
ROTULO1085:
mov ax, 65535
jmp ROTULO1087
ROTULO1086:
xor ax, ax
ROTULO1087:
cmp ax, 0
je ROTULO1074
ROTULO1073:
mov ax, 65535
jmp ROTULO1075
ROTULO1074:
xor ax, ax
ROTULO1075:
cmp ax, 0
jne ROTULO1071
jmp ROTULO1072
ROTULO1071:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:418:17 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 12
push ss
pop es
mov di, sp
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:419:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:419:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+82]
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:420:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:420:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+84]
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:421:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:421:39 ===---
mov ax, 1
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:422:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:422:41 ===---
xor ax, ax
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:423:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:423:37 ===---
xor ax, ax
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:424:17 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:424:37 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:424:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+39]
add sp, 8
ROTULO1072:
jmp ROTULO1088
ROTULO1070:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:427:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:427:38 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:427:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+47]
add sp, 8
ROTULO1088:
ROTULO1068:
mov sp, bp
pop bp
FIM_button_controlkeyboardinteracion:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:431:9 ===---
_button_controlpaint:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:431:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:432:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:432:112 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:432:84 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:432:71 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:432:58 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:432:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:432:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 18
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:29 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO1092
jmp ROTULO1093
ROTULO1092:
mov ax, 65535
jmp ROTULO1094
ROTULO1093:
xor ax, ax
ROTULO1094:
cmp ax, 0
jne ROTULO1090
jmp ROTULO1091
ROTULO1090:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:36 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:122 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:117 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:119 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:105 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:100 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:102 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:88 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:83 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:85 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:71 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:66 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:68 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:433:54 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
ROTULO1091:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:434:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:434:87 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:434:74 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:434:69 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:434:71 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:434:57 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:434:44 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:434:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:434:41 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:434:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:435:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:435:87 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:435:74 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:435:69 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:435:71 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:435:57 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:435:44 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:435:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:435:41 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:435:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:436:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:436:87 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:436:82 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:436:84 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:436:70 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:436:57 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:436:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:436:54 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:436:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:436:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:437:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:437:87 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:437:82 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:437:84 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:437:70 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:437:57 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:437:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:437:54 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:437:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:437:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:438:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:438:62 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:438:57 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:438:59 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:438:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:438:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:438:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:438:28 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:439:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:439:62 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:439:57 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:439:59 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:439:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:439:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:439:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:439:28 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:440:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:440:62 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:440:57 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:440:59 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:440:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:440:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:440:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:440:28 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:441:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:441:62 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:441:57 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:441:59 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:441:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:441:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:441:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:441:28 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:143 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:117 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_textcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:112 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:114 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:100 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:95 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:97 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:83 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:78 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:80 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:66 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:63 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:38 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 10
es push word [di+10+2]
es push word [di+10]
pop di
pop es
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:442:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 19
push word [bp+6+2]
pop es
mov di, [bp+6]
es push word [di+19+2]
es push word [di+19]
pop di
pop es
push es
push di
push cs
call _graphics_drawtext
add sp, 20
ROTULO1089:
mov sp, bp
pop bp
FIM_button_controlpaint:
retf
; MODULO FIM: button
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:355:8 ===---
; MODULO: textbox
_textbox:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:356:16 ===---
_textbox_initialize:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:356:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:357:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:357:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:358:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:358:29 ===---
push cs
pop es
mov di, _textbox_controlpaint
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+23]
es pop word [di+23+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:359:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:359:42 ===---
push cs
pop es
mov di, _textbox_controlkeyboardinteracion
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+31]
es pop word [di+31+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO1095:
mov sp, bp
pop bp
FIM_textbox_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:362:9 ===---
_textbox_controlkeyboardinteracion:
push bp
mov bp, sp
sub sp, 10
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
; ARG: ptr TAM: 4 POS: BP--4 
; ARG: len TAM: 2 POS: BP--6 
; ARG: txt TAM: 4 POS: BP--10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:362:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:362:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:364:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:365:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:380:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:363:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:363:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 5
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov ax, [di+5]
cmp ax, 0
jne ROTULO1097
jmp ROTULO1098
ROTULO1097:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:366:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:366:24 ===---
xor ax, ax
es mov [di+7], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:367:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:367:36 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:367:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+43]
add sp, 8
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:368:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:368:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:368:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 7
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov ax, [di+7]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:368:28 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1101
jmp ROTULO1102
ROTULO1101:
mov ax, 65535
jmp ROTULO1103
ROTULO1102:
xor ax, ax
ROTULO1103:
cmp ax, 0
jne ROTULO1099
jmp ROTULO1100
ROTULO1099:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:369:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:369:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:369:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:369:35 ===---
mov ax, 8
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1106
jmp ROTULO1107
ROTULO1106:
mov ax, 65535
jmp ROTULO1108
ROTULO1107:
xor ax, ax
ROTULO1108:
cmp ax, 0
jne ROTULO1104
jmp ROTULO1105
ROTULO1104:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:370:21 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:370:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 10
push word [bp+6+2]
pop es
mov di, [bp+6]
es push word [di+10+2]
es push word [di+10]
pop di
pop es
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:371:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:371:27 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:371:41 ===---
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
push cs
call _string_length
add sp, 4
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:372:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:372:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:372:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:372:30 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO1111
jmp ROTULO1112
ROTULO1111:
mov ax, 65535
jmp ROTULO1113
ROTULO1112:
xor ax, ax
ROTULO1113:
cmp ax, 0
jne ROTULO1109
jmp ROTULO1110
ROTULO1109:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:373:26 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:373:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:373:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:373:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
pop bx
add ax, bx
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:374:25 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:375:25 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:375:40 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO1110:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:377:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:377:26 ===---
xor ax, ax
jmp ROTULO1096
ROTULO1105:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:379:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:379:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:379:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:379:21 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:379:36 ===---
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO1119
jmp ROTULO1120
ROTULO1119:
mov ax, 65535
jmp ROTULO1121
ROTULO1120:
xor ax, ax
ROTULO1121:
cmp ax, 0
je ROTULO1117
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:379:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:379:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:379:64 ===---
mov ax, 10
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO1122
jmp ROTULO1123
ROTULO1122:
mov ax, 65535
jmp ROTULO1124
ROTULO1123:
xor ax, ax
ROTULO1124:
cmp ax, 0
je ROTULO1117
ROTULO1116:
mov ax, 65535
jmp ROTULO1118
ROTULO1117:
xor ax, ax
ROTULO1118:
cmp ax, 0
jne ROTULO1114
jmp ROTULO1115
ROTULO1114:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:381:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:381:27 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:381:41 ===---
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
push cs
call _string_length
add sp, 4
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:382:21 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:382:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 10
push word [bp+6+2]
pop es
mov di, [bp+6]
es push word [di+10+2]
es push word [di+10]
pop di
pop es
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:383:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:383:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:383:24 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:383:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:383:37 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:383:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
pop bx
add ax, bx
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO1127
jmp ROTULO1128
ROTULO1127:
mov ax, 65535
jmp ROTULO1129
ROTULO1128:
xor ax, ax
ROTULO1129:
cmp ax, 0
jne ROTULO1125
jmp ROTULO1126
ROTULO1125:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:383:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:383:50 ===---
xor ax, ax
jmp ROTULO1096
ROTULO1126:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:384:21 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 129
push ss
pop es
mov di, sp
push es
pop word [bp+-10+2]
mov [bp+-10], di
es mov byte [di+0], 128
es mov byte [di+1], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:385:21 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:385:27 ===---
; ACAO LEITURA - Le ponteiro
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:386:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:387:21 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:387:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov [di+0], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:388:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:389:21 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:390:21 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:390:46 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-10+2]
pop es
mov di, [bp+-10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:390:35 ===---
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
push cs
call _string_concat
add sp, 8
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:391:21 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:391:36 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO1115:
ROTULO1100:
jmp ROTULO1130
ROTULO1098:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:395:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:395:38 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:395:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+47]
add sp, 8
ROTULO1130:
ROTULO1096:
mov sp, bp
pop bp
FIM_textbox_controlkeyboardinteracion:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:399:9 ===---
_textbox_controlpaint:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:399:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:400:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:400:118 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:400:84 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:400:71 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:400:58 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:400:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:400:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 18
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:29 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO1134
jmp ROTULO1135
ROTULO1134:
mov ax, 65535
jmp ROTULO1136
ROTULO1135:
xor ax, ax
ROTULO1136:
cmp ax, 0
jne ROTULO1132
jmp ROTULO1133
ROTULO1132:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:36 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:122 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:117 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:119 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:105 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:100 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:102 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:88 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:83 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:85 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:71 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:66 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:68 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:401:54 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
ROTULO1133:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:143 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:117 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_textcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:112 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:114 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:100 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:95 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:97 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:83 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:78 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:80 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:66 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:63 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:38 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 10
es push word [di+10+2]
es push word [di+10]
pop di
pop es
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:402:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 19
push word [bp+6+2]
pop es
mov di, [bp+6]
es push word [di+19+2]
es push word [di+19]
pop di
pop es
push es
push di
push cs
call _graphics_drawtext
add sp, 20
ROTULO1131:
mov sp, bp
pop bp
FIM_textbox_controlpaint:
retf
; MODULO FIM: textbox
;     ---=== teste.hcb:7:8 ===---
; MODULO: info
_info:
db 9
db 116,101,115,116,101,46,104,99,98
db 0
;     ---=== teste.hcb:8:9 ===---
_info_infoform:
times 100 db 0
;     ---=== teste.hcb:9:9 ===---
_info_info1label:
times 100 db 0
;     ---=== teste.hcb:10:9 ===---
_info_info2label:
times 100 db 0
;     ---=== teste.hcb:11:9 ===---
_info_info3label:
times 100 db 0
;     ---=== teste.hcb:13:16 ===---
_info_exibe:
;     ---=== teste.hcb:14:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:14:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_info_infoform+2]
pop es
cs mov di, [_info_infoform]
push es
push di
push cs
call _form_initialize
add sp, 4
;     ---=== teste.hcb:15:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:15:25 ===---
mov ax, 300
cs push word [_info_infoform+2]
pop es
cs mov di, [_info_infoform]
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:16:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:16:24 ===---
mov ax, 30
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:17:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:17:26 ===---
mov ax, 300
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:18:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:18:27 ===---
mov ax, 110
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:19:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:19:25 ===---
push cs
pop es
mov di, ROTULO1139
jmp ROTULO1138
ROTULO1139:
db 11
db 73,110,102,111,114,109,97,99,111,101,115
times 1 db 0
ROTULO1138:
push es
push di
cs push word [_info_infoform+2]
pop es
cs mov di, [_info_infoform]
es pop word [di+10]
es pop word [di+10+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:21:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:21:26 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_info_info1label+2]
pop es
cs mov di, [_info_info1label]
push es
push di
push cs
call _label_initialize
add sp, 4
;     ---=== teste.hcb:22:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:22:26 ===---
mov ax, 5
cs push word [_info_info1label+2]
pop es
cs mov di, [_info_info1label]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:23:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:23:27 ===---
mov ax, 5
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:24:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:24:28 ===---
mov ax, 290
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:25:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:25:29 ===---
mov ax, 15
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:26:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:26:27 ===---
push cs
pop es
mov di, ROTULO1141
jmp ROTULO1140
ROTULO1141:
db 33
db 45,32,65,112,101,110,97,115,32,115,117,112,111,114,116,97,32,108,101,116,114,97,115,32,101,32,110,117,109,101,114,111,115
times 1 db 0
ROTULO1140:
push es
push di
cs push word [_info_info1label+2]
pop es
cs mov di, [_info_info1label]
es pop word [di+10]
es pop word [di+10+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:27:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:27:30 ===---
mov ax, 1
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:28:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:28:31 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== teste.hcb:28:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_info_infoform+2]
pop es
cs mov di, [_info_infoform]
push es
push di
push cs
call _control_add
add sp, 8
;     ---=== teste.hcb:30:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:30:26 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_info_info2label+2]
pop es
cs mov di, [_info_info2label]
push es
push di
push cs
call _label_initialize
add sp, 4
;     ---=== teste.hcb:31:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:31:26 ===---
mov ax, 25
cs push word [_info_info2label+2]
pop es
cs mov di, [_info_info2label]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:32:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:32:27 ===---
mov ax, 5
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:33:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:33:28 ===---
mov ax, 290
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:34:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:34:29 ===---
mov ax, 15
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:35:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:35:27 ===---
push cs
pop es
mov di, ROTULO1143
jmp ROTULO1142
ROTULO1143:
db 24
db 45,32,67,97,109,112,111,32,100,101,32,116,101,120,116,111,32,115,105,109,112,108,101,115
times 1 db 0
ROTULO1142:
push es
push di
cs push word [_info_info2label+2]
pop es
cs mov di, [_info_info2label]
es pop word [di+10]
es pop word [di+10+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:36:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:36:30 ===---
mov ax, 1
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:37:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:37:31 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== teste.hcb:37:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_info_infoform+2]
pop es
cs mov di, [_info_infoform]
push es
push di
push cs
call _control_add
add sp, 8
;     ---=== teste.hcb:39:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:39:26 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_info_info3label+2]
pop es
cs mov di, [_info_info3label]
push es
push di
push cs
call _label_initialize
add sp, 4
;     ---=== teste.hcb:40:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:40:26 ===---
mov ax, 45
cs push word [_info_info3label+2]
pop es
cs mov di, [_info_info3label]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:41:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:41:27 ===---
mov ax, 5
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:42:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:42:28 ===---
mov ax, 290
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:43:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:43:29 ===---
mov ax, 15
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:44:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:44:27 ===---
push cs
pop es
mov di, ROTULO1145
jmp ROTULO1144
ROTULO1145:
db 35
db 45,32,78,97,118,101,103,97,99,97,111,32,97,112,101,110,97,115,32,117,115,97,110,100,111,32,116,101,99,108,97,32,84,65,66
times 1 db 0
ROTULO1144:
push es
push di
cs push word [_info_info3label+2]
pop es
cs mov di, [_info_info3label]
es pop word [di+10]
es pop word [di+10+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:45:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:45:30 ===---
mov ax, 1
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:46:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:46:31 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== teste.hcb:46:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_info_infoform+2]
pop es
cs mov di, [_info_infoform]
push es
push di
push cs
call _control_add
add sp, 8
;     ---=== teste.hcb:48:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:48:22 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_info_infoform+2]
pop es
cs mov di, [_info_infoform]
push es
push di
push cs
call _control_show
add sp, 4
ROTULO1137:
FIM_info_exibe:
retf
; MODULO FIM: info
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:310:8 ===---
; MODULO: console
_console:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:311:21 ===---
_console_avail:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:312:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:312:16 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_consoleavail
jmp ROTULO1146
ROTULO1146:
FIM_console_avail:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:315:21 ===---
_console_readchar:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:316:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:316:16 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_consolereadchar
jmp ROTULO1147
ROTULO1147:
FIM_console_readchar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:319:16 ===---
_console_readline:
push bp
mov bp, sp
sub sp, 6
push cs
call _os_stackcheck
; ARG: txt TAM: 4 POS: BP+6 
; ARG: len TAM: 2 POS: BP--2 
; ARG: stdin TAM: 4 POS: BP--6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:319:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:320:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:321:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:322:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:322:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:323:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:324:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 34
push ss
pop es
mov di, sp
push es
pop word [bp+-6+2]
mov [bp+-6], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:325:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:325:20 ===---
xor ax, ax
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:326:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:326:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:326:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:326:35 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:326:28 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:327:9 ===---
ROTULO1149:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:327:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:327:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:327:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:327:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:327:21 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO1158
jmp ROTULO1159
ROTULO1158:
mov ax, 65535
jmp ROTULO1160
ROTULO1159:
xor ax, ax
ROTULO1160:
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:327:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:327:27 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:327:34 ===---
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO1161
jmp ROTULO1162
ROTULO1161:
mov ax, 65535
jmp ROTULO1163
ROTULO1162:
xor ax, ax
ROTULO1163:
mov bx, ax
pop ax
and ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:327:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:327:41 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:327:48 ===---
mov ax, 10
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO1164
jmp ROTULO1165
ROTULO1164:
mov ax, 65535
jmp ROTULO1166
ROTULO1165:
xor ax, ax
ROTULO1166:
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO1150
jmp ROTULO1151
ROTULO1150:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:328:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
jmp ROTULO1149
ROTULO1151:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:330:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO1148:
mov sp, bp
pop bp
FIM_console_readline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:333:16 ===---
_console_writechar:
push bp
mov bp, sp
; ARG: c TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:333:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:334:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:334:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
xor ah, ah
push ax
push cs
call _os_consolewritechar
add sp, 2
ROTULO1167:
mov sp, bp
pop bp
FIM_console_writechar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:337:16 ===---
_console_write:
push bp
mov bp, sp
; ARG: txt TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:337:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:339:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:340:9 ===---
ROTULO1169:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:340:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:340:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:340:21 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO1172
jmp ROTULO1173
ROTULO1172:
mov ax, 65535
jmp ROTULO1174
ROTULO1173:
xor ax, ax
ROTULO1174:
cmp ax, 0
jne ROTULO1170
jmp ROTULO1171
ROTULO1170:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:341:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:341:23 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
xor ah, ah
push ax
push cs
call _console_writechar
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:342:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
jmp ROTULO1169
ROTULO1171:
ROTULO1168:
mov sp, bp
pop bp
FIM_console_write:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:346:16 ===---
_console_writeline:
push bp
mov bp, sp
; ARG: txt TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:346:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:347:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:347:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:348:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:348:19 ===---
mov ax, 13
xor ah, ah
push ax
push cs
call _console_writechar
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:349:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:349:19 ===---
mov ax, 10
xor ah, ah
push ax
push cs
call _console_writechar
add sp, 2
ROTULO1175:
mov sp, bp
pop bp
FIM_console_writeline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:352:16 ===---
_console_writeuint16:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: nro TAM: 2 POS: BP+6 
; ARG: tmp TAM: 2 POS: BP--2 
; ARG: prox TAM: 2 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:352:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:353:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:354:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:355:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:355:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:355:19 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:355:27 ===---
mov ax, 10
cmp ax, 0
jne ROTULO1177
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:355:27 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 355
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO1177:
mov bx, ax
pop ax
xor dx, dx
div bx
mov ax, dx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:356:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:356:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:356:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:356:26 ===---
mov ax, 10
cmp ax, 0
jne ROTULO1178
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:356:26 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 356
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO1178:
mov bx, ax
pop ax
xor dx, dx
div bx
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:357:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:357:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:357:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:357:19 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO1181
jmp ROTULO1182
ROTULO1181:
mov ax, 65535
jmp ROTULO1183
ROTULO1182:
xor ax, ax
ROTULO1183:
cmp ax, 0
jne ROTULO1179
jmp ROTULO1180
ROTULO1179:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:357:26 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:357:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO1180:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:358:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:358:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:358:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:358:19 ===---
mov ax, 48
pop bx
add ax, bx
xor ah, ah
push ax
push cs
call _console_writechar
add sp, 2
ROTULO1176:
mov sp, bp
pop bp
FIM_console_writeuint16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:361:16 ===---
_console_writeint16:
push bp
mov bp, sp
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:361:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:362:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:362:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:362:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:362:18 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jl ROTULO1187
jmp ROTULO1188
ROTULO1187:
mov ax, 65535
jmp ROTULO1189
ROTULO1188:
xor ax, ax
ROTULO1189:
cmp ax, 0
jne ROTULO1185
jmp ROTULO1186
ROTULO1185:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:363:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:363:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:363:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:363:23 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+6], ax
ROTULO1186:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:365:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:365:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO1184:
mov sp, bp
pop bp
FIM_console_writeint16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:368:16 ===---
_console_writeuint8:
push bp
mov bp, sp
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:368:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:369:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:369:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO1190:
mov sp, bp
pop bp
FIM_console_writeuint8:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:372:16 ===---
_console_writeint8:
push bp
mov bp, sp
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:372:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:373:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:373:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeint16
add sp, 2
ROTULO1191:
mov sp, bp
pop bp
FIM_console_writeint8:
retf
; MODULO FIM: console
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:168:8 ===---
; MODULO: file
_file:
db 13
db 83,121,115,116,101,109,46,79,83,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:169:21 ===---
_file_open:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: filename TAM: 4 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:169:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:169:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:170:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:171:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:172:13 ===---
mov ax, 0x3d02
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:173:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:174:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:175:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:176:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:177:13 ===---
inc dx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:178:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:179:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:180:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:181:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:182:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:183:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:184:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 184
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:185:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:186:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:186:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:187:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:187:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:188:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:188:26 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:189:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:189:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:190:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:190:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:191:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:191:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:192:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:192:30 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:193:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:193:26 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:194:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:194:28 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:195:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:195:16 ===---
mov ax, 1
jmp ROTULO1192
ROTULO1192:
mov sp, bp
pop bp
FIM_file_open:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:198:21 ===---
_file_create:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: filename TAM: 4 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:198:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:198:46 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:199:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:200:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:201:13 ===---
mov ax, 0x3c00
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:202:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:203:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:204:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:205:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:206:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:207:13 ===---
inc dx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:208:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:209:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:210:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:211:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:212:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:213:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:214:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 214
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:215:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:216:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:216:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:217:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:217:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:218:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:218:26 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:219:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:219:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:220:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:220:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:221:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:221:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:222:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:222:16 ===---
mov ax, 1
jmp ROTULO1193
ROTULO1193:
mov sp, bp
pop bp
FIM_file_create:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:225:21 ===---
_file_read:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:225:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:225:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:226:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:227:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:227:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:228:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:229:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:229:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:229:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:229:31 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:229:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:230:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:230:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO1194
ROTULO1194:
mov sp, bp
pop bp
FIM_file_read:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:233:21 ===---
_file_readraw:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: data TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP+14 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:233:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:233:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:233:69 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:234:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:235:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:235:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:236:13 ===---
mov ax, 0x3f00
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:237:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:238:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:239:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:240:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:241:13 ===---
mov cx, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:242:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:243:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:244:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:245:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:246:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:247:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:248:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:249:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 249
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:250:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:251:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:251:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO1195
ROTULO1195:
mov sp, bp
pop bp
FIM_file_readraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:254:21 ===---
_file_write:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:254:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:254:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:255:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:256:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:256:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:256:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:257:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:258:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:258:16 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:258:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:258:33 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:258:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _file_writeraw
add sp, 10
jmp ROTULO1196
ROTULO1196:
mov sp, bp
pop bp
FIM_file_write:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:261:21 ===---
_file_writeraw:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: data TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP+14 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:261:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:261:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:261:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:262:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:263:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:263:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:264:13 ===---
mov ax, 0x4000
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:265:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:266:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:267:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:268:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:269:13 ===---
mov cx, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:270:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:271:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:272:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:273:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:274:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:275:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:276:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:277:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 277
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:278:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:279:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:279:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO1197
ROTULO1197:
mov sp, bp
pop bp
FIM_file_writeraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:282:21 ===---
_file_close:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:282:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:283:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:284:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:284:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:285:13 ===---
mov ax, 0x3e00
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:286:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:287:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:288:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:289:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 289
mov [bp+-10], ax
mov ax, 8
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:290:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:291:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:291:16 ===---
mov ax, 1
jmp ROTULO1198
ROTULO1198:
mov sp, bp
pop bp
FIM_file_close:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:294:21 ===---
_file_seekstart:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:294:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:294:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:295:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:296:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:296:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:297:13 ===---
mov ax, 0x4200
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:298:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:299:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:300:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:301:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:302:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:303:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 303
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:304:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:305:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:305:16 ===---
mov ax, 1
jmp ROTULO1199
ROTULO1199:
mov sp, bp
pop bp
FIM_file_seekstart:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:308:21 ===---
_file_seekcurrent:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:308:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:308:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:309:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:310:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:310:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:311:13 ===---
mov ax, 0x4201
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:312:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:313:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:314:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:315:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:316:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:317:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 317
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:318:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:319:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:319:16 ===---
mov ax, 1
jmp ROTULO1200
ROTULO1200:
mov sp, bp
pop bp
FIM_file_seekcurrent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:322:21 ===---
_file_seekend:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:322:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:322:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:323:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:324:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:324:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:325:13 ===---
mov ax, 0x4202
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:326:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:327:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:328:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:329:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:330:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:331:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 331
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:332:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:333:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:333:16 ===---
mov ax, 1
jmp ROTULO1201
ROTULO1201:
mov sp, bp
pop bp
FIM_file_seekend:
retf
; MODULO FIM: file
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:263:8 ===---
; MODULO: stream
_stream:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:265:21 ===---
_stream_readraw:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
; ARG: data TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP+14 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:265:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:265:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:265:64 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:266:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:266:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:266:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:266:26 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1205
jmp ROTULO1206
ROTULO1205:
mov ax, 65535
jmp ROTULO1207
ROTULO1206:
xor ax, ax
ROTULO1207:
cmp ax, 0
jne ROTULO1203
jmp ROTULO1204
ROTULO1203:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:266:39 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 266
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1204:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:267:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:267:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:267:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:267:33 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:267:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+2]
add sp, 10
jmp ROTULO1202
ROTULO1202:
mov sp, bp
pop bp
FIM_stream_readraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:270:21 ===---
_stream_read:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
; ARG: data TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:270:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:270:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:271:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:271:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:271:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:271:23 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1211
jmp ROTULO1212
ROTULO1211:
mov ax, 65535
jmp ROTULO1213
ROTULO1212:
xor ax, ax
ROTULO1213:
cmp ax, 0
jne ROTULO1209
jmp ROTULO1210
ROTULO1209:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:271:36 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 271
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1210:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:272:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:272:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:272:30 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:272:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+6]
add sp, 8
jmp ROTULO1208
ROTULO1208:
mov sp, bp
pop bp
FIM_stream_read:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:275:21 ===---
_stream_writeraw:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
; ARG: data TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP+14 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:275:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:275:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:275:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:276:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:276:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:276:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:276:27 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1217
jmp ROTULO1218
ROTULO1217:
mov ax, 65535
jmp ROTULO1219
ROTULO1218:
xor ax, ax
ROTULO1219:
cmp ax, 0
jne ROTULO1215
jmp ROTULO1216
ROTULO1215:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:276:40 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 276
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1216:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:277:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:277:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:277:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:277:34 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:277:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+10]
add sp, 10
jmp ROTULO1214
ROTULO1214:
mov sp, bp
pop bp
FIM_stream_writeraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:280:21 ===---
_stream_write:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
; ARG: data TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:280:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:280:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:281:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:281:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:281:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:281:24 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1223
jmp ROTULO1224
ROTULO1223:
mov ax, 65535
jmp ROTULO1225
ROTULO1224:
xor ax, ax
ROTULO1225:
cmp ax, 0
jne ROTULO1221
jmp ROTULO1222
ROTULO1221:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:281:37 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 281
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1222:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:282:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:282:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:282:31 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:282:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+14]
add sp, 8
jmp ROTULO1220
ROTULO1220:
mov sp, bp
pop bp
FIM_stream_write:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:285:21 ===---
_stream_close:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:285:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:286:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:286:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:286:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:286:24 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1229
jmp ROTULO1230
ROTULO1229:
mov ax, 65535
jmp ROTULO1231
ROTULO1230:
xor ax, ax
ROTULO1231:
cmp ax, 0
jne ROTULO1227
jmp ROTULO1228
ROTULO1227:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:286:37 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 286
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1228:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:287:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:287:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:287:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+18]
add sp, 4
jmp ROTULO1226
ROTULO1226:
mov sp, bp
pop bp
FIM_stream_close:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:290:21 ===---
_stream_seekcurrent:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:290:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:290:46 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:291:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:291:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:291:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:291:30 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1235
jmp ROTULO1236
ROTULO1235:
mov ax, 65535
jmp ROTULO1237
ROTULO1236:
xor ax, ax
ROTULO1237:
cmp ax, 0
jne ROTULO1233
jmp ROTULO1234
ROTULO1233:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:291:43 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 291
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1234:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:292:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:292:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:292:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:292:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+22]
add sp, 6
jmp ROTULO1232
ROTULO1232:
mov sp, bp
pop bp
FIM_stream_seekcurrent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:295:21 ===---
_stream_seekend:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
; ARG: pos TAM: 2 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:295:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:295:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:296:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:296:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:296:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+32]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:296:26 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1241
jmp ROTULO1242
ROTULO1241:
mov ax, 65535
jmp ROTULO1243
ROTULO1242:
xor ax, ax
ROTULO1243:
cmp ax, 0
jne ROTULO1239
jmp ROTULO1240
ROTULO1239:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:296:39 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 296
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1240:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:297:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:297:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:297:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:297:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+30]
add sp, 6
jmp ROTULO1238
ROTULO1238:
mov sp, bp
pop bp
FIM_stream_seekend:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:300:21 ===---
_stream_seekstart:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
; ARG: pos TAM: 2 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:300:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:300:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:301:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:301:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:301:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:301:28 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1247
jmp ROTULO1248
ROTULO1247:
mov ax, 65535
jmp ROTULO1249
ROTULO1248:
xor ax, ax
ROTULO1249:
cmp ax, 0
jne ROTULO1245
jmp ROTULO1246
ROTULO1245:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:301:41 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 301
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1246:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:302:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:302:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:302:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:302:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+26]
add sp, 6
jmp ROTULO1244
ROTULO1244:
mov sp, bp
pop bp
FIM_stream_seekstart:
retf
; MODULO FIM: stream
REALOC_TABLE:
dw 3
dw _colors_palette
dw 4
dw 0
dw 3
dw _program_mainform
dw 4
dw 0
dw 3
dw _program_helloworldlabel
dw 4
dw 0
dw 3
dw _program_okbutton
dw 4
dw 0
dw 3
dw _program_temptextbox
dw 4
dw 0
dw 3
dw _program_temptext
dw 4
dw 0
dw 3
dw _program_copiabutton
dw 4
dw 0
dw 3
dw _program_helloworldtext
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
dw _application_currentfocus
dw 4
dw 0
dw 3
dw _application_currentfocusform
dw 4
dw 0
dw 3
dw _screen_screencontrol
dw 4
dw 0
dw 3
dw _info_infoform
dw 4
dw 0
dw 3
dw _info_info1label
dw 4
dw 0
dw 3
dw _info_info2label
dw 4
dw 0
dw 3
dw _info_info3label
dw 4
dw 0
dw 0
dw 0
dw 0
dw 0
END:
