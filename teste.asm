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
.end
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:122:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:122:27 ===---
; ACAO CHAMADA - Le nome do arquivo com erro
mov di, [bp+-8]
push cs
pop es
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:123:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:123:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:124:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:124:33 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:127:13 ===---
errofatal:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:128:13 ===---
int 0x20
ROTULO2:
mov sp, bp
pop bp
FIM_os_start2:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:131:21 ===---
_os_codesegment:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:132:13 ===---
mov ax, cs
ROTULO88:
FIM_os_codesegment:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:135:21 ===---
_os_stacksegment:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:136:13 ===---
mov ax, ss
ROTULO89:
FIM_os_stacksegment:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:139:21 ===---
_os_realoctable:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:140:13 ===---
mov ax, REALOC_TABLE
ROTULO90:
FIM_os_realoctable:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:143:21 ===---
_os_consolereadchar:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:144:13 ===---
mov ah, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:145:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:146:13 ===---
xor ah, ah
ROTULO91:
FIM_os_consolereadchar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:149:16 ===---
_os_consolewritechar:
push bp
mov bp, sp
; ARG: c TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:149:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:150:13 ===---
mov dl, [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:151:13 ===---
mov ah, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:152:13 ===---
int 0x21
ROTULO92:
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
times 52 db 0
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
ROTULO93:
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
ROTULO94:
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
jmp ROTULO95
ROTULO95:
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
jmp ROTULO96
ROTULO96:
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
jmp ROTULO97
ROTULO97:
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
jmp ROTULO98
ROTULO98:
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
jmp ROTULO99
ROTULO99:
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
jmp ROTULO100
ROTULO100:
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
jmp ROTULO101
ROTULO101:
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
jmp ROTULO102
ROTULO102:
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
jmp ROTULO103
ROTULO103:
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
jmp ROTULO104
ROTULO104:
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
jmp ROTULO105
ROTULO105:
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
jmp ROTULO106
ROTULO106:
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
jmp ROTULO107
ROTULO107:
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
jmp ROTULO108
ROTULO108:
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
jmp ROTULO109
ROTULO109:
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
jmp ROTULO110
ROTULO110:
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
jmp ROTULO111
ROTULO111:
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
jne ROTULO113
jmp ROTULO114
ROTULO113:
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
jmp ROTULO112
jmp ROTULO124
ROTULO114:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 36
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+36]
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:155:57 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 38
es mov ax, [di+38]
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
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 40
es mov ax, [di+40]
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:156:59 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 42
es mov ax, [di+42]
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
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 44
es mov ax, [di+44]
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:157:58 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 46
es mov ax, [di+46]
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
jmp ROTULO112
ROTULO124:
ROTULO112:
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
_program_testestring:
times 4 db 0
db 255
times 255 db 0
;     ---=== teste.hcb:19:9 ===---
_program_mainform:
times 86 db 0
;     ---=== teste.hcb:21:16 ===---
_program_testecruzada:
;     ---=== teste.hcb:22:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _referenciacruzada_testecruzada
ROTULO125:
FIM_program_testecruzada:
retf
;     ---=== teste.hcb:24:16 ===---
_program_main:
push bp
mov bp, sp
sub sp, 38
push cs
call _os_stackcheck
; ARG: args TAM: 4 POS: BP+6 
; ARG: arq TAM: 4 POS: BP--14 
; ARG: txt TAM: 4 POS: BP--18 
; ARG: funcao TAM: 4 POS: BP--22 
; ARG: testestru TAM: 4 POS: BP--26 
; ARG: numero TAM: 2 POS: BP--28 
; ARG: numero2 TAM: 2 POS: BP--30 
; ARG: intptr TAM: 4 POS: BP--34 
; ARG: handlerptr TAM: 4 POS: BP--38 
;     ---=== teste.hcb:24:21 ===---
;     ---=== teste.hcb:25:13 ===---
;     ---=== teste.hcb:26:13 ===---
;     ---=== teste.hcb:27:13 ===---
;     ---=== teste.hcb:28:13 ===---
;     ---=== teste.hcb:65:17 ===---
;     ---=== teste.hcb:66:17 ===---
;     ---=== teste.hcb:108:13 ===---
;     ---=== teste.hcb:109:13 ===---
;     ---=== teste.hcb:29:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:29:29 ===---
; ACAO CHAMADA - Calcula tamanho de item
mov ax, 10
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== teste.hcb:30:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 34
push ss
pop es
mov di, sp
push es
pop word [bp+-14+2]
mov [bp+-14], di
;     ---=== teste.hcb:31:9 ===---
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
;     ---=== teste.hcb:32:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:32:23 ===---
push cs
pop es
mov di, ROTULO128
jmp ROTULO127
ROTULO128:
db 26
db 84,101,115,116,101,32,67,114,105,97,99,97,111,32,100,101,32,97,114,113,117,105,118,111,58,32
times 1 db 0
ROTULO127:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:33:12 ===---
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
mov ax, ROTULO129
cs mov [_os_trycode], ax
;     ---=== teste.hcb:34:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:34:30 ===---
push cs
pop es
mov di, ROTULO132
jmp ROTULO131
ROTULO132:
db 9
db 116,101,115,116,101,46,116,120,116
times 1 db 0
ROTULO131:
push es
push di
;     ---=== teste.hcb:34:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-14+2]
pop es
mov di, [bp+-14]
push es
push di
push cs
call _file_create
add sp, 8
;     ---=== teste.hcb:35:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:35:33 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:35:49 ===---
push cs
pop es
mov di, ROTULO134
jmp ROTULO133
ROTULO134:
db 47
db 84,101,120,116,111,32,116,101,115,116,101,32,110,111,32,97,114,113,117,105,118,111,32,101,115,99,114,105,116,111,32,112,101,108,111,32,116,101,115,116,101,46,104,99,98,46,32
times 1 db 0
ROTULO133:
push es
push di
;     ---=== teste.hcb:35:44 ===---
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
;     ---=== teste.hcb:36:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:36:27 ===---
push cs
pop es
mov di, ROTULO136
jmp ROTULO135
ROTULO136:
db 3
db 32,43,32
times 1 db 0
ROTULO135:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:37:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:37:33 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== teste.hcb:37:50 ===---
push cs
pop es
mov di, ROTULO138
jmp ROTULO137
ROTULO138:
db 41
db 84,101,120,116,111,32,116,101,115,116,101,32,101,109,105,116,105,100,111,32,118,105,97,32,83,116,114,117,99,116,117,114,101,32,83,116,114,101,97,109,46
times 1 db 0
ROTULO137:
push es
push di
;     ---=== teste.hcb:37:33 ===---
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
;     ---=== teste.hcb:38:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:38:24 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-14+2]
pop es
mov di, [bp+-14]
push es
push di
push cs
call _file_close
add sp, 4
;     ---=== teste.hcb:39:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:39:31 ===---
push cs
pop es
mov di, ROTULO140
jmp ROTULO139
ROTULO140:
db 15
db 32,66,121,116,101,115,32,101,115,99,114,105,116,111,115
times 1 db 0
ROTULO139:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO130
ROTULO129:
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
;     ---=== teste.hcb:41:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:41:31 ===---
push cs
pop es
mov di, ROTULO144
jmp ROTULO143
ROTULO144:
db 39
db 32,70,65,76,72,65,32,65,79,32,77,65,78,73,80,85,76,65,82,32,79,32,65,82,81,85,73,86,79,32,116,101,115,116,101,46,116,120,116
times 1 db 0
ROTULO143:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO130
ROTULO142:
cs jmp word [_os_tryfatal]
ROTULO130:
mov ax, [bp+-6]
cs mov [_os_trybase], ax
mov ax, [bp+-4]
cs mov [_os_trystack], ax
mov ax, [bp+-2]
cs mov [_os_trycode], ax
;     ---=== teste.hcb:43:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:43:23 ===---
push cs
pop es
mov di, ROTULO146
jmp ROTULO145
ROTULO146:
db 18
db 69,115,99,114,101,118,97,32,115,101,117,32,110,111,109,101,58,32
times 1 db 0
ROTULO145:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:44:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:44:26 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_readline
add sp, 4
;     ---=== teste.hcb:45:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:45:23 ===---
push cs
pop es
mov di, ROTULO148
jmp ROTULO147
ROTULO148:
db 4
db 79,105,101,32
times 1 db 0
ROTULO147:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:46:9 ===---
;     ---=== teste.hcb:46:31 ===---
;     ---=== teste.hcb:46:12 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:46:26 ===---
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
;     ---=== teste.hcb:46:34 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO151
jmp ROTULO152
ROTULO151:
mov ax, 65535
jmp ROTULO153
ROTULO152:
xor ax, ax
ROTULO153:
cmp ax, 0
jne ROTULO149
jmp ROTULO150
ROTULO149:
;     ---=== teste.hcb:47:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:47:27 ===---
push cs
pop es
mov di, ROTULO155
jmp ROTULO154
ROTULO155:
db 8
db 83,101,109,32,78,111,109,101
times 1 db 0
ROTULO154:
push es
push di
push cs
call _console_write
add sp, 4
jmp ROTULO156
ROTULO150:
;     ---=== teste.hcb:49:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:49:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_write
add sp, 4
ROTULO156:
;     ---=== teste.hcb:51:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:51:27 ===---
push cs
pop es
mov di, ROTULO158
jmp ROTULO157
ROTULO158:
db 1
db 33
times 1 db 0
ROTULO157:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:52:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:52:23 ===---
push cs
pop es
mov di, ROTULO160
jmp ROTULO159
ROTULO160:
db 27
db 84,101,115,116,101,32,100,101,32,102,117,110,99,97,111,32,105,110,100,105,114,101,116,97,58,32,39
times 1 db 0
ROTULO159:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:53:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== teste.hcb:53:18 ===---
push cs
pop es
mov di, _program_testefunc
push es
pop word [bp+-22+2]
mov [bp+-22], di
;     ---=== teste.hcb:54:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:54:29 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
call far [bp+-22]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== teste.hcb:55:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:55:27 ===---
push cs
pop es
mov di, ROTULO162
jmp ROTULO161
ROTULO162:
db 1
db 39
times 1 db 0
ROTULO161:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:56:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:56:30 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
cs mov ax, [_program_testestring+2]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== teste.hcb:57:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:57:23 ===---
push cs
pop es
mov di, ROTULO164
jmp ROTULO163
ROTULO164:
db 1
db 58
times 1 db 0
ROTULO163:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:58:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:58:30 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
cs mov ax, [_program_testestring]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== teste.hcb:59:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:59:27 ===---
push cs
pop es
mov di, ROTULO166
jmp ROTULO165
ROTULO166:
db 0
times 1 db 0
ROTULO165:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:60:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:60:26 ===---
push cs
pop es
mov di, ROTULO168
jmp ROTULO167
ROTULO168:
db 16
db 84,101,115,116,101,32,100,101,32,99,111,110,99,97,116,58
times 1 db 0
ROTULO167:
push es
push di
;     ---=== teste.hcb:60:21 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_copy
add sp, 8
;     ---=== teste.hcb:61:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:61:28 ===---
push cs
pop es
mov di, ROTULO170
jmp ROTULO169
ROTULO170:
db 21
db 32,84,101,120,116,111,32,99,111,110,99,97,116,101,110,97,100,111,32,49,44
times 1 db 0
ROTULO169:
push es
push di
;     ---=== teste.hcb:61:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_concat
add sp, 8
;     ---=== teste.hcb:62:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:62:28 ===---
push cs
pop es
mov di, ROTULO172
jmp ROTULO171
ROTULO172:
db 20
db 32,84,101,120,116,111,32,99,111,110,99,97,116,101,110,97,100,111,32,50
times 1 db 0
ROTULO171:
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
;     ---=== teste.hcb:63:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:64:11 ===---
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
mov ax, ROTULO173
cs mov [_os_trycode], ax
;     ---=== teste.hcb:67:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-30], 0
;     ---=== teste.hcb:68:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== teste.hcb:68:25 ===---
;     ---=== teste.hcb:68:22 ===---
mov ax, 10
push ax
;     ---=== teste.hcb:68:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-30]
cmp ax, 0
jne ROTULO175
;     ---=== teste.hcb:68:27 ===---
mov ax, _program
mov [bp+-8], ax
mov ax, 68
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO175:
mov bx, ax
pop ax
xor dx, dx
div bx
mov [bp+-28], ax
jmp ROTULO174
ROTULO173:
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
je ROTULO176
jmp ROTULO177
ROTULO176:
;     ---=== teste.hcb:70:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:70:31 ===---
push cs
pop es
mov di, ROTULO179
jmp ROTULO178
ROTULO179:
db 21
db 68,105,118,105,115,97,111,32,112,111,114,32,122,101,114,111,32,112,101,103,97
times 1 db 0
ROTULO178:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== teste.hcb:71:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:71:27 ===---
; ACAO CHAMADA - Le nome do arquivo com erro
mov di, [bp+-8]
push cs
pop es
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:72:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:72:27 ===---
push cs
pop es
mov di, ROTULO181
jmp ROTULO180
ROTULO181:
db 2
db 58,32
times 1 db 0
ROTULO180:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:73:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:73:33 ===---
; ACAO CHAMADA - Le linha com erro
mov ax, [bp+-10]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== teste.hcb:74:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:74:31 ===---
push cs
pop es
mov di, ROTULO183
jmp ROTULO182
ROTULO183:
db 0
times 1 db 0
ROTULO182:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO174
ROTULO177:
cs jmp word [_os_tryfatal]
ROTULO174:
mov ax, [bp+-6]
cs mov [_os_trybase], ax
mov ax, [bp+-4]
cs mov [_os_trystack], ax
mov ax, [bp+-2]
cs mov [_os_trycode], ax
;     ---=== teste.hcb:76:9 ===---
;     ---=== teste.hcb:76:12 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:76:32 ===---
push cs
pop es
mov di, ROTULO187
jmp ROTULO186
ROTULO187:
db 2
db 111,105
times 1 db 0
ROTULO186:
push es
push di
;     ---=== teste.hcb:76:26 ===---
push cs
pop es
mov di, ROTULO189
jmp ROTULO188
ROTULO189:
db 2
db 111,105
times 1 db 0
ROTULO188:
push es
push di
push cs
call _string_equals
add sp, 8
cmp ax, 0
jne ROTULO184
jmp ROTULO185
ROTULO184:
;     ---=== teste.hcb:76:43 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:76:61 ===---
push cs
pop es
mov di, ROTULO191
jmp ROTULO190
ROTULO191:
db 10
db 69,81,85,65,76,32,84,69,83,84
times 1 db 0
ROTULO190:
push es
push di
push cs
call _console_writeline
add sp, 4
ROTULO185:
;     ---=== teste.hcb:78:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _vga_mode640x480x2
;     ---=== teste.hcb:79:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:79:37 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:79:33 ===---
mov ax, 19
push ax
;     ---=== teste.hcb:79:28 ===---
mov ax, 114
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== teste.hcb:80:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:80:37 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:80:33 ===---
mov ax, 51
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
mov ax, 19
push ax
;     ---=== teste.hcb:81:28 ===---
mov ax, 216
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
mov ax, 51
push ax
;     ---=== teste.hcb:82:28 ===---
mov ax, 216
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== teste.hcb:83:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:83:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:83:38 ===---
mov ax, 44
push ax
;     ---=== teste.hcb:83:35 ===---
xor ax, ax
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
;     ---=== teste.hcb:84:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:84:38 ===---
mov ax, 50
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
mov ax, 65
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
;     ---=== teste.hcb:86:39 ===---
xor ax, ax
push ax
;     ---=== teste.hcb:86:35 ===---
mov ax, 44
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
;     ---=== teste.hcb:88:42 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:88:39 ===---
xor ax, ax
push ax
;     ---=== teste.hcb:88:35 ===---
mov ax, 65
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
;     ---=== teste.hcb:89:44 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:89:40 ===---
mov ax, 65
push ax
;     ---=== teste.hcb:89:35 ===---
mov ax, 100
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
mov ax, 50
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
mov ax, 45
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
;     ---=== teste.hcb:92:39 ===---
mov ax, 100
push ax
;     ---=== teste.hcb:92:35 ===---
mov ax, 65
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
mov ax, 50
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
mov ax, 45
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
;     ---=== teste.hcb:95:51 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:95:49 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:95:46 ===---
mov ax, 48
push ax
;     ---=== teste.hcb:95:41 ===---
mov ax, 213
push ax
;     ---=== teste.hcb:95:37 ===---
mov ax, 22
push ax
;     ---=== teste.hcb:95:32 ===---
mov ax, 117
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== teste.hcb:96:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:96:51 ===---
mov ax, 65535
push ax
;     ---=== teste.hcb:96:49 ===---
mov ax, 1
push ax
;     ---=== teste.hcb:96:46 ===---
mov ax, 50
push ax
;     ---=== teste.hcb:96:41 ===---
mov ax, 215
push ax
;     ---=== teste.hcb:96:37 ===---
mov ax, 20
push ax
;     ---=== teste.hcb:96:32 ===---
mov ax, 115
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== teste.hcb:97:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _application_initialize
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
call _form_initialize
add sp, 4
;     ---=== teste.hcb:99:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:99:24 ===---
mov ax, 30
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:100:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:100:25 ===---
mov ax, 10
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:101:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:101:26 ===---
mov ax, 200
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:102:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== teste.hcb:102:27 ===---
mov ax, 100
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== teste.hcb:103:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:103:35 ===---
push cs
pop es
mov di, ROTULO193
jmp ROTULO192
ROTULO193:
db 37
db 48,49,50,51,52,53,54,55,56,57,32,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90
times 1 db 0
ROTULO192:
push es
push di
;     ---=== teste.hcb:103:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _control_settext
add sp, 8
;     ---=== teste.hcb:104:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:104:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _application_run
add sp, 4
;     ---=== teste.hcb:105:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _console_readchar
;     ---=== teste.hcb:106:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _graphics_mode80x25x16
;     ---=== teste.hcb:107:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:107:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== teste.hcb:110:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== teste.hcb:110:22 ===---
push cs
pop es
mov di, _program_interrupcao
push es
pop word [bp+-38+2]
mov [bp+-38], di
;     ---=== teste.hcb:111:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
mov word [bp+-34+2], 0
;     ---=== teste.hcb:112:10 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-34], 612
;     ---=== teste.hcb:113:13 ===---
cli
;     ---=== teste.hcb:114:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== teste.hcb:114:19 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-38]
push word [bp+-34+2]
pop es
mov di, [bp+-34]
es mov [di+0], ax
;     ---=== teste.hcb:115:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-34]
;     ---=== teste.hcb:116:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-34]
;     ---=== teste.hcb:117:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== teste.hcb:117:19 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-38+2]
push word [bp+-34+2]
pop es
mov di, [bp+-34]
es mov [di+0], ax
;     ---=== teste.hcb:118:13 ===---
sti
;     ---=== teste.hcb:119:13 ===---
int 0x99
ROTULO126:
mov sp, bp
pop bp
FIM_program_main:
retf
;     ---=== teste.hcb:124:9 ===---
_program_interrupcao:
push di
push es
push si
push ds
push dx
push cx
push bx
push ax
push bp
mov ax, sp
push ax
push ss
push ss
pop ds
push bp
mov bp, sp
; ARG: ss TAM: 2 POS: BP+2 
; ARG: sp TAM: 2 POS: BP+4 
; ARG: bp TAM: 2 POS: BP+6 
; ARG: ax TAM: 2 POS: BP+8 
; ARG: bx TAM: 2 POS: BP+10 
; ARG: cx TAM: 2 POS: BP+12 
; ARG: dx TAM: 2 POS: BP+14 
; ARG: ds TAM: 2 POS: BP+16 
; ARG: si TAM: 2 POS: BP+18 
; ARG: es TAM: 2 POS: BP+20 
; ARG: di TAM: 2 POS: BP+22 
; ARG: ip TAM: 2 POS: BP+24 
; ARG: cs TAM: 2 POS: BP+26 
; ARG: flags TAM: 2 POS: BP+28 
;     ---=== teste.hcb:124:21 ===---
;     ---=== teste.hcb:124:35 ===---
;     ---=== teste.hcb:124:49 ===---
;     ---=== teste.hcb:124:63 ===---
;     ---=== teste.hcb:124:77 ===---
;     ---=== teste.hcb:124:91 ===---
;     ---=== teste.hcb:124:105 ===---
;     ---=== teste.hcb:124:119 ===---
;     ---=== teste.hcb:124:133 ===---
;     ---=== teste.hcb:124:147 ===---
;     ---=== teste.hcb:124:161 ===---
;     ---=== teste.hcb:124:175 ===---
;     ---=== teste.hcb:124:189 ===---
;     ---=== teste.hcb:124:203 ===---
;     ---=== teste.hcb:125:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== teste.hcb:125:27 ===---
push cs
pop es
mov di, ROTULO196
jmp ROTULO195
ROTULO196:
db 31
db 73,110,116,101,114,114,117,112,99,97,111,32,110,117,109,101,114,111,32,48,120,57,57,32,99,104,97,109,97,100,97
times 1 db 0
ROTULO195:
push es
push di
push cs
call _console_writeline
add sp, 4
ROTULO194:
mov sp, bp
pop bp
pop ax
pop bx
mov ss, ax
mov sp, bx
pop bp
pop ax
pop bx
pop cx
pop dx
pop ds
pop si
pop es
pop di
FIM_program_interrupcao:
iret
;     ---=== teste.hcb:128:14 ===---
_program_testefunc:
;     ---=== teste.hcb:129:9 ===---
;     ---=== teste.hcb:129:16 ===---
mov ax, 123
jmp ROTULO197
ROTULO197:
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
ROTULO198:
FIM_referenciacruzada_testecruzada:
retf
; MODULO FIM: referenciacruzada
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:310:8 ===---
; MODULO: console
_console:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:311:21 ===---
_console_readchar:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:312:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:312:16 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_consolereadchar
jmp ROTULO199
ROTULO199:
FIM_console_readchar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:315:16 ===---
_console_readline:
push bp
mov bp, sp
sub sp, 6
push cs
call _os_stackcheck
; ARG: txt TAM: 4 POS: BP+6 
; ARG: len TAM: 2 POS: BP--2 
; ARG: stdin TAM: 4 POS: BP--6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:315:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:316:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:317:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:318:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:318:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:319:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:320:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 34
push ss
pop es
mov di, sp
push es
pop word [bp+-6+2]
mov [bp+-6], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:321:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:321:20 ===---
xor ax, ax
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:322:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:322:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:322:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:322:35 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:322:28 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:323:9 ===---
ROTULO201:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:323:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:323:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:323:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:323:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:323:21 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO210
jmp ROTULO211
ROTULO210:
mov ax, 65535
jmp ROTULO212
ROTULO211:
xor ax, ax
ROTULO212:
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:323:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:323:27 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:323:34 ===---
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO213
jmp ROTULO214
ROTULO213:
mov ax, 65535
jmp ROTULO215
ROTULO214:
xor ax, ax
ROTULO215:
mov bx, ax
pop ax
and ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:323:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:323:41 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:323:48 ===---
mov ax, 10
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO216
jmp ROTULO217
ROTULO216:
mov ax, 65535
jmp ROTULO218
ROTULO217:
xor ax, ax
ROTULO218:
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO202
jmp ROTULO203
ROTULO202:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:324:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
jmp ROTULO201
ROTULO203:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:326:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO200:
mov sp, bp
pop bp
FIM_console_readline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:329:16 ===---
_console_writechar:
push bp
mov bp, sp
; ARG: c TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:329:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:330:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:330:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _os_consolewritechar
add sp, 2
ROTULO219:
mov sp, bp
pop bp
FIM_console_writechar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:333:16 ===---
_console_write:
push bp
mov bp, sp
; ARG: txt TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:333:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:335:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:336:9 ===---
ROTULO221:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:336:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:336:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:336:21 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO224
jmp ROTULO225
ROTULO224:
mov ax, 65535
jmp ROTULO226
ROTULO225:
xor ax, ax
ROTULO226:
cmp ax, 0
jne ROTULO222
jmp ROTULO223
ROTULO222:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:337:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:337:23 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
push cs
call _console_writechar
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:338:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
jmp ROTULO221
ROTULO223:
ROTULO220:
mov sp, bp
pop bp
FIM_console_write:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:342:16 ===---
_console_writeline:
push bp
mov bp, sp
; ARG: txt TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:342:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:343:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:343:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:344:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:344:19 ===---
mov ax, 13
push ax
push cs
call _console_writechar
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:345:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:345:19 ===---
mov ax, 10
push ax
push cs
call _console_writechar
add sp, 2
ROTULO227:
mov sp, bp
pop bp
FIM_console_writeline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:348:16 ===---
_console_writeuint16:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: nro TAM: 2 POS: BP+6 
; ARG: tmp TAM: 2 POS: BP--2 
; ARG: prox TAM: 2 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:348:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:349:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:350:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:351:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:351:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:351:19 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:351:27 ===---
mov ax, 10
cmp ax, 0
jne ROTULO229
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:351:27 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 351
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO229:
mov bx, ax
pop ax
xor dx, dx
div bx
mov ax, dx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:352:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:352:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:352:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:352:26 ===---
mov ax, 10
cmp ax, 0
jne ROTULO230
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:352:26 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 352
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO230:
mov bx, ax
pop ax
xor dx, dx
div bx
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:353:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:353:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:353:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:353:19 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO233
jmp ROTULO234
ROTULO233:
mov ax, 65535
jmp ROTULO235
ROTULO234:
xor ax, ax
ROTULO235:
cmp ax, 0
jne ROTULO231
jmp ROTULO232
ROTULO231:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:353:26 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:353:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO232:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:354:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:354:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:354:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:354:19 ===---
mov ax, 48
pop bx
add ax, bx
push ax
push cs
call _console_writechar
add sp, 2
ROTULO228:
mov sp, bp
pop bp
FIM_console_writeuint16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:357:16 ===---
_console_writeint16:
push bp
mov bp, sp
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:357:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:358:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:358:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:358:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:358:18 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jl ROTULO239
jmp ROTULO240
ROTULO239:
mov ax, 65535
jmp ROTULO241
ROTULO240:
xor ax, ax
ROTULO241:
cmp ax, 0
jne ROTULO237
jmp ROTULO238
ROTULO237:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:359:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:359:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:359:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:359:23 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+6], ax
ROTULO238:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:361:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:361:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO236:
mov sp, bp
pop bp
FIM_console_writeint16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:364:16 ===---
_console_writeuint8:
push bp
mov bp, sp
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:364:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:365:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:365:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO242:
mov sp, bp
pop bp
FIM_console_writeuint8:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:368:16 ===---
_console_writeint8:
push bp
mov bp, sp
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:368:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:369:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:369:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeint16
add sp, 2
ROTULO243:
mov sp, bp
pop bp
FIM_console_writeint8:
retf
; MODULO FIM: console
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:157:8 ===---
; MODULO: file
_file:
db 13
db 83,121,115,116,101,109,46,79,83,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:158:21 ===---
_file_open:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: filename TAM: 4 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:158:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:158:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:159:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:160:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:161:13 ===---
mov ax, 0x3d02
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:162:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:163:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:164:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:165:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:166:13 ===---
inc dx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:167:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:168:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:169:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:170:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:171:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:172:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:173:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 173
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:174:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:175:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:175:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:176:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:176:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:177:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:177:26 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:178:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:178:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:179:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:179:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:180:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:180:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:181:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:181:30 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:182:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:182:26 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:183:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:183:28 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:184:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:184:16 ===---
mov ax, 1
jmp ROTULO244
ROTULO244:
mov sp, bp
pop bp
FIM_file_open:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:187:21 ===---
_file_create:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: filename TAM: 4 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:187:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:187:46 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:188:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:189:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:190:13 ===---
mov ax, 0x3c00
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:191:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:192:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:193:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:194:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:195:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:196:13 ===---
inc dx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:197:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:198:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:199:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:200:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:201:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:202:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:203:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 203
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:204:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:205:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:205:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:206:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:206:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:207:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:207:26 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:208:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:208:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:209:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:209:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:210:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:210:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:211:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:211:16 ===---
mov ax, 1
jmp ROTULO245
ROTULO245:
mov sp, bp
pop bp
FIM_file_create:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:214:21 ===---
_file_read:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:214:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:214:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:215:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:216:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:216:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:217:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:218:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:218:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:218:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:218:31 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:218:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:219:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:219:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO246
ROTULO246:
mov sp, bp
pop bp
FIM_file_read:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:222:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:222:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:222:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:222:69 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:223:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:224:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:224:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:225:13 ===---
mov ax, 0x3f00
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:226:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:227:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:228:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:229:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:230:13 ===---
mov cx, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:231:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:232:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:233:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:234:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:235:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:236:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:237:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:238:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 238
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:239:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:240:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:240:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO247
ROTULO247:
mov sp, bp
pop bp
FIM_file_readraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:243:21 ===---
_file_write:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:243:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:243:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:244:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:245:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:245:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:245:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:246:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:247:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:247:16 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:247:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:247:33 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:247:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _file_writeraw
add sp, 10
jmp ROTULO248
ROTULO248:
mov sp, bp
pop bp
FIM_file_write:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:250:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:250:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:250:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:250:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:251:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:252:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:252:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:253:13 ===---
mov ax, 0x4000
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:254:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:255:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:256:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:257:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:258:13 ===---
mov cx, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:259:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:260:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:261:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:262:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:263:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:264:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:265:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:266:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 266
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:267:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:268:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:268:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO249
ROTULO249:
mov sp, bp
pop bp
FIM_file_writeraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:271:21 ===---
_file_close:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:271:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:272:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:273:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:273:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:274:13 ===---
mov ax, 0x3e00
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:275:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:276:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:277:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:278:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 278
mov [bp+-10], ax
mov ax, 8
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:279:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:280:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:280:16 ===---
mov ax, 1
jmp ROTULO250
ROTULO250:
mov sp, bp
pop bp
FIM_file_close:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:283:21 ===---
_file_seekstart:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:283:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:283:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:284:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:285:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:285:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:286:13 ===---
mov ax, 0x4200
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:287:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:288:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:289:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:290:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:291:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:292:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 292
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:293:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:294:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:294:16 ===---
mov ax, 1
jmp ROTULO251
ROTULO251:
mov sp, bp
pop bp
FIM_file_seekstart:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:297:21 ===---
_file_seekcurrent:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:297:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:297:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:298:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:299:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:299:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:300:13 ===---
mov ax, 0x4201
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:301:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:302:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:303:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:304:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:305:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:306:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 306
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:307:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:308:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:308:16 ===---
mov ax, 1
jmp ROTULO252
ROTULO252:
mov sp, bp
pop bp
FIM_file_seekcurrent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:311:21 ===---
_file_seekend:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:311:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:311:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:312:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:313:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:313:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:314:13 ===---
mov ax, 0x4202
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:315:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:316:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:317:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:318:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:319:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:320:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 320
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:321:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:322:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:322:16 ===---
mov ax, 1
jmp ROTULO253
ROTULO253:
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:266:39 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 266
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO256:
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
jmp ROTULO254
ROTULO254:
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
je ROTULO263
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:271:36 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 271
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO262:
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
jmp ROTULO260
ROTULO260:
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
je ROTULO269
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:276:40 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 276
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO268:
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
jmp ROTULO266
ROTULO266:
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
je ROTULO275
jmp ROTULO276
ROTULO275:
mov ax, 65535
jmp ROTULO277
ROTULO276:
xor ax, ax
ROTULO277:
cmp ax, 0
jne ROTULO273
jmp ROTULO274
ROTULO273:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:281:37 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 281
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO274:
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
jmp ROTULO272
ROTULO272:
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
je ROTULO281
jmp ROTULO282
ROTULO281:
mov ax, 65535
jmp ROTULO283
ROTULO282:
xor ax, ax
ROTULO283:
cmp ax, 0
jne ROTULO279
jmp ROTULO280
ROTULO279:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:286:37 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 286
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO280:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:287:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:287:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:287:16 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
es call far [di+18]
add sp, 4
jmp ROTULO278
ROTULO278:
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
je ROTULO287
jmp ROTULO288
ROTULO287:
mov ax, 65535
jmp ROTULO289
ROTULO288:
xor ax, ax
ROTULO289:
cmp ax, 0
jne ROTULO285
jmp ROTULO286
ROTULO285:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:291:43 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 291
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO286:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:292:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:292:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:292:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:292:16 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
es call far [di+22]
add sp, 6
jmp ROTULO284
ROTULO284:
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
je ROTULO293
jmp ROTULO294
ROTULO293:
mov ax, 65535
jmp ROTULO295
ROTULO294:
xor ax, ax
ROTULO295:
cmp ax, 0
jne ROTULO291
jmp ROTULO292
ROTULO291:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:296:39 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 296
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO292:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:297:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:297:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:297:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:297:16 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
es call far [di+30]
add sp, 6
jmp ROTULO290
ROTULO290:
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
je ROTULO299
jmp ROTULO300
ROTULO299:
mov ax, 65535
jmp ROTULO301
ROTULO300:
xor ax, ax
ROTULO301:
cmp ax, 0
jne ROTULO297
jmp ROTULO298
ROTULO297:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:301:41 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 301
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO298:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:302:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:302:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:302:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:302:16 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
es call far [di+26]
add sp, 6
jmp ROTULO296
ROTULO296:
mov sp, bp
pop bp
FIM_stream_seekstart:
retf
; MODULO FIM: stream
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
ROTULO303:
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
ja ROTULO306
jmp ROTULO307
ROTULO306:
mov ax, 65535
jmp ROTULO308
ROTULO307:
xor ax, ax
ROTULO308:
cmp ax, 0
jne ROTULO304
jmp ROTULO305
ROTULO304:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:170:17 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:171:18 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
jmp ROTULO303
ROTULO305:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:173:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:173:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO302
ROTULO302:
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
ja ROTULO312
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:183:38 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 183
mov [bp+-10], ax
mov ax, 4
cs jmp word [_os_trycode]
ROTULO311:
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
ja ROTULO317
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:184:45 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 184
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO316:
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
ROTULO320:
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
jbe ROTULO323
jmp ROTULO324
ROTULO323:
mov ax, 65535
jmp ROTULO325
ROTULO324:
xor ax, ax
ROTULO325:
cmp ax, 0
jne ROTULO321
jmp ROTULO322
ROTULO321:
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:191:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:187:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-6]
jmp ROTULO320
ROTULO322:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:193:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO309:
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
ROTULO327:
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
je ROTULO335
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:200:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:200:38 ===---
mov ax, 1
jmp ROTULO326
ROTULO334:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:201:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:202:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
jmp ROTULO327
ROTULO329:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:204:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:204:16 ===---
xor ax, ax
jmp ROTULO326
ROTULO326:
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
ja ROTULO341
jmp ROTULO342
ROTULO341:
mov ax, 65535
jmp ROTULO343
ROTULO342:
xor ax, ax
ROTULO343:
cmp ax, 0
jne ROTULO339
jmp ROTULO340
ROTULO339:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:62 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 216
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO340:
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
ROTULO344:
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
jbe ROTULO347
jmp ROTULO348
ROTULO347:
mov ax, 65535
jmp ROTULO349
ROTULO348:
xor ax, ax
ROTULO349:
cmp ax, 0
jne ROTULO345
jmp ROTULO346
ROTULO345:
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:223:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-8]
jmp ROTULO344
ROTULO346:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:225:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:226:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:226:16 ===---
mov ax, 1
jmp ROTULO338
ROTULO338:
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
jb ROTULO353
jmp ROTULO354
ROTULO353:
mov ax, 65535
jmp ROTULO355
ROTULO354:
xor ax, ax
ROTULO355:
cmp ax, 0
jne ROTULO351
jmp ROTULO352
ROTULO351:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:239:54 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 239
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO352:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:240:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:240:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-6], 1
ROTULO356:
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
jbe ROTULO359
jmp ROTULO360
ROTULO359:
mov ax, 65535
jmp ROTULO361
ROTULO360:
xor ax, ax
ROTULO361:
cmp ax, 0
jne ROTULO357
jmp ROTULO358
ROTULO357:
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
jmp ROTULO356
ROTULO358:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:246:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:247:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:247:16 ===---
mov ax, 1
jmp ROTULO350
ROTULO350:
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
_vga_video:
times 30 db 0
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
ROTULO362:
FIM_vga_mode640x480x2:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:289:9 ===---
_vga_drawpixel:
push bp
mov bp, sp
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
jae ROTULO366
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:290:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:290:38 ===---
xor ax, ax
jmp ROTULO363
ROTULO365:
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
jae ROTULO371
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:291:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:291:39 ===---
xor ax, ax
jmp ROTULO363
ROTULO370:
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
ROTULO363:
mov sp, bp
pop bp
FIM_vga_drawpixel:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:319:9 ===---
_vga_byteandor:
push bp
mov bp, sp
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
ROTULO374:
mov sp, bp
pop bp
FIM_vga_byteandor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:337:9 ===---
_vga_byteset:
push bp
mov bp, sp
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
ROTULO375:
mov sp, bp
pop bp
FIM_vga_byteset:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:355:9 ===---
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
je ROTULO385
jmp ROTULO386
ROTULO385:
mov ax, 65535
jmp ROTULO387
ROTULO386:
xor ax, ax
ROTULO387:
cmp ax, 0
jne ROTULO383
jmp ROTULO384
ROTULO383:
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
ROTULO384:
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
jl ROTULO390
jmp ROTULO391
ROTULO390:
mov ax, 65535
jmp ROTULO392
ROTULO391:
xor ax, ax
ROTULO392:
cmp ax, 0
jne ROTULO388
jmp ROTULO389
ROTULO388:
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
ROTULO389:
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
ROTULO396:
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
jbe ROTULO399
jmp ROTULO400
ROTULO399:
mov ax, 65535
jmp ROTULO401
ROTULO400:
xor ax, ax
ROTULO401:
cmp ax, 0
jne ROTULO397
jmp ROTULO398
ROTULO397:
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
je ROTULO404
jmp ROTULO405
ROTULO404:
mov ax, 65535
jmp ROTULO406
ROTULO405:
xor ax, ax
ROTULO406:
cmp ax, 0
jne ROTULO402
jmp ROTULO403
ROTULO402:
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
jne ROTULO410
jmp ROTULO411
ROTULO410:
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
ROTULO411:
jmp ROTULO418
ROTULO403:
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
jne ROTULO421
jmp ROTULO422
ROTULO421:
mov ax, 65535
jmp ROTULO423
ROTULO422:
xor ax, ax
ROTULO423:
cmp ax, 0
jne ROTULO419
jmp ROTULO420
ROTULO419:
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
jne ROTULO427
jmp ROTULO428
ROTULO427:
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
ROTULO428:
ROTULO420:
ROTULO418:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:370:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO396
ROTULO398:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:385:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:385:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:385:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
not ax
ROTULO435:
mov ax, 65535
jmp ROTULO437
ROTULO436:
xor ax, ax
ROTULO437:
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
ROTULO438:
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
jbe ROTULO441
jmp ROTULO442
ROTULO441:
mov ax, 65535
jmp ROTULO443
ROTULO442:
xor ax, ax
ROTULO443:
cmp ax, 0
jne ROTULO439
jmp ROTULO440
ROTULO439:
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
jmp ROTULO438
ROTULO440:
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
jne ROTULO446
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
jne ROTULO449
jmp ROTULO450
ROTULO449:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:391:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 255
jmp ROTULO454
ROTULO450:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:393:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 0
ROTULO454:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:395:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:395:27 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:395:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-2], ax
ROTULO455:
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
jbe ROTULO458
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
jmp ROTULO455
ROTULO457:
ROTULO445:
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
ROTULO464:
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
jbe ROTULO467
jmp ROTULO468
ROTULO467:
mov ax, 65535
jmp ROTULO469
ROTULO468:
xor ax, ax
ROTULO469:
cmp ax, 0
jne ROTULO465
jmp ROTULO466
ROTULO465:
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
je ROTULO472
jmp ROTULO473
ROTULO472:
mov ax, 65535
jmp ROTULO474
ROTULO473:
xor ax, ax
ROTULO474:
cmp ax, 0
jne ROTULO470
jmp ROTULO471
ROTULO470:
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
jne ROTULO478
jmp ROTULO479
ROTULO478:
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
ROTULO479:
jmp ROTULO486
ROTULO471:
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
jne ROTULO489
jmp ROTULO490
ROTULO489:
mov ax, 65535
jmp ROTULO491
ROTULO490:
xor ax, ax
ROTULO491:
cmp ax, 0
jne ROTULO487
jmp ROTULO488
ROTULO487:
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
jne ROTULO495
jmp ROTULO496
ROTULO495:
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
ROTULO496:
ROTULO488:
ROTULO486:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:403:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO464
ROTULO466:
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
ROTULO503:
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
jbe ROTULO506
jmp ROTULO507
ROTULO506:
mov ax, 65535
jmp ROTULO508
ROTULO507:
xor ax, ax
ROTULO508:
cmp ax, 0
jne ROTULO504
jmp ROTULO505
ROTULO504:
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
jmp ROTULO503
ROTULO505:
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
ROTULO512:
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
jbe ROTULO515
jmp ROTULO516
ROTULO515:
mov ax, 65535
jmp ROTULO517
ROTULO516:
xor ax, ax
ROTULO517:
cmp ax, 0
jne ROTULO513
jmp ROTULO514
ROTULO513:
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
jne ROTULO521
jmp ROTULO522
ROTULO521:
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
ROTULO522:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:424:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO512
ROTULO514:
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
ROTULO532:
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
jbe ROTULO535
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
jne ROTULO541
jmp ROTULO542
ROTULO541:
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
ROTULO542:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:435:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO532
ROTULO534:
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
jne ROTULO549
jmp ROTULO550
ROTULO549:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:444:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 255
jmp ROTULO554
ROTULO550:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:446:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 0
ROTULO554:
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
ROTULO376:
mov sp, bp
pop bp
FIM_vga_drawrectangle:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:452:9 ===---
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
jne ROTULO556
jmp ROTULO557
ROTULO556:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:456:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 255
jmp ROTULO561
ROTULO557:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:458:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
ROTULO561:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-4], 0
ROTULO562:
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
jbe ROTULO565
jmp ROTULO566
ROTULO565:
mov ax, 65535
jmp ROTULO567
ROTULO566:
xor ax, ax
ROTULO567:
cmp ax, 0
jne ROTULO563
jmp ROTULO564
ROTULO563:
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
jmp ROTULO562
ROTULO564:
ROTULO555:
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
_genericvideo_palette:
times 52 db 0
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
ROTULO568:
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
ROTULO569:
FIM_genericvideo_register16colorspalette:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:170:16 ===---
_genericvideo_registerdrawline:
push bp
mov bp, sp
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
ROTULO570:
mov sp, bp
pop bp
FIM_genericvideo_registerdrawline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:174:16 ===---
_genericvideo_registerdrawellipse:
push bp
mov bp, sp
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
ROTULO571:
mov sp, bp
pop bp
FIM_genericvideo_registerdrawellipse:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:178:9 ===---
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
jmp ROTULO578
ROTULO574:
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
ROTULO578:
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
ja ROTULO581
jmp ROTULO582
ROTULO581:
mov ax, 65535
jmp ROTULO583
ROTULO582:
xor ax, ax
ROTULO583:
cmp ax, 0
jne ROTULO579
jmp ROTULO580
ROTULO579:
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
jmp ROTULO584
ROTULO580:
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
ROTULO584:
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
jg ROTULO587
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
ja ROTULO592
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
ROTULO591:
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
je ROTULO597
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:207:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
jmp ROTULO600
ROTULO596:
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
ja ROTULO603
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:210:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
jmp ROTULO606
ROTULO602:
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
ROTULO606:
ROTULO600:
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
ROTULO607:
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
jbe ROTULO610
jmp ROTULO611
ROTULO610:
mov ax, 65535
jmp ROTULO612
ROTULO611:
xor ax, ax
ROTULO612:
cmp ax, 0
jne ROTULO608
jmp ROTULO609
ROTULO608:
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
jge ROTULO615
jmp ROTULO616
ROTULO615:
mov ax, 65535
jmp ROTULO617
ROTULO616:
xor ax, ax
ROTULO617:
cmp ax, 0
jne ROTULO613
jmp ROTULO614
ROTULO613:
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
jmp ROTULO618
ROTULO614:
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
ROTULO618:
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
jmp ROTULO607
ROTULO609:
jmp ROTULO619
ROTULO586:
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
ja ROTULO622
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
ROTULO621:
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
je ROTULO627
jmp ROTULO628
ROTULO627:
mov ax, 65535
jmp ROTULO629
ROTULO628:
xor ax, ax
ROTULO629:
cmp ax, 0
jne ROTULO625
jmp ROTULO626
ROTULO625:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:240:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
jmp ROTULO630
ROTULO626:
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
ja ROTULO633
jmp ROTULO634
ROTULO633:
mov ax, 65535
jmp ROTULO635
ROTULO634:
xor ax, ax
ROTULO635:
cmp ax, 0
jne ROTULO631
jmp ROTULO632
ROTULO631:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:243:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
jmp ROTULO636
ROTULO632:
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
ROTULO636:
ROTULO630:
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
ROTULO637:
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
jbe ROTULO640
jmp ROTULO641
ROTULO640:
mov ax, 65535
jmp ROTULO642
ROTULO641:
xor ax, ax
ROTULO642:
cmp ax, 0
jne ROTULO638
jmp ROTULO639
ROTULO638:
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
jge ROTULO645
jmp ROTULO646
ROTULO645:
mov ax, 65535
jmp ROTULO647
ROTULO646:
xor ax, ax
ROTULO647:
cmp ax, 0
jne ROTULO643
jmp ROTULO644
ROTULO643:
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
jmp ROTULO648
ROTULO644:
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
ROTULO648:
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
jmp ROTULO637
ROTULO639:
ROTULO619:
ROTULO572:
mov sp, bp
pop bp
FIM_genericvideo_drawline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:266:9 ===---
_genericvideo_drawellipse:
push bp
mov bp, sp
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
ROTULO649:
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
_graphics_active:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:34:9 ===---
_graphics_video:
times 30 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:36:16 ===---
_graphics_drawpixel:
push bp
mov bp, sp
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
je ROTULO653
jmp ROTULO654
ROTULO653:
mov ax, 65535
jmp ROTULO655
ROTULO654:
xor ax, ax
ROTULO655:
cmp ax, 0
jne ROTULO651
jmp ROTULO652
ROTULO651:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:37:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 37
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO652:
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
jae ROTULO658
jmp ROTULO659
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:38:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:38:39 ===---
xor ax, ax
jmp ROTULO650
ROTULO657:
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
jae ROTULO663
jmp ROTULO664
ROTULO663:
mov ax, 65535
jmp ROTULO665
ROTULO664:
xor ax, ax
ROTULO665:
cmp ax, 0
jne ROTULO661
jmp ROTULO662
ROTULO661:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:39:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:39:40 ===---
xor ax, ax
jmp ROTULO650
ROTULO662:
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
ROTULO650:
mov sp, bp
pop bp
FIM_graphics_drawpixel:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:43:16 ===---
_graphics_drawline:
push bp
mov bp, sp
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
je ROTULO669
jmp ROTULO670
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:44:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 44
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO668:
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
jae ROTULO674
jmp ROTULO675
ROTULO674:
mov ax, 65535
jmp ROTULO676
ROTULO675:
xor ax, ax
ROTULO676:
cmp ax, 0
jne ROTULO672
jmp ROTULO673
ROTULO672:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:45:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:45:40 ===---
xor ax, ax
jmp ROTULO666
ROTULO673:
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
jae ROTULO679
jmp ROTULO680
ROTULO679:
mov ax, 65535
jmp ROTULO681
ROTULO680:
xor ax, ax
ROTULO681:
cmp ax, 0
jne ROTULO677
jmp ROTULO678
ROTULO677:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:46:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:46:41 ===---
xor ax, ax
jmp ROTULO666
ROTULO678:
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
jae ROTULO684
jmp ROTULO685
ROTULO684:
mov ax, 65535
jmp ROTULO686
ROTULO685:
xor ax, ax
ROTULO686:
cmp ax, 0
jne ROTULO682
jmp ROTULO683
ROTULO682:
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
ROTULO683:
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
jae ROTULO689
jmp ROTULO690
ROTULO689:
mov ax, 65535
jmp ROTULO691
ROTULO690:
xor ax, ax
ROTULO691:
cmp ax, 0
jne ROTULO687
jmp ROTULO688
ROTULO687:
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
ROTULO688:
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
ROTULO666:
mov sp, bp
pop bp
FIM_graphics_drawline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:52:16 ===---
_graphics_drawrectangle:
push bp
mov bp, sp
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
je ROTULO695
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:53:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 53
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO694:
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
jae ROTULO700
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:54:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:54:40 ===---
xor ax, ax
jmp ROTULO692
ROTULO699:
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:41 ===---
xor ax, ax
jmp ROTULO692
ROTULO704:
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
ROTULO709:
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
ROTULO714:
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
ROTULO692:
mov sp, bp
pop bp
FIM_graphics_drawrectangle:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:61:16 ===---
_graphics_drawellipse:
push bp
mov bp, sp
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
je ROTULO721
jmp ROTULO722
ROTULO721:
mov ax, 65535
jmp ROTULO723
ROTULO722:
xor ax, ax
ROTULO723:
cmp ax, 0
jne ROTULO719
jmp ROTULO720
ROTULO719:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:62:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 62
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO720:
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
jae ROTULO726
jmp ROTULO727
ROTULO726:
mov ax, 65535
jmp ROTULO728
ROTULO727:
xor ax, ax
ROTULO728:
cmp ax, 0
jne ROTULO724
jmp ROTULO725
ROTULO724:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:63:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:63:40 ===---
xor ax, ax
jmp ROTULO718
ROTULO725:
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
jae ROTULO731
jmp ROTULO732
ROTULO731:
mov ax, 65535
jmp ROTULO733
ROTULO732:
xor ax, ax
ROTULO733:
cmp ax, 0
jne ROTULO729
jmp ROTULO730
ROTULO729:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:41 ===---
xor ax, ax
jmp ROTULO718
ROTULO730:
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
jae ROTULO736
jmp ROTULO737
ROTULO736:
mov ax, 65535
jmp ROTULO738
ROTULO737:
xor ax, ax
ROTULO738:
cmp ax, 0
jne ROTULO734
jmp ROTULO735
ROTULO734:
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
ROTULO735:
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
jae ROTULO741
jmp ROTULO742
ROTULO741:
mov ax, 65535
jmp ROTULO743
ROTULO742:
xor ax, ax
ROTULO743:
cmp ax, 0
jne ROTULO739
jmp ROTULO740
ROTULO739:
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
ROTULO740:
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
ROTULO718:
mov sp, bp
pop bp
FIM_graphics_drawellipse:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:70:16 ===---
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
je ROTULO747
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:71:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 71
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO746:
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
jae ROTULO752
jmp ROTULO753
ROTULO752:
mov ax, 65535
jmp ROTULO754
ROTULO753:
xor ax, ax
ROTULO754:
cmp ax, 0
jne ROTULO750
jmp ROTULO751
ROTULO750:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:72:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:72:40 ===---
xor ax, ax
jmp ROTULO744
ROTULO751:
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
jae ROTULO757
jmp ROTULO758
ROTULO757:
mov ax, 65535
jmp ROTULO759
ROTULO758:
xor ax, ax
ROTULO759:
cmp ax, 0
jne ROTULO755
jmp ROTULO756
ROTULO755:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:41 ===---
xor ax, ax
jmp ROTULO744
ROTULO756:
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
jae ROTULO762
jmp ROTULO763
ROTULO762:
mov ax, 65535
jmp ROTULO764
ROTULO763:
xor ax, ax
ROTULO764:
cmp ax, 0
jne ROTULO760
jmp ROTULO761
ROTULO760:
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
ROTULO761:
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
jae ROTULO767
jmp ROTULO768
ROTULO767:
mov ax, 65535
jmp ROTULO769
ROTULO768:
xor ax, ax
ROTULO769:
cmp ax, 0
jne ROTULO765
jmp ROTULO766
ROTULO765:
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
ROTULO766:
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
ROTULO744:
mov sp, bp
pop bp
FIM_graphics_drawtext:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:79:16 ===---
_graphics_calcfontsize:
push bp
mov bp, sp
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
je ROTULO773
jmp ROTULO774
ROTULO773:
mov ax, 65535
jmp ROTULO775
ROTULO774:
xor ax, ax
ROTULO775:
cmp ax, 0
jne ROTULO771
jmp ROTULO772
ROTULO771:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 80
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO772:
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
ROTULO770:
mov sp, bp
pop bp
FIM_graphics_calcfontsize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:84:16 ===---
_graphics_clearscreen:
push bp
mov bp, sp
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
je ROTULO779
jmp ROTULO780
ROTULO779:
mov ax, 65535
jmp ROTULO781
ROTULO780:
xor ax, ax
ROTULO781:
cmp ax, 0
jne ROTULO777
jmp ROTULO778
ROTULO777:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 85
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO778:
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
ROTULO776:
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
jmp ROTULO782
ROTULO782:
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
je ROTULO786
jmp ROTULO787
ROTULO786:
mov ax, 65535
jmp ROTULO788
ROTULO787:
xor ax, ax
ROTULO788:
cmp ax, 0
jne ROTULO784
jmp ROTULO785
ROTULO784:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:94:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 94
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO785:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:95:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:95:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
jmp ROTULO783
ROTULO783:
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
je ROTULO792
jmp ROTULO793
ROTULO792:
mov ax, 65535
jmp ROTULO794
ROTULO793:
xor ax, ax
ROTULO794:
cmp ax, 0
jne ROTULO790
jmp ROTULO791
ROTULO790:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:99:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 99
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO791:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:100:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:100:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
jmp ROTULO789
ROTULO789:
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
je ROTULO798
jmp ROTULO799
ROTULO798:
mov ax, 65535
jmp ROTULO800
ROTULO799:
xor ax, ax
ROTULO800:
cmp ax, 0
jne ROTULO796
jmp ROTULO797
ROTULO796:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:104:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 104
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO797:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:105:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:105:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+4]
jmp ROTULO795
ROTULO795:
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
ROTULO801:
FIM_graphics_mode80x25x16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:114:16 ===---
_graphics_modemanual:
push bp
mov bp, sp
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
ROTULO802:
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
_font_default:
times 34 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:722:16 ===---
_font_initialize:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:723:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:723:29 ===---
; ACAO CHAMADA - Carrega binario embutido
jmp ROTULO804
ROTULO805:
db 7,0,3,0,3,0,1,0,88,0,97,0,131,0,140,0,149,0,158,0,167,0,176,0,185,0,194,0,203,0,212,0,221,0,230,0,239,0,248,0,1,1,10,1,19,1,28,1,37,1,46,1,55,1,64,1,73,1,82,1,91,1,100,1,109,1,118,1,127,1,136,1,145,1,154,1,163,1,172,1,181,1,190,1,199,1,208,1,9,83,105,115,116,101,109,97,0,34,72,117,109,98,101,114,116,111,32,67,111,115,116,97,32,100,111,115,32,83,97,110,116,111,115,32,74,117,110,105,111,114,0,5,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,6,0,48,72,148,164,164,72,48,3,0,32,96,160,32,32,32,32,5,0,112,136,8,16,32,64,248,5,0,248,8,48,8,8,8,240,5,0,136,136,136,248,8,8,8,5,0,248,128,240,8,8,8,240,5,0,112,136,128,240,136,136,112,5,0,248,8,8,16,32,64,128,5,0,112,136,136,112,136,136,112,5,0,112,136,136,120,8,136,112,7,0,56,68,130,254,130,130,130,6,0,248,132,132,248,132,132,248,6,0,56,68,128,128,128,68,56,7,0,248,132,130,130,130,132,248,6,0,252,128,128,240,128,128,252,6,0,252,128,128,240,128,128,128,6,0,120,132,128,156,132,132,120,6,0,132,132,132,252,132,132,132,1,0,128,128,128,128,128,128,128,5,0,8,8,8,8,8,136,112,6,0,132,132,136,240,136,132,132,5,0,128,128,128,128,128,128,248,7,0,130,198,170,146,130,130,130,7,0,130,194,162,146,138,134,130,7,0,124,130,130,130,130,130,124,6,0,248,132,132,248,128,128,128,8,0,124,130,130,130,138,132,123,7,0,248,132,132,248,132,132,130,6,0,120,132,128,120,4,132,120,7,0,254,16,16,16,16,16,16,7,0,130,130,130,130,130,130,124,7,0,130,130,130,130,68,40,16,7,0,130,130,130,146,170,198,130,7,0,130,68,40,16,40,68,130,7,0,130,68,40,16,32,64,128,7,0,254,4,8,16,32,64,254
ROTULO804:
push cs
pop es
mov di, ROTULO805
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
ROTULO803:
FIM_font_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:726:16 ===---
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
ROTULO806:
mov sp, bp
pop bp
FIM_font_loadbinary:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:756:14 ===---
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
push word [bp+6+2]
pop es
mov di, [bp+6]
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
jmp ROTULO807
ROTULO807:
mov sp, bp
pop bp
FIM_font_findchar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:768:9 ===---
_font_drawtext:
push bp
mov bp, sp
sub sp, 38
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
ROTULO809:
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
jbe ROTULO812
jmp ROTULO813
ROTULO812:
mov ax, 65535
jmp ROTULO814
ROTULO813:
xor ax, ax
ROTULO814:
cmp ax, 0
jne ROTULO810
jmp ROTULO811
ROTULO810:
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
jae ROTULO820
jmp ROTULO821
ROTULO820:
mov ax, 65535
jmp ROTULO822
ROTULO821:
xor ax, ax
ROTULO822:
cmp ax, 0
je ROTULO818
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
jbe ROTULO823
jmp ROTULO824
ROTULO823:
mov ax, 65535
jmp ROTULO825
ROTULO824:
xor ax, ax
ROTULO825:
cmp ax, 0
je ROTULO818
ROTULO817:
mov ax, 65535
jmp ROTULO819
ROTULO818:
xor ax, ax
ROTULO819:
cmp ax, 0
jne ROTULO815
jmp ROTULO816
ROTULO815:
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
ROTULO816:
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
jae ROTULO831
jmp ROTULO832
ROTULO831:
mov ax, 65535
jmp ROTULO833
ROTULO832:
xor ax, ax
ROTULO833:
cmp ax, 0
je ROTULO829
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
jbe ROTULO834
jmp ROTULO835
ROTULO834:
mov ax, 65535
jmp ROTULO836
ROTULO835:
xor ax, ax
ROTULO836:
cmp ax, 0
je ROTULO829
ROTULO828:
mov ax, 65535
jmp ROTULO830
ROTULO829:
xor ax, ax
ROTULO830:
cmp ax, 0
jne ROTULO826
jmp ROTULO827
ROTULO826:
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
ROTULO827:
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
je ROTULO839
jmp ROTULO840
ROTULO839:
mov ax, 65535
jmp ROTULO841
ROTULO840:
xor ax, ax
ROTULO841:
cmp ax, 0
jne ROTULO837
jmp ROTULO838
ROTULO837:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:797:34 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 1
ROTULO838:
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:801:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:801:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
xor ax, ax
es mov al, [di+0]
mov [bp+-18], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:802:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
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
je ROTULO844
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:804:35 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 1
ROTULO843:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:805:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:805:31 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-20], 1
ROTULO847:
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
ja ROTULO855
jmp ROTULO856
ROTULO855:
mov ax, 65535
jmp ROTULO857
ROTULO856:
xor ax, ax
ROTULO857:
cmp ax, 0
jne ROTULO853
jmp ROTULO854
ROTULO853:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:807:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:807:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+24]
cmp ax, 0
jne ROTULO858
jmp ROTULO859
ROTULO858:
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
jmp ROTULO860
ROTULO859:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:811:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:811:30 ===---
xor ax, ax
jmp ROTULO808
ROTULO860:
ROTULO854:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:814:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:814:30 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-22], 1
ROTULO861:
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
jbe ROTULO864
jmp ROTULO865
ROTULO864:
mov ax, 65535
jmp ROTULO866
ROTULO865:
xor ax, ax
ROTULO866:
cmp ax, 0
jne ROTULO862
jmp ROTULO863
ROTULO862:
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
jb ROTULO869
jmp ROTULO870
ROTULO869:
mov ax, 65535
jmp ROTULO871
ROTULO870:
xor ax, ax
ROTULO871:
cmp ax, 0
jne ROTULO867
jmp ROTULO868
ROTULO867:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:816:25 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 8
jmp ROTULO872
ROTULO868:
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
je ROTULO878
jmp ROTULO879
ROTULO878:
mov ax, 65535
jmp ROTULO880
ROTULO879:
xor ax, ax
ROTULO880:
cmp ax, 0
jne ROTULO876
jmp ROTULO877
ROTULO876:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:819:44 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 8
ROTULO877:
ROTULO872:
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
ROTULO881:
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
jbe ROTULO884
jmp ROTULO885
ROTULO884:
mov ax, 65535
jmp ROTULO886
ROTULO885:
xor ax, ax
ROTULO886:
cmp ax, 0
jne ROTULO882
jmp ROTULO883
ROTULO882:
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
jne ROTULO887
jmp ROTULO888
ROTULO887:
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
jbe ROTULO897
jmp ROTULO898
ROTULO897:
mov ax, 65535
jmp ROTULO899
ROTULO898:
xor ax, ax
ROTULO899:
cmp ax, 0
je ROTULO895
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
jbe ROTULO900
jmp ROTULO901
ROTULO900:
mov ax, 65535
jmp ROTULO902
ROTULO901:
xor ax, ax
ROTULO902:
cmp ax, 0
je ROTULO895
ROTULO894:
mov ax, 65535
jmp ROTULO896
ROTULO895:
xor ax, ax
ROTULO896:
cmp ax, 0
jne ROTULO892
jmp ROTULO893
ROTULO892:
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
ROTULO893:
ROTULO888:
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
jmp ROTULO881
ROTULO883:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:832:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:814:30 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-22]
jmp ROTULO861
ROTULO863:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:805:31 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-20]
jmp ROTULO847
ROTULO849:
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
jmp ROTULO809
ROTULO811:
ROTULO808:
mov sp, bp
pop bp
FIM_font_drawtext:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:840:9 ===---
_font_calcsize:
push bp
mov bp, sp
sub sp, 38
push cs
call _os_stackcheck
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
ROTULO904:
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
jbe ROTULO907
jmp ROTULO908
ROTULO907:
mov ax, 65535
jmp ROTULO909
ROTULO908:
xor ax, ax
ROTULO909:
cmp ax, 0
jne ROTULO905
jmp ROTULO906
ROTULO905:
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
jae ROTULO915
jmp ROTULO916
ROTULO915:
mov ax, 65535
jmp ROTULO917
ROTULO916:
xor ax, ax
ROTULO917:
cmp ax, 0
je ROTULO913
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
jbe ROTULO918
jmp ROTULO919
ROTULO918:
mov ax, 65535
jmp ROTULO920
ROTULO919:
xor ax, ax
ROTULO920:
cmp ax, 0
je ROTULO913
ROTULO912:
mov ax, 65535
jmp ROTULO914
ROTULO913:
xor ax, ax
ROTULO914:
cmp ax, 0
jne ROTULO910
jmp ROTULO911
ROTULO910:
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
ROTULO911:
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
jae ROTULO926
jmp ROTULO927
ROTULO926:
mov ax, 65535
jmp ROTULO928
ROTULO927:
xor ax, ax
ROTULO928:
cmp ax, 0
je ROTULO924
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
jbe ROTULO929
jmp ROTULO930
ROTULO929:
mov ax, 65535
jmp ROTULO931
ROTULO930:
xor ax, ax
ROTULO931:
cmp ax, 0
je ROTULO924
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
ROTULO922:
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
je ROTULO934
jmp ROTULO935
ROTULO934:
mov ax, 65535
jmp ROTULO936
ROTULO935:
xor ax, ax
ROTULO936:
cmp ax, 0
jne ROTULO932
jmp ROTULO933
ROTULO932:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:868:34 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 1
ROTULO933:
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
ja ROTULO939
jmp ROTULO940
ROTULO939:
mov ax, 65535
jmp ROTULO941
ROTULO940:
xor ax, ax
ROTULO941:
cmp ax, 0
jne ROTULO937
jmp ROTULO938
ROTULO937:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:872:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:872:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
cmp ax, 0
jne ROTULO942
jmp ROTULO943
ROTULO942:
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
jmp ROTULO944
ROTULO943:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:878:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:878:26 ===---
xor ax, ax
jmp ROTULO903
ROTULO944:
ROTULO938:
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
je ROTULO947
jmp ROTULO948
ROTULO947:
mov ax, 65535
jmp ROTULO949
ROTULO948:
xor ax, ax
ROTULO949:
cmp ax, 0
jne ROTULO945
jmp ROTULO946
ROTULO945:
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
ROTULO946:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:883:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:864:24 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-16]
jmp ROTULO904
ROTULO906:
ROTULO903:
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
_application_currenttheme:
times 14 db 0
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
ROTULO950:
FIM_application_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:330:16 ===---
_application_run:
push bp
mov bp, sp
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
ROTULO951:
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
_systemcolors_current:
times 4 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:291:21 ===---
_systemcolors_backgroundcolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:292:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:292:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+0]
jmp ROTULO952
ROTULO952:
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
jmp ROTULO953
ROTULO953:
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
jmp ROTULO954
ROTULO954:
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
jmp ROTULO955
ROTULO955:
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
jmp ROTULO956
ROTULO956:
FIM_systemcolors_windowtitlecolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:311:16 ===---
_systemcolors_initialize:
push bp
mov bp, sp
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
ROTULO957:
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
_screen_screencontrol:
times 86 db 0
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
ROTULO958:
FIM_screen_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:229:9 ===---
_screen_controlpaint:
push bp
mov bp, sp
sub sp, 8
push cs
call _os_stackcheck
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
jne ROTULO960
jmp ROTULO961
ROTULO960:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:236:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:236:26 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
ROTULO962:
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
jbe ROTULO965
jmp ROTULO966
ROTULO965:
mov ax, 65535
jmp ROTULO967
ROTULO966:
xor ax, ax
ROTULO967:
cmp ax, 0
jne ROTULO963
jmp ROTULO964
ROTULO963:
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
jmp ROTULO962
ROTULO964:
ROTULO961:
ROTULO959:
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
mov di, ROTULO970
jmp ROTULO969
ROTULO970:
db 0
times 1 db 0
ROTULO969:
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
ROTULO968:
mov sp, bp
pop bp
FIM_control_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:83:9 ===---
_control_genericcontrolpaint:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:83:29 ===---
ROTULO971:
mov sp, bp
pop bp
FIM_control_genericcontrolpaint:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:86:9 ===---
_control_genericcontrolmouseinteraction:
push bp
mov bp, sp
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
jne ROTULO973
jmp ROTULO974
ROTULO973:
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
ROTULO974:
ROTULO972:
mov sp, bp
pop bp
FIM_control_genericcontrolmouseinteraction:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:92:9 ===---
_control_genericcontrolkeyboardinteracion:
push bp
mov bp, sp
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
jne ROTULO979
jmp ROTULO980
ROTULO979:
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
jmp ROTULO981
ROTULO980:
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
ROTULO981:
ROTULO978:
mov sp, bp
pop bp
FIM_control_genericcontrolkeyboardinteracion:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:100:9 ===---
_control_genericcontrolfocuschanged:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: focus TAM: 2 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:100:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:100:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:101:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:101:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
cmp ax, 0
jne ROTULO983
jmp ROTULO984
ROTULO983:
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
jmp ROTULO985
ROTULO984:
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
ROTULO985:
ROTULO982:
mov sp, bp
pop bp
FIM_control_genericcontrolfocuschanged:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:108:9 ===---
_control_genericonclick:
push bp
mov bp, sp
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
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:111:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:111:44 ===---
ROTULO987:
mov sp, bp
pop bp
FIM_control_genericonkeypress:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:114:9 ===---
_control_genericonkeyrelease:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:114:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:114:46 ===---
ROTULO988:
mov sp, bp
pop bp
FIM_control_genericonkeyrelease:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:117:9 ===---
_control_genericonfocus:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:117:24 ===---
ROTULO989:
mov sp, bp
pop bp
FIM_control_genericonfocus:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:120:9 ===---
_control_genericonlostfocus:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:120:28 ===---
ROTULO990:
mov sp, bp
pop bp
FIM_control_genericonlostfocus:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:123:16 ===---
_control_setparent:
push bp
mov bp, sp
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
ROTULO991:
mov sp, bp
pop bp
FIM_control_setparent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:128:21 ===---
_control_getparent:
push bp
mov bp, sp
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
je ROTULO995
jmp ROTULO996
ROTULO995:
mov ax, 65535
jmp ROTULO997
ROTULO996:
xor ax, ax
ROTULO997:
cmp ax, 0
jne ROTULO993
jmp ROTULO994
ROTULO993:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:129:43 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 129
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
ROTULO994:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:130:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:130:16 ===---
; ACAO LEITURA - Le ponteiro
jmp ROTULO992
ROTULO992:
mov sp, bp
pop bp
FIM_control_getparent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:133:16 ===---
_control_add:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
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
jne ROTULO999
jmp ROTULO1000
ROTULO999:
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
push word [bp+6+2]
pop es
mov di, [bp+6]
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
ROTULO1001:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:140:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+76]
cmp ax, 0
jne ROTULO1002
jmp ROTULO1003
ROTULO1002:
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
push word [bp+6+2]
pop es
mov di, [bp+6]
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
jmp ROTULO1001
ROTULO1003:
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
jmp ROTULO1004
ROTULO1000:
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
ROTULO1004:
ROTULO998:
mov sp, bp
pop bp
FIM_control_add:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:158:21 ===---
_control_count:
push bp
mov bp, sp
sub sp, 6
push cs
call _os_stackcheck
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
jne ROTULO1006
jmp ROTULO1007
ROTULO1006:
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
push word [bp+6+2]
pop es
mov di, [bp+6]
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
ROTULO1008:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:168:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+76]
cmp ax, 0
jne ROTULO1009
jmp ROTULO1010
ROTULO1009:
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
push word [bp+6+2]
pop es
mov di, [bp+6]
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
jmp ROTULO1008
ROTULO1010:
ROTULO1007:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:176:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:176:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO1005
ROTULO1005:
mov sp, bp
pop bp
FIM_control_count:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:179:21 ===---
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
jne ROTULO1012
jmp ROTULO1013
ROTULO1012:
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
push word [bp+6+2]
pop es
mov di, [bp+6]
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
je ROTULO1016
jmp ROTULO1017
ROTULO1016:
mov ax, 65535
jmp ROTULO1018
ROTULO1017:
xor ax, ax
ROTULO1018:
cmp ax, 0
jne ROTULO1014
jmp ROTULO1015
ROTULO1014:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:189:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:189:42 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-6+2]
pop es
mov di, [bp+-6]
jmp ROTULO1011
ROTULO1015:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:190:13 ===---
ROTULO1019:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:190:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+76]
cmp ax, 0
jne ROTULO1020
jmp ROTULO1021
ROTULO1020:
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
push word [bp+6+2]
pop es
mov di, [bp+6]
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
je ROTULO1024
jmp ROTULO1025
ROTULO1024:
mov ax, 65535
jmp ROTULO1026
ROTULO1025:
xor ax, ax
ROTULO1026:
cmp ax, 0
jne ROTULO1022
jmp ROTULO1023
ROTULO1022:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:196:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:196:46 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-6+2]
pop es
mov di, [bp+-6]
jmp ROTULO1011
ROTULO1023:
jmp ROTULO1019
ROTULO1021:
ROTULO1013:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:199:15 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 199
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
ROTULO1011:
mov sp, bp
pop bp
FIM_control_item:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:202:16 ===---
_control_redraw:
push bp
mov bp, sp
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
ROTULO1027:
mov sp, bp
pop bp
FIM_control_redraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:206:16 ===---
_control_settext:
push bp
mov bp, sp
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
ROTULO1028:
mov sp, bp
pop bp
FIM_control_settext:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:210:21 ===---
_control_gettext:
push bp
mov bp, sp
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
jmp ROTULO1029
ROTULO1029:
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
ROTULO1030:
mov sp, bp
pop bp
FIM_form_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:253:9 ===---
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
jb ROTULO1034
jmp ROTULO1035
ROTULO1034:
mov ax, 65535
jmp ROTULO1036
ROTULO1035:
xor ax, ax
ROTULO1036:
cmp ax, 0
jne ROTULO1032
jmp ROTULO1033
ROTULO1032:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:262:34 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:262:48 ===---
mov ax, 30
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO1033:
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
jb ROTULO1039
jmp ROTULO1040
ROTULO1039:
mov ax, 65535
jmp ROTULO1041
ROTULO1040:
xor ax, ax
ROTULO1041:
cmp ax, 0
jne ROTULO1037
jmp ROTULO1038
ROTULO1037:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:33 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:46 ===---
mov ax, 50
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO1038:
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
ROTULO1042:
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
jbe ROTULO1045
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
jmp ROTULO1042
ROTULO1044:
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
ROTULO1031:
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
