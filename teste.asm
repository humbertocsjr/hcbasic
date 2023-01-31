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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:117:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:117:31 ===---
push cs
pop es
mov di, ROTULO81
jmp ROTULO80
ROTULO81:
db 28
db 79,99,111,114,114,101,117,32,117,109,32,101,114,114,111,32,110,195,163,111,32,116,114,97,116,97,100,111
times 1 db 0
ROTULO80:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:118:13 ===---
escreveerro:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:119:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:119:27 ===---
; ACAO CHAMADA - Le nome do arquivo com erro
mov di, [bp+-8]
push cs
pop es
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:120:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:120:27 ===---
push cs
pop es
mov di, ROTULO83
jmp ROTULO82
ROTULO83:
db 2
db 58,32
times 1 db 0
ROTULO82:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:121:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:121:33 ===---
; ACAO CHAMADA - Le linha com erro
mov ax, [bp+-10]
push ax
push cs
call _console_writeuint16
add sp, 2
jmp ROTULO25
ROTULO79:
cs jmp word [_os_tryfatal]
ROTULO25:
mov ax, [bp+-6]
cs mov [_os_trybase], ax
mov ax, [bp+-4]
cs mov [_os_trystack], ax
mov ax, [bp+-2]
cs mov [_os_trycode], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:124:13 ===---
errofatal:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:125:13 ===---
int 0x20
ROTULO2:
mov sp, bp
pop bp
FIM_os_start2:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:128:21 ===---
_os_codesegment:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:129:13 ===---
mov ax, cs
ROTULO84:
FIM_os_codesegment:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:132:21 ===---
_os_stacksegment:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:133:13 ===---
mov ax, ss
ROTULO85:
FIM_os_stacksegment:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:136:21 ===---
_os_realoctable:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:137:13 ===---
mov ax, REALOC_TABLE
ROTULO86:
FIM_os_realoctable:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:140:21 ===---
_os_consolereadchar:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:141:13 ===---
mov ah, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:142:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:143:13 ===---
xor ah, ah
ROTULO87:
FIM_os_consolereadchar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:146:16 ===---
_os_consolewritechar:
push bp
mov bp, sp
; ARG: c TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:146:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:147:13 ===---
mov dl, [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:148:13 ===---
mov ah, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:149:13 ===---
int 0x21
ROTULO88:
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
_colors_palette:
times 52 db 0
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
ROTULO89:
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
ROTULO90:
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
jmp ROTULO91
ROTULO91:
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
jmp ROTULO92
ROTULO92:
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
jmp ROTULO93
ROTULO93:
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
jmp ROTULO94
ROTULO94:
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
jmp ROTULO95
ROTULO95:
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
jmp ROTULO96
ROTULO96:
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
jmp ROTULO97
ROTULO97:
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
jmp ROTULO98
ROTULO98:
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
jmp ROTULO99
ROTULO99:
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
jmp ROTULO100
ROTULO100:
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
jmp ROTULO101
ROTULO101:
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
jmp ROTULO102
ROTULO102:
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
jmp ROTULO103
ROTULO103:
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
jmp ROTULO104
ROTULO104:
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
jmp ROTULO105
ROTULO105:
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
jmp ROTULO106
ROTULO106:
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
jmp ROTULO107
ROTULO107:
FIM_colors_transparent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:142:21 ===---
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
jne ROTULO109
jmp ROTULO110
ROTULO109:
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
jmp ROTULO108
jmp ROTULO120
ROTULO110:
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
jmp ROTULO108
ROTULO120:
ROTULO108:
mov sp, bp
pop bp
FIM_colors_fromrgb:
retf
; MODULO FIM: colors
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:16:8 ===---
; MODULO: program
_program:
db 9
db 116,101,115,116,101,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:17:9 ===---
_program_testestring:
times 4 db 0
db 255
times 255 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:19:9 ===---
_program_mainform:
times 86 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:21:16 ===---
_program_testecruzada:
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:22:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _referenciacruzada_testecruzada
ROTULO121:
FIM_program_testecruzada:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:24:16 ===---
_program_main:
push bp
mov bp, sp
sub sp, 30
push cs
call _os_stackcheck
; ARG: args TAM: 4 POS: BP+6 
; ARG: arq TAM: 4 POS: BP--14 
; ARG: txt TAM: 4 POS: BP--18 
; ARG: funcao TAM: 4 POS: BP--22 
; ARG: testestru TAM: 4 POS: BP--26 
; ARG: numero TAM: 2 POS: BP--28 
; ARG: numero2 TAM: 2 POS: BP--30 
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:24:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:25:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:26:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:27:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:28:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:65:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:66:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:29:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:29:29 ===---
; ACAO CHAMADA - Calcula tamanho de item
mov ax, 10
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:30:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 34
push ss
pop es
mov di, sp
push es
pop word [bp+-14+2]
mov [bp+-14], di
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:31:9 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:32:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:32:23 ===---
push cs
pop es
mov di, ROTULO124
jmp ROTULO123
ROTULO124:
db 26
db 84,101,115,116,101,32,67,114,105,97,99,97,111,32,100,101,32,97,114,113,117,105,118,111,58,32
times 1 db 0
ROTULO123:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:33:12 ===---
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
mov ax, ROTULO125
cs mov [_os_trycode], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:34:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:34:30 ===---
push cs
pop es
mov di, ROTULO128
jmp ROTULO127
ROTULO128:
db 9
db 116,101,115,116,101,46,116,120,116
times 1 db 0
ROTULO127:
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:34:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-14+2]
pop es
mov di, [bp+-14]
push es
push di
push cs
call _file_create
add sp, 8
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:35:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:35:33 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:35:49 ===---
push cs
pop es
mov di, ROTULO130
jmp ROTULO129
ROTULO130:
db 47
db 84,101,120,116,111,32,116,101,115,116,101,32,110,111,32,97,114,113,117,105,118,111,32,101,115,99,114,105,116,111,32,112,101,108,111,32,116,101,115,116,101,46,104,99,98,46,32
times 1 db 0
ROTULO129:
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:35:44 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:36:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:36:27 ===---
push cs
pop es
mov di, ROTULO132
jmp ROTULO131
ROTULO132:
db 3
db 32,43,32
times 1 db 0
ROTULO131:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:37:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:37:33 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:37:50 ===---
push cs
pop es
mov di, ROTULO134
jmp ROTULO133
ROTULO134:
db 41
db 84,101,120,116,111,32,116,101,115,116,101,32,101,109,105,116,105,100,111,32,118,105,97,32,83,116,114,117,99,116,117,114,101,32,83,116,114,101,97,109,46
times 1 db 0
ROTULO133:
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:37:33 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:38:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:38:24 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-14+2]
pop es
mov di, [bp+-14]
push es
push di
push cs
call _file_close
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:39:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:39:31 ===---
push cs
pop es
mov di, ROTULO136
jmp ROTULO135
ROTULO136:
db 15
db 32,66,121,116,101,115,32,101,115,99,114,105,116,111,115
times 1 db 0
ROTULO135:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO126
ROTULO125:
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
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:41:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:41:31 ===---
push cs
pop es
mov di, ROTULO140
jmp ROTULO139
ROTULO140:
db 39
db 32,70,65,76,72,65,32,65,79,32,77,65,78,73,80,85,76,65,82,32,79,32,65,82,81,85,73,86,79,32,116,101,115,116,101,46,116,120,116
times 1 db 0
ROTULO139:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO126
ROTULO138:
cs jmp word [_os_tryfatal]
ROTULO126:
mov ax, [bp+-6]
cs mov [_os_trybase], ax
mov ax, [bp+-4]
cs mov [_os_trystack], ax
mov ax, [bp+-2]
cs mov [_os_trycode], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:43:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:43:23 ===---
push cs
pop es
mov di, ROTULO142
jmp ROTULO141
ROTULO142:
db 18
db 69,115,99,114,101,118,97,32,115,101,117,32,110,111,109,101,58,32
times 1 db 0
ROTULO141:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:44:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:44:26 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_readline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:45:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:45:23 ===---
push cs
pop es
mov di, ROTULO144
jmp ROTULO143
ROTULO144:
db 4
db 79,105,101,32
times 1 db 0
ROTULO143:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:46:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:46:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:46:12 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:46:26 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:46:34 ===---
xor ax, ax
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
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:47:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:47:27 ===---
push cs
pop es
mov di, ROTULO151
jmp ROTULO150
ROTULO151:
db 8
db 83,101,109,32,78,111,109,101
times 1 db 0
ROTULO150:
push es
push di
push cs
call _console_write
add sp, 4
jmp ROTULO152
ROTULO146:
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:49:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:49:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_write
add sp, 4
ROTULO152:
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:51:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:51:27 ===---
push cs
pop es
mov di, ROTULO154
jmp ROTULO153
ROTULO154:
db 1
db 33
times 1 db 0
ROTULO153:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:52:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:52:23 ===---
push cs
pop es
mov di, ROTULO156
jmp ROTULO155
ROTULO156:
db 27
db 84,101,115,116,101,32,100,101,32,102,117,110,99,97,111,32,105,110,100,105,114,101,116,97,58,32,39
times 1 db 0
ROTULO155:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:53:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:53:18 ===---
push cs
pop es
mov di, _program_testefunc
push es
pop word [bp+-22+2]
mov [bp+-22], di
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:54:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:54:29 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
call far [bp+-22]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:55:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:55:27 ===---
push cs
pop es
mov di, ROTULO158
jmp ROTULO157
ROTULO158:
db 1
db 39
times 1 db 0
ROTULO157:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:56:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:56:30 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
cs mov ax, [_program_testestring+2]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:57:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:57:23 ===---
push cs
pop es
mov di, ROTULO160
jmp ROTULO159
ROTULO160:
db 1
db 58
times 1 db 0
ROTULO159:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:58:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:58:30 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
cs mov ax, [_program_testestring]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:59:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:59:27 ===---
push cs
pop es
mov di, ROTULO162
jmp ROTULO161
ROTULO162:
db 0
times 1 db 0
ROTULO161:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:60:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:60:26 ===---
push cs
pop es
mov di, ROTULO164
jmp ROTULO163
ROTULO164:
db 16
db 84,101,115,116,101,32,100,101,32,99,111,110,99,97,116,58
times 1 db 0
ROTULO163:
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:60:21 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_copy
add sp, 8
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:61:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:61:28 ===---
push cs
pop es
mov di, ROTULO166
jmp ROTULO165
ROTULO166:
db 21
db 32,84,101,120,116,111,32,99,111,110,99,97,116,101,110,97,100,111,32,49,44
times 1 db 0
ROTULO165:
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:61:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_concat
add sp, 8
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:62:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:62:28 ===---
push cs
pop es
mov di, ROTULO168
jmp ROTULO167
ROTULO168:
db 20
db 32,84,101,120,116,111,32,99,111,110,99,97,116,101,110,97,100,111,32,50
times 1 db 0
ROTULO167:
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:62:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _string_concat
add sp, 8
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:63:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:63:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:64:11 ===---
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
mov ax, ROTULO169
cs mov [_os_trycode], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:67:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-30], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:68:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:68:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:68:22 ===---
mov ax, 10
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:68:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-30]
cmp ax, 0
jne ROTULO171
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:68:27 ===---
mov ax, _program
mov [bp+-8], ax
mov ax, 68
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO171:
mov bx, ax
pop ax
xor dx, dx
div bx
mov [bp+-28], ax
jmp ROTULO170
ROTULO169:
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
je ROTULO172
jmp ROTULO173
ROTULO172:
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:70:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:70:31 ===---
push cs
pop es
mov di, ROTULO175
jmp ROTULO174
ROTULO175:
db 21
db 68,105,118,105,115,97,111,32,112,111,114,32,122,101,114,111,32,112,101,103,97
times 1 db 0
ROTULO174:
push es
push di
push cs
call _console_writeline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:71:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:71:27 ===---
; ACAO CHAMADA - Le nome do arquivo com erro
mov di, [bp+-8]
push cs
pop es
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:72:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:72:27 ===---
push cs
pop es
mov di, ROTULO177
jmp ROTULO176
ROTULO177:
db 2
db 58,32
times 1 db 0
ROTULO176:
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:73:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:73:33 ===---
; ACAO CHAMADA - Le linha com erro
mov ax, [bp+-10]
push ax
push cs
call _console_writeuint16
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:74:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:74:31 ===---
push cs
pop es
mov di, ROTULO179
jmp ROTULO178
ROTULO179:
db 0
times 1 db 0
ROTULO178:
push es
push di
push cs
call _console_writeline
add sp, 4
jmp ROTULO170
ROTULO173:
cs jmp word [_os_tryfatal]
ROTULO170:
mov ax, [bp+-6]
cs mov [_os_trybase], ax
mov ax, [bp+-4]
cs mov [_os_trystack], ax
mov ax, [bp+-2]
cs mov [_os_trycode], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:76:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:76:12 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:76:32 ===---
push cs
pop es
mov di, ROTULO183
jmp ROTULO182
ROTULO183:
db 2
db 111,105
times 1 db 0
ROTULO182:
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:76:26 ===---
push cs
pop es
mov di, ROTULO185
jmp ROTULO184
ROTULO185:
db 2
db 111,105
times 1 db 0
ROTULO184:
push es
push di
push cs
call _string_equals
add sp, 8
cmp ax, 0
jne ROTULO180
jmp ROTULO181
ROTULO180:
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:76:43 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:76:61 ===---
push cs
pop es
mov di, ROTULO187
jmp ROTULO186
ROTULO187:
db 10
db 69,81,85,65,76,32,84,69,83,84
times 1 db 0
ROTULO186:
push es
push di
push cs
call _console_writeline
add sp, 4
ROTULO181:
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:78:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _vga_mode640x480x2
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:79:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:79:37 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:79:33 ===---
mov ax, 19
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:79:28 ===---
mov ax, 114
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:80:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:80:37 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:80:33 ===---
mov ax, 51
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:80:28 ===---
mov ax, 114
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:81:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:81:37 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:81:33 ===---
mov ax, 19
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:81:28 ===---
mov ax, 216
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:82:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:82:37 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:82:33 ===---
mov ax, 51
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:82:28 ===---
mov ax, 216
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:83:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:83:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:83:38 ===---
mov ax, 44
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:83:35 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:83:31 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:83:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:84:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:84:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:84:38 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:84:35 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:84:31 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:84:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:85:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:85:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:85:38 ===---
mov ax, 65
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:85:35 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:85:31 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:85:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:86:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:86:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:86:39 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:86:35 ===---
mov ax, 44
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:86:31 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:86:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:87:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:87:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:87:39 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:87:35 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:87:31 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:87:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:88:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:88:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:88:39 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:88:35 ===---
mov ax, 65
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:88:31 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:88:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:89:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:89:44 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:89:40 ===---
mov ax, 65
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:89:35 ===---
mov ax, 100
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:89:31 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:89:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:90:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:90:44 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:90:40 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:90:35 ===---
mov ax, 100
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:90:31 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:90:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:91:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:91:44 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:91:40 ===---
mov ax, 45
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:91:35 ===---
mov ax, 100
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:91:31 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:91:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:92:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:92:44 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:92:39 ===---
mov ax, 100
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:92:35 ===---
mov ax, 65
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:92:31 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:92:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:93:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:93:44 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:93:39 ===---
mov ax, 100
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:93:35 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:93:31 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:93:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:94:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:94:44 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:94:39 ===---
mov ax, 100
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:94:35 ===---
mov ax, 45
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:94:31 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:94:27 ===---
mov ax, 50
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:95:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:95:51 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:95:49 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:95:46 ===---
mov ax, 48
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:95:41 ===---
mov ax, 213
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:95:37 ===---
mov ax, 22
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:95:32 ===---
mov ax, 117
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:96:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:96:51 ===---
mov ax, 65535
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:96:49 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:96:46 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:96:41 ===---
mov ax, 215
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:96:37 ===---
mov ax, 20
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:96:32 ===---
mov ax, 115
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:97:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _application_initialize
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:98:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:98:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _form_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:99:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:99:24 ===---
mov ax, 30
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:100:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:100:25 ===---
mov ax, 10
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:101:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:101:26 ===---
mov ax, 200
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:102:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:102:27 ===---
mov ax, 100
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:103:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:103:35 ===---
push cs
pop es
mov di, ROTULO189
jmp ROTULO188
ROTULO189:
db 37
db 48,49,50,51,52,53,54,55,56,57,32,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90
times 1 db 0
ROTULO188:
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:103:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _control_settext
add sp, 8
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:104:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:104:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _application_run
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:105:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _console_readchar
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:106:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _graphics_mode80x25x16
ROTULO122:
mov sp, bp
pop bp
FIM_program_main:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:109:14 ===---
_program_testefunc:
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:110:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:110:16 ===---
mov ax, 123
jmp ROTULO190
ROTULO190:
FIM_program_testefunc:
retf
; MODULO FIM: program
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:6:8 ===---
; MODULO: referenciacruzada
_referenciacruzada:
db 9
db 116,101,115,116,101,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:7:16 ===---
_referenciacruzada_testecruzada:
;     ---=== /home/humberto/Nextcloud/hcbasic/teste.hcb:8:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _program_testecruzada
ROTULO191:
FIM_referenciacruzada_testecruzada:
retf
; MODULO FIM: referenciacruzada
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:247:8 ===---
; MODULO: console
_console:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:248:21 ===---
_console_readchar:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:249:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:249:16 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_consolereadchar
jmp ROTULO192
ROTULO192:
FIM_console_readchar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:252:16 ===---
_console_readline:
push bp
mov bp, sp
sub sp, 6
push cs
call _os_stackcheck
; ARG: txt TAM: 4 POS: BP+6 
; ARG: len TAM: 2 POS: BP--2 
; ARG: stdin TAM: 4 POS: BP--6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:252:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:253:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:254:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:255:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:255:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:256:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:257:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 34
push ss
pop es
mov di, sp
push es
pop word [bp+-6+2]
mov [bp+-6], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:258:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:258:20 ===---
xor ax, ax
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:259:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:259:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:259:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:259:35 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:259:28 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:260:9 ===---
ROTULO194:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:260:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:260:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:260:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:260:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:260:21 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO203
jmp ROTULO204
ROTULO203:
mov ax, 65535
jmp ROTULO205
ROTULO204:
xor ax, ax
ROTULO205:
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:260:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:260:27 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:260:34 ===---
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO206
jmp ROTULO207
ROTULO206:
mov ax, 65535
jmp ROTULO208
ROTULO207:
xor ax, ax
ROTULO208:
mov bx, ax
pop ax
and ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:260:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:260:41 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:260:48 ===---
mov ax, 10
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO209
jmp ROTULO210
ROTULO209:
mov ax, 65535
jmp ROTULO211
ROTULO210:
xor ax, ax
ROTULO211:
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO195
jmp ROTULO196
ROTULO195:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:261:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
jmp ROTULO194
ROTULO196:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:263:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO193:
mov sp, bp
pop bp
FIM_console_readline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:266:16 ===---
_console_writechar:
push bp
mov bp, sp
; ARG: c TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:266:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:267:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:267:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _os_consolewritechar
add sp, 2
ROTULO212:
mov sp, bp
pop bp
FIM_console_writechar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:270:16 ===---
_console_write:
push bp
mov bp, sp
; ARG: txt TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:270:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:272:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:273:9 ===---
ROTULO214:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:273:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:273:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:273:21 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO217
jmp ROTULO218
ROTULO217:
mov ax, 65535
jmp ROTULO219
ROTULO218:
xor ax, ax
ROTULO219:
cmp ax, 0
jne ROTULO215
jmp ROTULO216
ROTULO215:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:274:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:274:23 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
push cs
call _console_writechar
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:275:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
jmp ROTULO214
ROTULO216:
ROTULO213:
mov sp, bp
pop bp
FIM_console_write:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:279:16 ===---
_console_writeline:
push bp
mov bp, sp
; ARG: txt TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:279:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:280:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:280:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:281:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:281:19 ===---
mov ax, 13
push ax
push cs
call _console_writechar
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:282:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:282:19 ===---
mov ax, 10
push ax
push cs
call _console_writechar
add sp, 2
ROTULO220:
mov sp, bp
pop bp
FIM_console_writeline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:285:16 ===---
_console_writeuint16:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: nro TAM: 2 POS: BP+6 
; ARG: tmp TAM: 2 POS: BP--2 
; ARG: prox TAM: 2 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:285:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:286:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:287:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:288:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:288:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:288:19 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:288:27 ===---
mov ax, 10
cmp ax, 0
jne ROTULO222
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:288:27 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 288
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO222:
mov bx, ax
pop ax
xor dx, dx
div bx
mov ax, dx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:289:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:289:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:289:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:289:26 ===---
mov ax, 10
cmp ax, 0
jne ROTULO223
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:289:26 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 289
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO223:
mov bx, ax
pop ax
xor dx, dx
div bx
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:290:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:290:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:290:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:290:19 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO226
jmp ROTULO227
ROTULO226:
mov ax, 65535
jmp ROTULO228
ROTULO227:
xor ax, ax
ROTULO228:
cmp ax, 0
jne ROTULO224
jmp ROTULO225
ROTULO224:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:290:26 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:290:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO225:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:291:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:291:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:291:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:291:19 ===---
mov ax, 48
pop bx
add ax, bx
push ax
push cs
call _console_writechar
add sp, 2
ROTULO221:
mov sp, bp
pop bp
FIM_console_writeuint16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:294:16 ===---
_console_writeint16:
push bp
mov bp, sp
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:294:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:295:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:295:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:295:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:295:18 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jl ROTULO232
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:296:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:296:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:296:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:296:23 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+6], ax
ROTULO231:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:298:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:298:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO229:
mov sp, bp
pop bp
FIM_console_writeint16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:301:16 ===---
_console_writeuint8:
push bp
mov bp, sp
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:301:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:302:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:302:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO235:
mov sp, bp
pop bp
FIM_console_writeuint8:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:305:16 ===---
_console_writeint8:
push bp
mov bp, sp
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:305:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:306:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:306:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeint16
add sp, 2
ROTULO236:
mov sp, bp
pop bp
FIM_console_writeint8:
retf
; MODULO FIM: console
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:154:8 ===---
; MODULO: file
_file:
db 13
db 83,121,115,116,101,109,46,79,83,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:155:21 ===---
_file_open:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: filename TAM: 4 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:155:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:155:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:156:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:157:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:158:13 ===---
mov ax, 0x3d02
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:159:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:160:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:161:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:162:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:163:13 ===---
inc dx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:164:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:165:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:166:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:167:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:168:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:169:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:170:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 170
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:171:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:172:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:172:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:173:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:173:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:174:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:174:26 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:175:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:175:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:176:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:176:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:177:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:177:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:178:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:178:30 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:179:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:179:26 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:180:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:180:28 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:181:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:181:16 ===---
mov ax, 1
jmp ROTULO237
ROTULO237:
mov sp, bp
pop bp
FIM_file_open:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:184:21 ===---
_file_create:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: filename TAM: 4 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:184:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:184:46 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:185:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:186:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:187:13 ===---
mov ax, 0x3c00
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:188:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:189:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:190:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:191:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:192:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:193:13 ===---
inc dx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:194:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:195:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:196:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:197:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:198:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:199:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:200:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 200
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:201:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:202:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:202:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:203:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:203:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:204:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:204:26 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:205:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:205:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:206:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:206:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:207:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:207:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:208:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:208:16 ===---
mov ax, 1
jmp ROTULO238
ROTULO238:
mov sp, bp
pop bp
FIM_file_create:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:211:21 ===---
_file_read:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:211:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:211:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:212:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:213:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:213:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:214:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:215:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:215:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:215:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:215:31 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:215:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:216:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:216:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO239
ROTULO239:
mov sp, bp
pop bp
FIM_file_read:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:219:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:219:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:219:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:219:69 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:220:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:221:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:221:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:222:13 ===---
mov ax, 0x3f00
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:223:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:224:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:225:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:226:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:227:13 ===---
mov cx, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:228:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:229:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:230:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:231:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:232:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:233:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:234:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:235:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 235
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:236:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:237:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:237:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO240
ROTULO240:
mov sp, bp
pop bp
FIM_file_readraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:240:21 ===---
_file_write:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:240:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:240:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:241:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:242:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:242:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:242:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:243:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:244:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:244:16 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:244:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:244:33 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:244:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _file_writeraw
add sp, 10
jmp ROTULO241
ROTULO241:
mov sp, bp
pop bp
FIM_file_write:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:247:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:247:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:247:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:247:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:248:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:249:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:249:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:250:13 ===---
mov ax, 0x4000
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:251:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:252:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:253:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:254:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:255:13 ===---
mov cx, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:256:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:257:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:258:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:259:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:260:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:261:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:262:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:263:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 263
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:264:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:265:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:265:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO242
ROTULO242:
mov sp, bp
pop bp
FIM_file_writeraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:268:21 ===---
_file_close:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:268:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:269:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:270:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:270:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:271:13 ===---
mov ax, 0x3e00
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:272:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:273:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:274:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:275:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 275
mov [bp+-10], ax
mov ax, 8
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:276:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:277:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:277:16 ===---
mov ax, 1
jmp ROTULO243
ROTULO243:
mov sp, bp
pop bp
FIM_file_close:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:280:21 ===---
_file_seekstart:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:280:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:280:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:281:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:282:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:282:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:283:13 ===---
mov ax, 0x4200
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:284:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:285:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:286:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:287:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:288:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:289:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 289
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:290:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:291:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:291:16 ===---
mov ax, 1
jmp ROTULO244
ROTULO244:
mov sp, bp
pop bp
FIM_file_seekstart:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:294:21 ===---
_file_seekcurrent:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:294:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:294:51 ===---
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
mov ax, 0x4201
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
jmp ROTULO245
ROTULO245:
mov sp, bp
pop bp
FIM_file_seekcurrent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:308:21 ===---
_file_seekend:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:308:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086-DOS/System.OS.hcb:308:47 ===---
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
mov ax, 0x4202
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
jmp ROTULO246
ROTULO246:
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
push cs
call _os_stackcheck
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
ROTULO248:
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
ja ROTULO251
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:169:17 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:170:18 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
jmp ROTULO248
ROTULO250:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:172:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:172:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO247
ROTULO247:
mov sp, bp
pop bp
FIM_string_length:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:175:21 ===---
_string_equals:
push bp
mov bp, sp
; ARG: txt1 TAM: 4 POS: BP+6 
; ARG: txt2 TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:175:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:175:50 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:176:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:177:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:178:9 ===---
ROTULO255:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:178:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:178:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:178:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO258
jmp ROTULO259
ROTULO258:
mov ax, 65535
jmp ROTULO260
ROTULO259:
xor ax, ax
ROTULO260:
cmp ax, 0
jne ROTULO256
jmp ROTULO257
ROTULO256:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:179:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:179:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:179:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:179:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:179:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:179:38 ===---
mov ax, 1
jmp ROTULO254
ROTULO262:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:180:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:181:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
jmp ROTULO255
ROTULO257:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:183:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:183:16 ===---
xor ax, ax
jmp ROTULO254
ROTULO254:
mov sp, bp
pop bp
FIM_string_equals:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:186:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:186:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:186:50 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:187:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:188:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:189:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:190:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:191:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:192:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:192:20 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:192:34 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:193:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:193:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:194:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:194:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:194:37 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:194:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:194:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:195:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:195:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:195:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:195:31 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:195:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:195:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:195:13 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
pop bx
add ax, bx
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:195:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO269
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:195:62 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 195
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO268:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:25 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:196:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:197:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:198:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:198:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 1
ROTULO272:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:198:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:198:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:198:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO275
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:199:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:199:19 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:200:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:200:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:201:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:202:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:198:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-8]
jmp ROTULO272
ROTULO274:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:204:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:205:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:205:16 ===---
mov ax, 1
jmp ROTULO266
ROTULO266:
mov sp, bp
pop bp
FIM_string_concat:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:208:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:208:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:208:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:209:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:210:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:211:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:212:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:213:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:213:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:214:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:214:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:214:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:214:20 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:214:34 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:215:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:216:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:217:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:218:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:218:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:218:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:218:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:218:40 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:218:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
pop bx
add ax, bx
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO281
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:218:54 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 218
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO280:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-6], 1
ROTULO284:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO287
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:220:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:220:19 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:221:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:221:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:222:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:223:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:219:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-6]
jmp ROTULO284
ROTULO286:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:225:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:226:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.hcb:226:16 ===---
mov ax, 1
jmp ROTULO278
ROTULO278:
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
ROTULO290:
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
jae ROTULO294
jmp ROTULO295
ROTULO294:
mov ax, 65535
jmp ROTULO296
ROTULO295:
xor ax, ax
ROTULO296:
cmp ax, 0
jne ROTULO292
jmp ROTULO293
ROTULO292:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:290:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:290:38 ===---
xor ax, ax
jmp ROTULO291
ROTULO293:
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
jae ROTULO299
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:291:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:291:39 ===---
xor ax, ax
jmp ROTULO291
ROTULO298:
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
ROTULO291:
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
ROTULO302:
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
ROTULO303:
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
je ROTULO313
jmp ROTULO314
ROTULO313:
mov ax, 65535
jmp ROTULO315
ROTULO314:
xor ax, ax
ROTULO315:
cmp ax, 0
jne ROTULO311
jmp ROTULO312
ROTULO311:
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
ROTULO312:
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
jl ROTULO318
jmp ROTULO319
ROTULO318:
mov ax, 65535
jmp ROTULO320
ROTULO319:
xor ax, ax
ROTULO320:
cmp ax, 0
jne ROTULO316
jmp ROTULO317
ROTULO316:
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
ROTULO317:
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
ROTULO324:
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
jbe ROTULO327
jmp ROTULO328
ROTULO327:
mov ax, 65535
jmp ROTULO329
ROTULO328:
xor ax, ax
ROTULO329:
cmp ax, 0
jne ROTULO325
jmp ROTULO326
ROTULO325:
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
je ROTULO332
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
jne ROTULO338
jmp ROTULO339
ROTULO338:
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
ROTULO339:
jmp ROTULO346
ROTULO331:
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
jne ROTULO349
jmp ROTULO350
ROTULO349:
mov ax, 65535
jmp ROTULO351
ROTULO350:
xor ax, ax
ROTULO351:
cmp ax, 0
jne ROTULO347
jmp ROTULO348
ROTULO347:
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
jne ROTULO355
jmp ROTULO356
ROTULO355:
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
ROTULO356:
ROTULO348:
ROTULO346:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:370:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO324
ROTULO326:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:385:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:385:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:385:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
not ax
ROTULO363:
mov ax, 65535
jmp ROTULO365
ROTULO364:
xor ax, ax
ROTULO365:
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
ROTULO366:
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
jbe ROTULO369
jmp ROTULO370
ROTULO369:
mov ax, 65535
jmp ROTULO371
ROTULO370:
xor ax, ax
ROTULO371:
cmp ax, 0
jne ROTULO367
jmp ROTULO368
ROTULO367:
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
jmp ROTULO366
ROTULO368:
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
jne ROTULO374
jmp ROTULO375
ROTULO374:
mov ax, 65535
jmp ROTULO376
ROTULO375:
xor ax, ax
ROTULO376:
cmp ax, 0
jne ROTULO372
jmp ROTULO373
ROTULO372:
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
jne ROTULO377
jmp ROTULO378
ROTULO377:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:391:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 255
jmp ROTULO382
ROTULO378:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:393:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 0
ROTULO382:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:395:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:395:27 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:395:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-2], ax
ROTULO383:
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
jbe ROTULO386
jmp ROTULO387
ROTULO386:
mov ax, 65535
jmp ROTULO388
ROTULO387:
xor ax, ax
ROTULO388:
cmp ax, 0
jne ROTULO384
jmp ROTULO385
ROTULO384:
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
jmp ROTULO383
ROTULO385:
ROTULO373:
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
ROTULO392:
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
jbe ROTULO395
jmp ROTULO396
ROTULO395:
mov ax, 65535
jmp ROTULO397
ROTULO396:
xor ax, ax
ROTULO397:
cmp ax, 0
jne ROTULO393
jmp ROTULO394
ROTULO393:
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
je ROTULO400
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
jne ROTULO406
jmp ROTULO407
ROTULO406:
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
ROTULO407:
jmp ROTULO414
ROTULO399:
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
jne ROTULO417
jmp ROTULO418
ROTULO417:
mov ax, 65535
jmp ROTULO419
ROTULO418:
xor ax, ax
ROTULO419:
cmp ax, 0
jne ROTULO415
jmp ROTULO416
ROTULO415:
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
jne ROTULO423
jmp ROTULO424
ROTULO423:
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
ROTULO424:
ROTULO416:
ROTULO414:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:403:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO392
ROTULO394:
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
ROTULO431:
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
jmp ROTULO431
ROTULO433:
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
ROTULO440:
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
jbe ROTULO443
jmp ROTULO444
ROTULO443:
mov ax, 65535
jmp ROTULO445
ROTULO444:
xor ax, ax
ROTULO445:
cmp ax, 0
jne ROTULO441
jmp ROTULO442
ROTULO441:
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
jne ROTULO449
jmp ROTULO450
ROTULO449:
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
ROTULO450:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:424:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO440
ROTULO442:
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
ROTULO460:
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
jbe ROTULO463
jmp ROTULO464
ROTULO463:
mov ax, 65535
jmp ROTULO465
ROTULO464:
xor ax, ax
ROTULO465:
cmp ax, 0
jne ROTULO461
jmp ROTULO462
ROTULO461:
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
jne ROTULO469
jmp ROTULO470
ROTULO469:
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
ROTULO470:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:435:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO460
ROTULO462:
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
jne ROTULO477
jmp ROTULO478
ROTULO477:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:444:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 255
jmp ROTULO482
ROTULO478:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:446:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 0
ROTULO482:
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
ROTULO304:
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
jne ROTULO484
jmp ROTULO485
ROTULO484:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:456:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 255
jmp ROTULO489
ROTULO485:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:458:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
ROTULO489:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:460:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-4], 0
ROTULO490:
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
jbe ROTULO493
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
jmp ROTULO490
ROTULO492:
ROTULO483:
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
ROTULO496:
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
ROTULO497:
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
ROTULO498:
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
ROTULO499:
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
ja ROTULO503
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
jmp ROTULO506
ROTULO502:
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
ROTULO506:
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
ja ROTULO509
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
jmp ROTULO512
ROTULO508:
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
ROTULO512:
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
jg ROTULO515
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
ja ROTULO520
jmp ROTULO521
ROTULO520:
mov ax, 65535
jmp ROTULO522
ROTULO521:
xor ax, ax
ROTULO522:
cmp ax, 0
jne ROTULO518
jmp ROTULO519
ROTULO518:
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
ROTULO519:
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
je ROTULO525
jmp ROTULO526
ROTULO525:
mov ax, 65535
jmp ROTULO527
ROTULO526:
xor ax, ax
ROTULO527:
cmp ax, 0
jne ROTULO523
jmp ROTULO524
ROTULO523:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:207:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
jmp ROTULO528
ROTULO524:
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
ja ROTULO531
jmp ROTULO532
ROTULO531:
mov ax, 65535
jmp ROTULO533
ROTULO532:
xor ax, ax
ROTULO533:
cmp ax, 0
jne ROTULO529
jmp ROTULO530
ROTULO529:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:210:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
jmp ROTULO534
ROTULO530:
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
ROTULO534:
ROTULO528:
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
ROTULO535:
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
jbe ROTULO538
jmp ROTULO539
ROTULO538:
mov ax, 65535
jmp ROTULO540
ROTULO539:
xor ax, ax
ROTULO540:
cmp ax, 0
jne ROTULO536
jmp ROTULO537
ROTULO536:
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
jge ROTULO543
jmp ROTULO544
ROTULO543:
mov ax, 65535
jmp ROTULO545
ROTULO544:
xor ax, ax
ROTULO545:
cmp ax, 0
jne ROTULO541
jmp ROTULO542
ROTULO541:
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
jmp ROTULO546
ROTULO542:
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
ROTULO546:
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
jmp ROTULO535
ROTULO537:
jmp ROTULO547
ROTULO514:
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
ja ROTULO550
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
ROTULO549:
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
je ROTULO555
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:240:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
jmp ROTULO558
ROTULO554:
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
ja ROTULO561
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:243:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
jmp ROTULO564
ROTULO560:
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
ROTULO564:
ROTULO558:
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
ROTULO565:
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
jbe ROTULO568
jmp ROTULO569
ROTULO568:
mov ax, 65535
jmp ROTULO570
ROTULO569:
xor ax, ax
ROTULO570:
cmp ax, 0
jne ROTULO566
jmp ROTULO567
ROTULO566:
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
jge ROTULO573
jmp ROTULO574
ROTULO573:
mov ax, 65535
jmp ROTULO575
ROTULO574:
xor ax, ax
ROTULO575:
cmp ax, 0
jne ROTULO571
jmp ROTULO572
ROTULO571:
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
jmp ROTULO576
ROTULO572:
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
ROTULO576:
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
jmp ROTULO565
ROTULO567:
ROTULO547:
ROTULO500:
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
ROTULO577:
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
je ROTULO581
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:37:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 37
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO580:
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
jae ROTULO586
jmp ROTULO587
ROTULO586:
mov ax, 65535
jmp ROTULO588
ROTULO587:
xor ax, ax
ROTULO588:
cmp ax, 0
jne ROTULO584
jmp ROTULO585
ROTULO584:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:38:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:38:39 ===---
xor ax, ax
jmp ROTULO578
ROTULO585:
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
jae ROTULO591
jmp ROTULO592
ROTULO591:
mov ax, 65535
jmp ROTULO593
ROTULO592:
xor ax, ax
ROTULO593:
cmp ax, 0
jne ROTULO589
jmp ROTULO590
ROTULO589:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:39:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:39:40 ===---
xor ax, ax
jmp ROTULO578
ROTULO590:
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
ROTULO578:
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:44:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 44
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO596:
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
jae ROTULO602
jmp ROTULO603
ROTULO602:
mov ax, 65535
jmp ROTULO604
ROTULO603:
xor ax, ax
ROTULO604:
cmp ax, 0
jne ROTULO600
jmp ROTULO601
ROTULO600:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:45:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:45:40 ===---
xor ax, ax
jmp ROTULO594
ROTULO601:
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
jae ROTULO607
jmp ROTULO608
ROTULO607:
mov ax, 65535
jmp ROTULO609
ROTULO608:
xor ax, ax
ROTULO609:
cmp ax, 0
jne ROTULO605
jmp ROTULO606
ROTULO605:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:46:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:46:41 ===---
xor ax, ax
jmp ROTULO594
ROTULO606:
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
jae ROTULO612
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
ROTULO611:
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
jae ROTULO617
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
ROTULO616:
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
ROTULO594:
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
je ROTULO623
jmp ROTULO624
ROTULO623:
mov ax, 65535
jmp ROTULO625
ROTULO624:
xor ax, ax
ROTULO625:
cmp ax, 0
jne ROTULO621
jmp ROTULO622
ROTULO621:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:53:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 53
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO622:
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
jae ROTULO628
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:54:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:54:40 ===---
xor ax, ax
jmp ROTULO620
ROTULO627:
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
jae ROTULO633
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:55:41 ===---
xor ax, ax
jmp ROTULO620
ROTULO632:
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
jae ROTULO638
jmp ROTULO639
ROTULO638:
mov ax, 65535
jmp ROTULO640
ROTULO639:
xor ax, ax
ROTULO640:
cmp ax, 0
jne ROTULO636
jmp ROTULO637
ROTULO636:
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
ROTULO637:
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
jae ROTULO643
jmp ROTULO644
ROTULO643:
mov ax, 65535
jmp ROTULO645
ROTULO644:
xor ax, ax
ROTULO645:
cmp ax, 0
jne ROTULO641
jmp ROTULO642
ROTULO641:
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
ROTULO642:
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
ROTULO620:
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
je ROTULO649
jmp ROTULO650
ROTULO649:
mov ax, 65535
jmp ROTULO651
ROTULO650:
xor ax, ax
ROTULO651:
cmp ax, 0
jne ROTULO647
jmp ROTULO648
ROTULO647:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:62:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 62
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO648:
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
jae ROTULO654
jmp ROTULO655
ROTULO654:
mov ax, 65535
jmp ROTULO656
ROTULO655:
xor ax, ax
ROTULO656:
cmp ax, 0
jne ROTULO652
jmp ROTULO653
ROTULO652:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:63:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:63:40 ===---
xor ax, ax
jmp ROTULO646
ROTULO653:
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
jae ROTULO659
jmp ROTULO660
ROTULO659:
mov ax, 65535
jmp ROTULO661
ROTULO660:
xor ax, ax
ROTULO661:
cmp ax, 0
jne ROTULO657
jmp ROTULO658
ROTULO657:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:64:41 ===---
xor ax, ax
jmp ROTULO646
ROTULO658:
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
jae ROTULO664
jmp ROTULO665
ROTULO664:
mov ax, 65535
jmp ROTULO666
ROTULO665:
xor ax, ax
ROTULO666:
cmp ax, 0
jne ROTULO662
jmp ROTULO663
ROTULO662:
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
ROTULO663:
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
jae ROTULO669
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
ROTULO668:
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
ROTULO646:
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
je ROTULO675
jmp ROTULO676
ROTULO675:
mov ax, 65535
jmp ROTULO677
ROTULO676:
xor ax, ax
ROTULO677:
cmp ax, 0
jne ROTULO673
jmp ROTULO674
ROTULO673:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:71:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 71
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO674:
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
jae ROTULO680
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:72:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:72:40 ===---
xor ax, ax
jmp ROTULO672
ROTULO679:
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
jae ROTULO685
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:73:41 ===---
xor ax, ax
jmp ROTULO672
ROTULO684:
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
jae ROTULO690
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
ROTULO689:
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
jae ROTULO695
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
ROTULO694:
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
ROTULO672:
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
je ROTULO701
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:80:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 80
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO700:
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
ROTULO698:
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
je ROTULO707
jmp ROTULO708
ROTULO707:
mov ax, 65535
jmp ROTULO709
ROTULO708:
xor ax, ax
ROTULO709:
cmp ax, 0
jne ROTULO705
jmp ROTULO706
ROTULO705:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:85:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 85
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO706:
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
ROTULO704:
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
jmp ROTULO710
ROTULO710:
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:94:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 94
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO713:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:95:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:95:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
jmp ROTULO711
ROTULO711:
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
je ROTULO720
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:99:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 99
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO719:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:100:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:100:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
jmp ROTULO717
ROTULO717:
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
je ROTULO726
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:104:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 104
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO725:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:105:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:105:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+4]
jmp ROTULO723
ROTULO723:
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
ROTULO729:
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
ROTULO730:
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
jmp ROTULO732
ROTULO733:
db 7,0,3,0,3,0,1,0,88,0,97,0,131,0,140,0,149,0,158,0,167,0,176,0,185,0,194,0,203,0,212,0,221,0,230,0,239,0,248,0,1,1,10,1,19,1,28,1,37,1,46,1,55,1,64,1,73,1,82,1,91,1,100,1,109,1,118,1,127,1,136,1,145,1,154,1,163,1,172,1,181,1,190,1,199,1,208,1,9,83,105,115,116,101,109,97,0,34,72,117,109,98,101,114,116,111,32,67,111,115,116,97,32,100,111,115,32,83,97,110,116,111,115,32,74,117,110,105,111,114,0,5,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,6,0,48,72,148,164,164,72,48,3,0,32,96,160,32,32,32,32,5,0,112,136,8,16,32,64,248,5,0,248,8,48,8,8,8,240,5,0,136,136,136,248,8,8,8,5,0,248,128,240,8,8,8,240,5,0,112,136,128,240,136,136,112,5,0,248,8,8,16,32,64,128,5,0,112,136,136,112,136,136,112,5,0,112,136,136,120,8,136,112,7,0,56,68,130,254,130,130,130,6,0,248,132,132,248,132,132,248,6,0,56,68,128,128,128,68,56,7,0,248,132,130,130,130,132,248,6,0,252,128,128,240,128,128,252,6,0,252,128,128,240,128,128,128,6,0,120,132,128,156,132,132,120,6,0,132,132,132,252,132,132,132,1,0,128,128,128,128,128,128,128,5,0,8,8,8,8,8,136,112,6,0,132,132,136,240,136,132,132,5,0,128,128,128,128,128,128,248,7,0,130,198,170,146,130,130,130,7,0,130,194,162,146,138,134,130,7,0,124,130,130,130,130,130,124,6,0,248,132,132,248,128,128,128,8,0,124,130,130,130,138,132,123,7,0,248,132,132,248,132,132,130,6,0,120,132,128,120,4,132,120,7,0,254,16,16,16,16,16,16,7,0,130,130,130,130,130,130,124,7,0,130,130,130,130,68,40,16,7,0,130,130,130,146,170,198,130,7,0,130,68,40,16,40,68,130,7,0,130,68,40,16,32,64,128,7,0,254,4,8,16,32,64,254
ROTULO732:
push cs
pop es
mov di, ROTULO733
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
ROTULO731:
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
ROTULO734:
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
jmp ROTULO735
ROTULO735:
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
ROTULO737:
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
jbe ROTULO740
jmp ROTULO741
ROTULO740:
mov ax, 65535
jmp ROTULO742
ROTULO741:
xor ax, ax
ROTULO742:
cmp ax, 0
jne ROTULO738
jmp ROTULO739
ROTULO738:
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
jae ROTULO748
jmp ROTULO749
ROTULO748:
mov ax, 65535
jmp ROTULO750
ROTULO749:
xor ax, ax
ROTULO750:
cmp ax, 0
je ROTULO746
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
jbe ROTULO751
jmp ROTULO752
ROTULO751:
mov ax, 65535
jmp ROTULO753
ROTULO752:
xor ax, ax
ROTULO753:
cmp ax, 0
je ROTULO746
ROTULO745:
mov ax, 65535
jmp ROTULO747
ROTULO746:
xor ax, ax
ROTULO747:
cmp ax, 0
jne ROTULO743
jmp ROTULO744
ROTULO743:
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
ROTULO744:
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
jae ROTULO759
jmp ROTULO760
ROTULO759:
mov ax, 65535
jmp ROTULO761
ROTULO760:
xor ax, ax
ROTULO761:
cmp ax, 0
je ROTULO757
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
jbe ROTULO762
jmp ROTULO763
ROTULO762:
mov ax, 65535
jmp ROTULO764
ROTULO763:
xor ax, ax
ROTULO764:
cmp ax, 0
je ROTULO757
ROTULO756:
mov ax, 65535
jmp ROTULO758
ROTULO757:
xor ax, ax
ROTULO758:
cmp ax, 0
jne ROTULO754
jmp ROTULO755
ROTULO754:
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
ROTULO755:
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
je ROTULO767
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:797:34 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 1
ROTULO766:
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
je ROTULO772
jmp ROTULO773
ROTULO772:
mov ax, 65535
jmp ROTULO774
ROTULO773:
xor ax, ax
ROTULO774:
cmp ax, 0
jne ROTULO770
jmp ROTULO771
ROTULO770:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:804:35 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 1
ROTULO771:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:805:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:805:31 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-20], 1
ROTULO775:
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
jbe ROTULO778
jmp ROTULO779
ROTULO778:
mov ax, 65535
jmp ROTULO780
ROTULO779:
xor ax, ax
ROTULO780:
cmp ax, 0
jne ROTULO776
jmp ROTULO777
ROTULO776:
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
ja ROTULO783
jmp ROTULO784
ROTULO783:
mov ax, 65535
jmp ROTULO785
ROTULO784:
xor ax, ax
ROTULO785:
cmp ax, 0
jne ROTULO781
jmp ROTULO782
ROTULO781:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:807:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:807:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+24]
cmp ax, 0
jne ROTULO786
jmp ROTULO787
ROTULO786:
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
jmp ROTULO788
ROTULO787:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:811:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:811:30 ===---
xor ax, ax
jmp ROTULO736
ROTULO788:
ROTULO782:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:814:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:814:30 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-22], 1
ROTULO789:
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
jbe ROTULO792
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
jb ROTULO797
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:816:25 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 8
jmp ROTULO800
ROTULO796:
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
je ROTULO806
jmp ROTULO807
ROTULO806:
mov ax, 65535
jmp ROTULO808
ROTULO807:
xor ax, ax
ROTULO808:
cmp ax, 0
jne ROTULO804
jmp ROTULO805
ROTULO804:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:819:44 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 8
ROTULO805:
ROTULO800:
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
ROTULO809:
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
jne ROTULO815
jmp ROTULO816
ROTULO815:
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
jbe ROTULO825
jmp ROTULO826
ROTULO825:
mov ax, 65535
jmp ROTULO827
ROTULO826:
xor ax, ax
ROTULO827:
cmp ax, 0
je ROTULO823
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
jbe ROTULO828
jmp ROTULO829
ROTULO828:
mov ax, 65535
jmp ROTULO830
ROTULO829:
xor ax, ax
ROTULO830:
cmp ax, 0
je ROTULO823
ROTULO822:
mov ax, 65535
jmp ROTULO824
ROTULO823:
xor ax, ax
ROTULO824:
cmp ax, 0
jne ROTULO820
jmp ROTULO821
ROTULO820:
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
ROTULO821:
ROTULO816:
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
jmp ROTULO809
ROTULO811:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:832:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:814:30 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-22]
jmp ROTULO789
ROTULO791:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:805:31 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-20]
jmp ROTULO775
ROTULO777:
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
jmp ROTULO737
ROTULO739:
ROTULO736:
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
ROTULO832:
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
jbe ROTULO835
jmp ROTULO836
ROTULO835:
mov ax, 65535
jmp ROTULO837
ROTULO836:
xor ax, ax
ROTULO837:
cmp ax, 0
jne ROTULO833
jmp ROTULO834
ROTULO833:
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
jae ROTULO843
jmp ROTULO844
ROTULO843:
mov ax, 65535
jmp ROTULO845
ROTULO844:
xor ax, ax
ROTULO845:
cmp ax, 0
je ROTULO841
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
jbe ROTULO846
jmp ROTULO847
ROTULO846:
mov ax, 65535
jmp ROTULO848
ROTULO847:
xor ax, ax
ROTULO848:
cmp ax, 0
je ROTULO841
ROTULO840:
mov ax, 65535
jmp ROTULO842
ROTULO841:
xor ax, ax
ROTULO842:
cmp ax, 0
jne ROTULO838
jmp ROTULO839
ROTULO838:
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
ROTULO839:
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
jae ROTULO854
jmp ROTULO855
ROTULO854:
mov ax, 65535
jmp ROTULO856
ROTULO855:
xor ax, ax
ROTULO856:
cmp ax, 0
je ROTULO852
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
jbe ROTULO857
jmp ROTULO858
ROTULO857:
mov ax, 65535
jmp ROTULO859
ROTULO858:
xor ax, ax
ROTULO859:
cmp ax, 0
je ROTULO852
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
ROTULO850:
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
je ROTULO862
jmp ROTULO863
ROTULO862:
mov ax, 65535
jmp ROTULO864
ROTULO863:
xor ax, ax
ROTULO864:
cmp ax, 0
jne ROTULO860
jmp ROTULO861
ROTULO860:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:868:34 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 1
ROTULO861:
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
ja ROTULO867
jmp ROTULO868
ROTULO867:
mov ax, 65535
jmp ROTULO869
ROTULO868:
xor ax, ax
ROTULO869:
cmp ax, 0
jne ROTULO865
jmp ROTULO866
ROTULO865:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:872:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:872:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
cmp ax, 0
jne ROTULO870
jmp ROTULO871
ROTULO870:
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
jmp ROTULO872
ROTULO871:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:878:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:878:26 ===---
xor ax, ax
jmp ROTULO831
ROTULO872:
ROTULO866:
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
je ROTULO875
jmp ROTULO876
ROTULO875:
mov ax, 65535
jmp ROTULO877
ROTULO876:
xor ax, ax
ROTULO877:
cmp ax, 0
jne ROTULO873
jmp ROTULO874
ROTULO873:
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
ROTULO874:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:883:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Drawing.hcb:864:24 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-16]
jmp ROTULO832
ROTULO834:
ROTULO831:
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
ROTULO878:
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
ROTULO879:
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
jmp ROTULO880
ROTULO880:
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
jmp ROTULO881
ROTULO881:
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
jmp ROTULO882
ROTULO882:
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
jmp ROTULO883
ROTULO883:
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
jmp ROTULO884
ROTULO884:
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
ROTULO885:
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
ROTULO886:
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
jne ROTULO888
jmp ROTULO889
ROTULO888:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:236:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:236:26 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
ROTULO890:
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
jbe ROTULO893
jmp ROTULO894
ROTULO893:
mov ax, 65535
jmp ROTULO895
ROTULO894:
xor ax, ax
ROTULO895:
cmp ax, 0
jne ROTULO891
jmp ROTULO892
ROTULO891:
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
jmp ROTULO890
ROTULO892:
ROTULO889:
ROTULO887:
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
mov di, ROTULO898
jmp ROTULO897
ROTULO898:
db 0
times 1 db 0
ROTULO897:
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
ROTULO896:
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
ROTULO899:
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
jne ROTULO901
jmp ROTULO902
ROTULO901:
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
ROTULO902:
ROTULO900:
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
jne ROTULO907
jmp ROTULO908
ROTULO907:
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
jmp ROTULO909
ROTULO908:
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
ROTULO909:
ROTULO906:
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
jne ROTULO911
jmp ROTULO912
ROTULO911:
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
jmp ROTULO913
ROTULO912:
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
ROTULO913:
ROTULO910:
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
ROTULO914:
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
ROTULO915:
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
ROTULO916:
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
ROTULO917:
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
ROTULO918:
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
ROTULO919:
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:129:43 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 129
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
ROTULO922:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:130:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:130:16 ===---
; ACAO LEITURA - Le ponteiro
jmp ROTULO920
ROTULO920:
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
jne ROTULO927
jmp ROTULO928
ROTULO927:
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
ROTULO929:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:140:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+76]
cmp ax, 0
jne ROTULO930
jmp ROTULO931
ROTULO930:
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
jmp ROTULO929
ROTULO931:
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
jmp ROTULO932
ROTULO928:
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
ROTULO932:
ROTULO926:
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
jne ROTULO934
jmp ROTULO935
ROTULO934:
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
ROTULO936:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:168:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+76]
cmp ax, 0
jne ROTULO937
jmp ROTULO938
ROTULO937:
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
jmp ROTULO936
ROTULO938:
ROTULO935:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:176:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:176:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO933
ROTULO933:
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
jne ROTULO940
jmp ROTULO941
ROTULO940:
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
je ROTULO944
jmp ROTULO945
ROTULO944:
mov ax, 65535
jmp ROTULO946
ROTULO945:
xor ax, ax
ROTULO946:
cmp ax, 0
jne ROTULO942
jmp ROTULO943
ROTULO942:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:189:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:189:42 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-6+2]
pop es
mov di, [bp+-6]
jmp ROTULO939
ROTULO943:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:190:13 ===---
ROTULO947:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:190:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+76]
cmp ax, 0
jne ROTULO948
jmp ROTULO949
ROTULO948:
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
je ROTULO952
jmp ROTULO953
ROTULO952:
mov ax, 65535
jmp ROTULO954
ROTULO953:
xor ax, ax
ROTULO954:
cmp ax, 0
jne ROTULO950
jmp ROTULO951
ROTULO950:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:196:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:196:46 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-6+2]
pop es
mov di, [bp+-6]
jmp ROTULO939
ROTULO951:
jmp ROTULO947
ROTULO949:
ROTULO941:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:199:15 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 199
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
ROTULO939:
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
ROTULO955:
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
ROTULO956:
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
jmp ROTULO957
ROTULO957:
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
ROTULO958:
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
jb ROTULO962
jmp ROTULO963
ROTULO962:
mov ax, 65535
jmp ROTULO964
ROTULO963:
xor ax, ax
ROTULO964:
cmp ax, 0
jne ROTULO960
jmp ROTULO961
ROTULO960:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:262:34 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:262:48 ===---
mov ax, 30
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO961:
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
jb ROTULO967
jmp ROTULO968
ROTULO967:
mov ax, 65535
jmp ROTULO969
ROTULO968:
xor ax, ax
ROTULO969:
cmp ax, 0
jne ROTULO965
jmp ROTULO966
ROTULO965:
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:33 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Plataformas/8086/System.Forms.hcb:263:46 ===---
mov ax, 50
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO966:
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
ROTULO970:
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
jbe ROTULO973
jmp ROTULO974
ROTULO973:
mov ax, 65535
jmp ROTULO975
ROTULO974:
xor ax, ax
ROTULO975:
cmp ax, 0
jne ROTULO971
jmp ROTULO972
ROTULO971:
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
jmp ROTULO970
ROTULO972:
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
ROTULO959:
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
