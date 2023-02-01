;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:7:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:9:13 ===---
cpu 8086
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:10:13 ===---
bits 16
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:11:13 ===---
org 0x100
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:12:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_start2
ROTULO0:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:1:8 ===---
; MODULO: os
_os:
db 13
db 83,121,115,116,101,109,46,79,83,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:2:9 ===---
_os_trystack:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:3:9 ===---
_os_trycode:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:4:9 ===---
_os_trybase:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:5:9 ===---
_os_tryfatal:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:7:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:15:9 ===---
_os_stackcheck:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:16:13 ===---
cmp sp, END
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:17:13 ===---
ja .end
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:18:15 ===---
mov ax, _os
mov [bp+-8], ax
mov ax, 18
mov [bp+-10], ax
mov ax, 2
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:19:13 ===---
.end:
ROTULO1:
FIM_os_stackcheck:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:22:9 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:24:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:26:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:27:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:28:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:29:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:30:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:31:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:31:19 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_codesegment
mov word [bp+-18+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:32:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:32:16 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_codesegment
mov word [bp+-22+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:33:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:33:19 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_realoctable
mov [bp+-18], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:34:9 ===---
ROTULO3:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:34:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:34:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:34:25 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:35:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:35:26 ===---
; ACAO LEITURA - Le ponteiro
es mov ax, [di+0]
mov [bp+-24], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:36:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:37:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:38:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:38:20 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
es mov ax, [di+0]
mov [bp+-22], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:39:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:40:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:41:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:41:22 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
es mov ax, [di+0]
mov [bp+-26], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:42:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:43:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:44:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:44:20 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-18+2]
pop es
mov di, [bp+-18]
es mov ax, [di+0]
mov [bp+-28], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:45:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:46:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-18]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:47:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:47:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:47:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:47:30 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:48:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:48:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:48:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:48:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
pop bx
add ax, bx
mov [bp+-26], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:49:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:49:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push word [bp+-22+2]
pop es
mov di, [bp+-22]
es mov [di+0], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:50:18 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-22]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:51:18 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-22]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:52:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:52:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:52:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:52:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:54:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:54:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:54:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:54:30 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:55:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:55:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:55:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:55:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
pop bx
add ax, bx
mov [bp+-22], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:56:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:56:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:56:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:56:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:58:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:58:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:58:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:58:30 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:59:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:59:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:59:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:59:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
pop bx
add ax, bx
mov [bp+-22], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:60:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:60:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:60:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:60:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:64:10 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 128
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:65:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:65:17 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_codesegment
mov word [bp+-14+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:67:13 ===---
mov al, [0x80]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:68:13 ===---
xor ah, ah
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:69:13 ===---
mov si, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:70:13 ===---
add si, 0x80
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:71:13 ===---
mov byte [si+1], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:72:13 ===---
cs mov word [_os_tryfatal], errofatal
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:74:11 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:75:13 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_initialize
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:76:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:76:26 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:78:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:78:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:79:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO27:
mov bx, 2
cmp ax, bx
je ROTULO30
jmp ROTULO31
ROTULO30:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:81:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:81:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:82:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO31:
mov bx, 3
cmp ax, bx
je ROTULO34
jmp ROTULO35
ROTULO34:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:84:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:84:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:85:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO35:
mov bx, 4
cmp ax, bx
je ROTULO38
jmp ROTULO39
ROTULO38:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:87:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:87:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:88:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO39:
mov bx, 5
cmp ax, bx
je ROTULO42
jmp ROTULO43
ROTULO42:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:90:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:90:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:91:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO43:
mov bx, 6
cmp ax, bx
je ROTULO46
jmp ROTULO47
ROTULO46:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:93:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:93:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:94:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO47:
mov bx, 7
cmp ax, bx
je ROTULO50
jmp ROTULO51
ROTULO50:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:96:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:96:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:97:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO51:
mov bx, 8
cmp ax, bx
je ROTULO54
jmp ROTULO55
ROTULO54:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:99:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:99:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:100:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO55:
mov bx, 9
cmp ax, bx
je ROTULO58
jmp ROTULO59
ROTULO58:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:102:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:102:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:103:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO59:
mov bx, 10
cmp ax, bx
je ROTULO62
jmp ROTULO63
ROTULO62:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:105:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:105:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:106:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO63:
mov bx, 11
cmp ax, bx
je ROTULO66
jmp ROTULO67
ROTULO66:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:108:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:108:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:109:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO67:
mov bx, 12
cmp ax, bx
je ROTULO70
jmp ROTULO71
ROTULO70:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:111:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:111:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:112:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO71:
mov bx, 13
cmp ax, bx
je ROTULO74
jmp ROTULO75
ROTULO74:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:114:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:114:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:115:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO75:
mov bx, 14
cmp ax, bx
je ROTULO78
jmp ROTULO79
ROTULO78:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:117:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:117:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:118:18 ===---
jmp escreveerro
jmp ROTULO25
ROTULO79:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:120:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:120:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:121:13 ===---
escreveerro:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:122:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:122:27 ===---
; ACAO CHAMADA - Le nome do arquivo com erro
mov di, [bp+-8]
push cs
pop es
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:123:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:123:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:124:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:124:33 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:127:13 ===---
errofatal:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:128:13 ===---
int 0x20
ROTULO2:
mov sp, bp
pop bp
FIM_os_start2:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:131:21 ===---
_os_codesegment:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:132:13 ===---
mov ax, cs
ROTULO88:
FIM_os_codesegment:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:135:21 ===---
_os_stacksegment:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:136:13 ===---
mov ax, ss
ROTULO89:
FIM_os_stacksegment:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:139:21 ===---
_os_realoctable:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:140:13 ===---
mov ax, REALOC_TABLE
ROTULO90:
FIM_os_realoctable:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:143:21 ===---
_os_consoleavail:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:144:13 ===---
mov ah, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:145:13 ===---
int 0x16
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:146:13 ===---
jnz .sim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:147:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:147:16 ===---
xor ax, ax
jmp ROTULO91
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:148:13 ===---
.sim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:149:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:149:16 ===---
mov ax, 1
jmp ROTULO91
ROTULO91:
FIM_os_consoleavail:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:152:21 ===---
_os_consolereadchar:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:153:13 ===---
mov ah, 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:154:13 ===---
int 0x16
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:155:13 ===---
xor ah, ah
ROTULO92:
FIM_os_consolereadchar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:158:16 ===---
_os_consolewritechar:
push bp
mov bp, sp
; ARG: c TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:158:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:159:13 ===---
mov dl, [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:160:13 ===---
mov ah, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:161:13 ===---
int 0x21
ROTULO93:
mov sp, bp
pop bp
FIM_os_consolewritechar:
retf
; MODULO FIM: os
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:46:8 ===---
; MODULO: colors
_colors:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:47:9 ===---
_colors_palette:
times 46 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:49:16 ===---
_colors_initialize:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:50:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:50:25 ===---
xor ax, ax
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:51:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:51:24 ===---
mov ax, 1
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:52:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:52:25 ===---
mov ax, 2
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:53:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:53:24 ===---
mov ax, 3
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:54:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:54:23 ===---
mov ax, 4
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:55:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:55:27 ===---
mov ax, 5
es mov [di+10], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:56:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:56:25 ===---
mov ax, 6
es mov [di+12], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:57:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:57:29 ===---
mov ax, 7
es mov [di+14], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:58:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:58:24 ===---
mov ax, 8
es mov [di+16], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:59:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:59:29 ===---
mov ax, 9
es mov [di+18], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:60:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:60:30 ===---
mov ax, 10
es mov [di+20], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:61:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:61:29 ===---
mov ax, 11
es mov [di+22], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:62:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:62:28 ===---
mov ax, 12
es mov [di+24], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:63:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:63:32 ===---
mov ax, 13
es mov [di+26], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:64:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:64:26 ===---
mov ax, 14
es mov [di+28], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:65:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:65:25 ===---
mov ax, 15
es mov [di+30], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:66:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:66:31 ===---
mov ax, 65535
es mov [di+32], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:67:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:67:38 ===---
mov ax, 1
es mov [di+34], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO94:
FIM_colors_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:70:16 ===---
_colors_register:
push bp
mov bp, sp
; ARG: newpal TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:70:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:71:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:71:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+6+2]
cs mov [_colors_palette+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:72:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:72:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
cs mov [_colors_palette], ax
ROTULO95:
mov sp, bp
pop bp
FIM_colors_register:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:75:21 ===---
_colors_black:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:76:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:76:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+0]
jmp ROTULO96
ROTULO96:
FIM_colors_black:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:79:21 ===---
_colors_blue:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:80:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:80:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+2]
jmp ROTULO97
ROTULO97:
FIM_colors_blue:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:83:21 ===---
_colors_green:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:84:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:84:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+4]
jmp ROTULO98
ROTULO98:
FIM_colors_green:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:87:21 ===---
_colors_cyan:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:88:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:88:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+6]
jmp ROTULO99
ROTULO99:
FIM_colors_cyan:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:91:21 ===---
_colors_red:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:92:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:92:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 8
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+8]
jmp ROTULO100
ROTULO100:
FIM_colors_red:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:95:21 ===---
_colors_magenta:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:96:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:96:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 10
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+10]
jmp ROTULO101
ROTULO101:
FIM_colors_magenta:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:99:21 ===---
_colors_brown:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:100:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:100:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+12]
jmp ROTULO102
ROTULO102:
FIM_colors_brown:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:103:21 ===---
_colors_lightgray:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:104:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:104:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 14
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+14]
jmp ROTULO103
ROTULO103:
FIM_colors_lightgray:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:107:21 ===---
_colors_gray:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:108:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:108:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 16
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+16]
jmp ROTULO104
ROTULO104:
FIM_colors_gray:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:111:21 ===---
_colors_lightblue:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:112:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:112:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 18
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+18]
jmp ROTULO105
ROTULO105:
FIM_colors_lightblue:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:115:21 ===---
_colors_lightgreen:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:116:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:116:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 20
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+20]
jmp ROTULO106
ROTULO106:
FIM_colors_lightgreen:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:119:21 ===---
_colors_lightcyan:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:120:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:120:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 22
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+22]
jmp ROTULO107
ROTULO107:
FIM_colors_lightcyan:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:123:21 ===---
_colors_lightred:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:124:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:124:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 24
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+24]
jmp ROTULO108
ROTULO108:
FIM_colors_lightred:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:127:21 ===---
_colors_lightmagenta:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:128:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:128:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 26
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+26]
jmp ROTULO109
ROTULO109:
FIM_colors_lightmagenta:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:131:21 ===---
_colors_yellow:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:132:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:132:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 28
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+28]
jmp ROTULO110
ROTULO110:
FIM_colors_yellow:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:135:21 ===---
_colors_white:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:136:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:136:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 30
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+30]
jmp ROTULO111
ROTULO111:
FIM_colors_white:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:139:21 ===---
_colors_transparent:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:140:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:140:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 32
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+32]
jmp ROTULO112
ROTULO112:
FIM_colors_transparent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:143:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:143:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:143:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:143:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:144:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:145:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:146:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:147:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:148:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:148:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 34
cs push word [_colors_palette+2]
pop es
cs mov di, [_colors_palette]
es mov ax, [di+34]
cmp ax, 0
jne ROTULO114
jmp ROTULO115
ROTULO114:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:149:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:149:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:149:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:149:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:149:27 ===---
mov ax, 6
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:149:34 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:150:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:150:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:150:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:150:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:150:27 ===---
mov ax, 6
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:150:34 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:151:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:151:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:151:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:151:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:151:27 ===---
mov ax, 6
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:151:34 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:152:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:152:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:152:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:152:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:152:51 ===---
mov ax, 7
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:152:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:152:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:152:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:152:39 ===---
mov ax, 7
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:152:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:152:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:152:27 ===---
mov ax, 7
mov cx, ax
pop ax
shr ax, cl
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:153:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:153:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:153:65 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:153:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:153:56 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:153:51 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:153:60 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:153:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:153:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:153:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:153:45 ===---
mov ax, 2
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:153:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:153:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:153:30 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:155:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:155:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:155:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:155:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:155:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:155:57 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 37
xor ax, ax
es mov al, [di+37]
mov cx, ax
pop ax
shr ax, cl
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:156:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:156:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:156:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:156:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:156:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 38
xor ax, ax
es mov al, [di+38]
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:156:59 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 39
xor ax, ax
es mov al, [di+39]
mov cx, ax
pop ax
shr ax, cl
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:157:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:157:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:157:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:157:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:157:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 40
xor ax, ax
es mov al, [di+40]
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:157:58 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 41
xor ax, ax
es mov al, [di+41]
mov cx, ax
pop ax
shr ax, cl
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:158:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:158:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:158:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:158:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:158:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:158:20 ===---
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
;     ---=== gui.hcb:7:8 ===---
; MODULO: program
_program:
db 7
db 103,117,105,46,104,99,98
db 0
;     ---=== gui.hcb:10:9 ===---
_program_mainform:
times 100 db 0
;     ---=== gui.hcb:11:9 ===---
_program_helloworldlabel:
times 100 db 0
;     ---=== gui.hcb:12:9 ===---
_program_okbutton:
times 100 db 0
;     ---=== gui.hcb:13:9 ===---
_program_helloworldtext:
times 4 db 0
db 255
times 255 db 0
;     ---=== gui.hcb:15:16 ===---
_program_main:
push bp
mov bp, sp
; ARG: args TAM: 4 POS: BP+6 
;     ---=== gui.hcb:15:21 ===---
;     ---=== gui.hcb:17:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _vga_mode640x480x2
;     ---=== gui.hcb:19:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _application_initialize
;     ---=== gui.hcb:22:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== gui.hcb:22:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _form_initialize
add sp, 4
;     ---=== gui.hcb:23:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:23:24 ===---
mov ax, 30
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== gui.hcb:24:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:24:25 ===---
mov ax, 10
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== gui.hcb:25:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:25:26 ===---
mov ax, 200
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== gui.hcb:26:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:26:27 ===---
mov ax, 100
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== gui.hcb:27:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:27:25 ===---
push cs
pop es
mov di, ROTULO128
jmp ROTULO127
ROTULO128:
db 37
db 48,49,50,51,52,53,54,55,56,57,32,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90
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
;     ---=== gui.hcb:29:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== gui.hcb:29:26 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_helloworldlabel+2]
pop es
cs mov di, [_program_helloworldlabel]
push es
push di
push cs
call _label_initialize
add sp, 4
;     ---=== gui.hcb:30:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== gui.hcb:30:37 ===---
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
;     ---=== gui.hcb:30:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_helloworldtext+2]
pop es
cs mov di, [_program_helloworldtext]
push es
push di
push cs
call _string_copy
add sp, 8
;     ---=== gui.hcb:31:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:31:33 ===---
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
;     ---=== gui.hcb:32:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:32:31 ===---
mov ax, 8
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== gui.hcb:33:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:33:32 ===---
mov ax, 4
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== gui.hcb:34:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:34:33 ===---
mov ax, 170
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== gui.hcb:35:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:35:34 ===---
mov ax, 10
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== gui.hcb:36:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:36:35 ===---
mov ax, 1
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== gui.hcb:37:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== gui.hcb:37:31 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== gui.hcb:37:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _control_add
add sp, 8
;     ---=== gui.hcb:39:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== gui.hcb:39:27 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_okbutton+2]
pop es
cs mov di, [_program_okbutton]
push es
push di
push cs
call _button_initialize
add sp, 4
;     ---=== gui.hcb:40:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:40:25 ===---
push cs
pop es
mov di, ROTULO132
jmp ROTULO131
ROTULO132:
db 15
db 69,110,116,101,114,32,112,97,114,97,32,83,65,73,82
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
;     ---=== gui.hcb:41:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:41:24 ===---
mov ax, 21
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== gui.hcb:42:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:42:25 ===---
mov ax, 4
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== gui.hcb:43:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:43:26 ===---
mov ax, 150
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== gui.hcb:44:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:44:27 ===---
mov ax, 20
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== gui.hcb:45:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:45:28 ===---
mov ax, 1
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== gui.hcb:46:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:46:31 ===---
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
;     ---=== gui.hcb:47:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== gui.hcb:47:28 ===---
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
;     ---=== gui.hcb:48:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== gui.hcb:48:31 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== gui.hcb:48:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _control_add
add sp, 8
;     ---=== gui.hcb:51:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== gui.hcb:51:25 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_mainform+2]
pop es
cs mov di, [_program_mainform]
push es
push di
push cs
call _application_run
add sp, 4
;     ---=== gui.hcb:53:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _graphics_mode80x25x16
ROTULO126:
mov sp, bp
pop bp
FIM_program_main:
retf
;     ---=== gui.hcb:57:9 ===---
_program_okbutton_onkeypress:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
; ARG: ptr TAM: 4 POS: BP--4 
;     ---=== gui.hcb:57:29 ===---
;     ---=== gui.hcb:57:46 ===---
;     ---=== gui.hcb:59:13 ===---
;     ---=== gui.hcb:58:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== gui.hcb:58:37 ===---
push cs
pop es
mov di, ROTULO135
jmp ROTULO134
ROTULO135:
db 16
db 80,82,69,83,83,73,79,78,65,68,79,32,32,32,32,32
times 1 db 0
ROTULO134:
push es
push di
;     ---=== gui.hcb:58:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_helloworldtext+2]
pop es
cs mov di, [_program_helloworldtext]
push es
push di
push cs
call _string_copy
add sp, 8
;     ---=== gui.hcb:60:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== gui.hcb:60:15 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_helloworldtext+2]
pop es
cs mov di, [_program_helloworldtext]
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== gui.hcb:61:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== gui.hcb:61:21 ===---
;     ---=== gui.hcb:61:23 ===---
mov ax, 14
push ax
;     ---=== gui.hcb:61:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
pop bx
add ax, bx
mov [bp+-4], ax
;     ---=== gui.hcb:62:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== gui.hcb:62:15 ===---
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
;     ---=== gui.hcb:63:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== gui.hcb:63:24 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_program_helloworldlabel+2]
pop es
cs mov di, [_program_helloworldlabel]
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO133:
mov sp, bp
pop bp
FIM_program_okbutton_onkeypress:
retf
;     ---=== gui.hcb:66:9 ===---
_program_okbutton_onclick:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== gui.hcb:66:26 ===---
;     ---=== gui.hcb:66:43 ===---
;     ---=== gui.hcb:67:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== gui.hcb:67:26 ===---
xor ax, ax
push ax
push cs
call _application_exit
add sp, 2
ROTULO136:
mov sp, bp
pop bp
FIM_program_okbutton_onclick:
retf
; MODULO FIM: program
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:2:8 ===---
; MODULO: vga
_vga:
db 7
db 86,71,65,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:3:9 ===---
_vga_video:
times 30 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:5:16 ===---
_vga_mode640x480x2:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:6:13 ===---
mov ax, 0x11
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:7:13 ===---
int 0x10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:8:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:8:23 ===---
mov ax, 640
cs push word [_vga_video+2]
pop es
cs mov di, [_vga_video]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:9:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:9:24 ===---
mov ax, 480
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:10:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:10:24 ===---
mov ax, 2
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:11:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:11:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:12:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:12:39 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _genericvideo_registerdrawline
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:13:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:13:42 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_vga_video+2]
pop es
cs mov di, [_vga_video]
push es
push di
push cs
call _genericvideo_registerdrawellipse
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:14:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:14:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:15:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:15:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:16:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:16:29 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _graphics_modemanual
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:17:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _genericvideo_register2colorspalette
ROTULO137:
FIM_vga_mode640x480x2:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:20:9 ===---
_vga_drawpixel:
push bp
mov bp, sp
; ARG: mode TAM: 4 POS: BP+6 
; ARG: x TAM: 2 POS: BP+10 
; ARG: y TAM: 2 POS: BP+12 
; ARG: color TAM: 2 POS: BP+14 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:20:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:20:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:20:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:20:64 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:21:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:21:14 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:21:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:21:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO141
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:21:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:21:38 ===---
xor ax, ax
jmp ROTULO138
ROTULO140:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:22:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:22:14 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:22:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:22:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO146
jmp ROTULO147
ROTULO146:
mov ax, 65535
jmp ROTULO148
ROTULO147:
xor ax, ax
ROTULO148:
cmp ax, 0
jne ROTULO144
jmp ROTULO145
ROTULO144:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:22:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:22:39 ===---
xor ax, ax
jmp ROTULO138
ROTULO145:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:23:13 ===---
mov ax, 0xa000
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:24:13 ===---
mov es, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:25:13 ===---
mov ax, [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:26:13 ===---
mov bx, 80
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:27:13 ===---
mul bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:28:13 ===---
mov bx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:29:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:30:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:31:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:32:13 ===---
add ax, bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:33:13 ===---
mov di, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:34:13 ===---
mov cx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:35:13 ===---
and cx, 7
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:36:13 ===---
inc cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:37:13 ===---
mov ax, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:38:13 ===---
and ax, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:39:13 ===---
je .inverte
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:40:13 ===---
ror al, cl
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:41:13 ===---
es or [di], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:42:13 ===---
jmp .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:43:13 ===---
.inverte:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:44:13 ===---
mov al, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:45:13 ===---
ror al, cl
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:46:13 ===---
not al
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:47:13 ===---
es and [di], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:48:13 ===---
.fim:
ROTULO138:
mov sp, bp
pop bp
FIM_vga_drawpixel:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:51:9 ===---
_vga_byteandor:
push bp
mov bp, sp
; ARG: mode TAM: 4 POS: BP+6 
; ARG: x TAM: 2 POS: BP+10 
; ARG: y TAM: 2 POS: BP+12 
; ARG: valueand TAM: 2 POS: BP+14 
; ARG: valueor TAM: 2 POS: BP+16 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:51:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:51:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:51:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:51:64 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:51:83 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:52:13 ===---
mov ax, 0xa000
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:53:13 ===---
mov es, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:54:13 ===---
mov ax, [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:55:13 ===---
mov bx, 80
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:56:13 ===---
mul bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:57:13 ===---
mov bx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:58:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:59:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:60:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:61:13 ===---
add ax, bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:62:13 ===---
mov di, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:63:13 ===---
mov ax, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:64:13 ===---
es and [di], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:65:13 ===---
mov ax, [bp+16]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:66:13 ===---
es or [di], al
ROTULO149:
mov sp, bp
pop bp
FIM_vga_byteandor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:69:9 ===---
_vga_byteset:
push bp
mov bp, sp
; ARG: mode TAM: 4 POS: BP+6 
; ARG: x TAM: 2 POS: BP+10 
; ARG: y TAM: 2 POS: BP+12 
; ARG: value TAM: 2 POS: BP+14 
; ARG: len TAM: 2 POS: BP+16 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:69:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:69:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:69:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:69:62 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:69:78 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:70:13 ===---
mov ax, 0xa000
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:71:13 ===---
mov es, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:72:13 ===---
mov ax, [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:73:13 ===---
mov bx, 80
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:74:13 ===---
mul bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:75:13 ===---
mov bx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:76:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:77:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:78:13 ===---
shr bx, 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:79:13 ===---
add ax, bx
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:80:13 ===---
mov di, ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:81:13 ===---
mov ax, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:82:13 ===---
mov cx, [bp+16]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:83:13 ===---
cld
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:84:13 ===---
rep stosb
ROTULO150:
mov sp, bp
pop bp
FIM_vga_byteset:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:87:14 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:87:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:87:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:88:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:89:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:90:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:91:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:91:41 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:91:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:91:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:91:27 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov [bp+-4], ax
ROTULO152:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:91:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:91:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:91:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:91:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:91:41 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO158
jmp ROTULO159
ROTULO158:
mov ax, 65535
jmp ROTULO160
ROTULO159:
xor ax, ax
ROTULO160:
cmp ax, 0
jne ROTULO153
jmp ROTULO154
ROTULO153:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:92:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:92:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:92:19 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:92:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:92:27 ===---
mov ax, 128
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:92:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shr al, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:91:41 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO152
ROTULO154:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:94:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:94:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO151
ROTULO151:
mov sp, bp
pop bp
FIM_vga_convertmask:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:97:14 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:97:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:97:50 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:98:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:99:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:100:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:101:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:101:41 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:101:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:101:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:101:27 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov [bp+-4], ax
ROTULO168:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:101:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:101:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:101:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:101:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:101:41 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO174
jmp ROTULO175
ROTULO174:
mov ax, 65535
jmp ROTULO176
ROTULO175:
xor ax, ax
ROTULO176:
cmp ax, 0
jne ROTULO169
jmp ROTULO170
ROTULO169:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:102:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:102:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:102:19 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:102:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:102:27 ===---
mov ax, 128
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:102:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov cx, ax
pop ax
shl al, cl
mov bx, ax
pop ax
or ax, bx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:101:41 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO168
ROTULO170:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:104:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:104:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:104:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
not ax
ROTULO183:
mov ax, 65535
jmp ROTULO185
ROTULO184:
xor ax, ax
ROTULO185:
jmp ROTULO167
ROTULO167:
mov sp, bp
pop bp
FIM_vga_convertinversemask:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:107:9 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:107:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:107:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:107:56 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:107:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:107:84 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:107:98 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:107:121 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:108:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:109:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:110:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:111:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:112:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:113:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:114:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:115:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:115:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:115:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:115:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:115:13 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:115:24 ===---
mov ax, 24
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO189
jmp ROTULO190
ROTULO189:
mov ax, 65535
jmp ROTULO191
ROTULO190:
xor ax, ax
ROTULO191:
cmp ax, 0
jne ROTULO187
jmp ROTULO188
ROTULO187:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:116:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:116:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:116:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:116:35 ===---
mov ax, 65535
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO194
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:117:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:117:36 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:117:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:117:28 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:117:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
add ax, bx
mov [bp+-2], ax
ROTULO197:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:117:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:117:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:117:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:117:36 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:117:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO200
jmp ROTULO201
ROTULO200:
mov ax, 65535
jmp ROTULO202
ROTULO201:
xor ax, ax
ROTULO202:
cmp ax, 0
jne ROTULO198
jmp ROTULO199
ROTULO198:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:118:21 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:118:61 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:118:58 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:118:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:118:55 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:118:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:118:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:118:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:118:44 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:118:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:117:36 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
jmp ROTULO197
ROTULO199:
ROTULO193:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:121:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:121:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:121:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:121:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:121:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:121:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:122:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:122:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:122:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:122:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:122:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:122:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:123:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:123:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:123:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:123:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:123:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:123:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:124:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:124:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:124:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:124:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:124:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:124:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:125:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:125:18 ===---
xor ax, ax
jmp ROTULO186
ROTULO188:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:127:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:127:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:127:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:127:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:127:37 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:127:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:127:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:127:24 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
pop bx
sub ax, bx
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:128:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:129:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:129:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:129:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:129:20 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO211
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:129:27 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:129:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:129:35 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:129:34 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+-14], ax
ROTULO210:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:130:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:130:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:130:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:130:19 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jl ROTULO216
jmp ROTULO217
ROTULO216:
mov ax, 65535
jmp ROTULO218
ROTULO217:
xor ax, ax
ROTULO218:
cmp ax, 0
jne ROTULO214
jmp ROTULO215
ROTULO214:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:130:26 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:130:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:130:34 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:130:33 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+-14], ax
ROTULO215:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:131:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:131:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:131:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:131:23 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:132:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-10], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:133:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:133:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:133:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:133:18 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:133:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:133:34 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:133:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:133:53 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:133:49 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:133:46 ===---
xor ax, ax
push ax
push cs
call _vga_convertmask
add sp, 4
mov [bp+-12], ax
jmp ROTULO227
ROTULO223:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:133:61 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 0
ROTULO227:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:134:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:134:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:134:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:134:28 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO228
jmp ROTULO229
ROTULO228:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:135:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:135:21 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:135:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:135:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
push cs
call _vga_convertmask
add sp, 4
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:136:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:136:45 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:136:62 ===---
mov ax, 7
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:136:57 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
push cs
call _vga_convertmask
add sp, 4
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:136:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:136:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:136:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:136:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:137:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:137:45 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:137:62 ===---
mov ax, 7
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:137:57 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
push cs
call _vga_convertmask
add sp, 4
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:137:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:137:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:137:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:137:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
jmp ROTULO233
ROTULO229:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:139:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:139:45 ===---
xor ax, ax
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:139:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:139:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:139:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:139:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:140:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:140:45 ===---
xor ax, ax
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:140:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:140:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:140:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:140:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
ROTULO233:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:142:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:142:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:142:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:142:31 ===---
mov ax, 65535
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO236
jmp ROTULO237
ROTULO236:
mov ax, 65535
jmp ROTULO238
ROTULO237:
xor ax, ax
ROTULO238:
cmp ax, 0
jne ROTULO234
jmp ROTULO235
ROTULO234:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:143:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:143:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:143:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:143:36 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO239
jmp ROTULO240
ROTULO239:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:144:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:144:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:144:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:144:34 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:144:53 ===---
mov ax, 7
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:144:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:144:50 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:144:46 ===---
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
ROTULO240:
jmp ROTULO247
ROTULO235:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:147:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:147:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:147:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:147:32 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:147:51 ===---
mov ax, 7
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:147:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:147:48 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:147:44 ===---
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
ROTULO247:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:149:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:149:32 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:149:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:149:22 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:149:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
add ax, bx
mov [bp+-2], ax
ROTULO251:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:149:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:149:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:149:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:149:32 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:149:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO254
jmp ROTULO255
ROTULO254:
mov ax, 65535
jmp ROTULO256
ROTULO255:
xor ax, ax
ROTULO256:
cmp ax, 0
jne ROTULO252
jmp ROTULO253
ROTULO252:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:150:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:150:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:150:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:150:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:150:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:150:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:149:32 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
jmp ROTULO251
ROTULO253:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:152:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:152:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:152:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:152:31 ===---
mov ax, 65535
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO259
jmp ROTULO260
ROTULO259:
mov ax, 65535
jmp ROTULO261
ROTULO260:
xor ax, ax
ROTULO261:
cmp ax, 0
jne ROTULO257
jmp ROTULO258
ROTULO257:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:153:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:153:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:153:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:153:36 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO262
jmp ROTULO263
ROTULO262:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:154:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 255
jmp ROTULO267
ROTULO263:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:156:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 0
ROTULO267:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:158:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:158:27 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:158:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-2], ax
ROTULO268:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:158:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:158:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:158:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO271
jmp ROTULO272
ROTULO271:
mov ax, 65535
jmp ROTULO273
ROTULO272:
xor ax, ax
ROTULO273:
cmp ax, 0
jne ROTULO269
jmp ROTULO270
ROTULO269:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:159:17 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:159:68 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:159:70 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:159:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:159:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:159:57 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:159:52 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:159:65 ===---
mov ax, 3
mov cx, ax
pop ax
shr ax, cl
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:159:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:159:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:159:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:159:36 ===---
mov ax, 8
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:159:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:159:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteset
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:158:27 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
jmp ROTULO268
ROTULO270:
ROTULO258:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:163:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:163:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:163:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:163:23 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:164:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-10], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:165:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:165:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:165:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:165:18 ===---
mov ax, 7
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO279
jmp ROTULO280
ROTULO279:
mov ax, 65535
jmp ROTULO281
ROTULO280:
xor ax, ax
ROTULO281:
cmp ax, 0
jne ROTULO277
jmp ROTULO278
ROTULO277:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:165:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:165:34 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:165:53 ===---
mov ax, 7
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:165:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:165:50 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:165:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
pop bx
add ax, bx
push ax
push cs
call _vga_convertmask
add sp, 4
mov [bp+-12], ax
jmp ROTULO282
ROTULO278:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:165:61 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:165:70 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:165:87 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:165:82 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
push cs
call _vga_convertmask
add sp, 4
mov [bp+-12], ax
ROTULO282:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:166:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:166:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:166:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:166:28 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO283
jmp ROTULO284
ROTULO283:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:167:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:167:21 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:167:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:167:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
push cs
call _vga_convertmask
add sp, 4
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:168:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:168:45 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:168:60 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:168:57 ===---
xor ax, ax
push ax
push cs
call _vga_convertmask
add sp, 4
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:168:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:168:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:168:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:168:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:169:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:169:45 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:169:60 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:169:57 ===---
xor ax, ax
push ax
push cs
call _vga_convertmask
add sp, 4
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:169:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:169:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:169:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:169:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
jmp ROTULO288
ROTULO284:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:171:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:171:45 ===---
xor ax, ax
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:171:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:171:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:171:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:171:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:172:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:172:45 ===---
xor ax, ax
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:172:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:172:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:172:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:172:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
ROTULO288:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:174:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:174:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:174:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:174:18 ===---
mov ax, 1
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO291
jmp ROTULO292
ROTULO291:
mov ax, 65535
jmp ROTULO293
ROTULO292:
xor ax, ax
ROTULO293:
cmp ax, 0
jne ROTULO289
jmp ROTULO290
ROTULO289:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:175:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:175:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:175:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:175:35 ===---
mov ax, 65535
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO296
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:176:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:176:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:176:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:176:40 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO299
jmp ROTULO300
ROTULO299:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:177:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:177:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:177:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:177:38 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:177:56 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:177:57 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:177:53 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:177:50 ===---
xor ax, ax
push ax
push cs
call _vga_convertmask
add sp, 4
mov bx, ax
pop ax
or ax, bx
mov [bp+-10], ax
ROTULO300:
jmp ROTULO307
ROTULO295:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:180:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:180:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:180:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:180:36 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:180:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:180:55 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:180:51 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:180:48 ===---
xor ax, ax
push ax
push cs
call _vga_convertmask
add sp, 4
mov bx, ax
pop ax
or ax, bx
mov [bp+-12], ax
ROTULO307:
ROTULO290:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:183:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:183:32 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:183:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:183:22 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:183:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
add ax, bx
mov [bp+-2], ax
ROTULO311:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:183:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:183:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:183:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:183:32 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:183:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO314
jmp ROTULO315
ROTULO314:
mov ax, 65535
jmp ROTULO316
ROTULO315:
xor ax, ax
ROTULO316:
cmp ax, 0
jne ROTULO312
jmp ROTULO313
ROTULO312:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:184:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:184:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:184:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:184:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:184:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:184:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteandor
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:183:32 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
jmp ROTULO311
ROTULO313:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:186:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:186:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:186:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:186:28 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO317
jmp ROTULO318
ROTULO317:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:187:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 255
jmp ROTULO322
ROTULO318:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:189:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 0
ROTULO322:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:191:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:191:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:191:63 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:191:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:191:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:191:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:191:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:191:58 ===---
mov ax, 3
mov cx, ax
pop ax
shr ax, cl
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:191:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:191:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:191:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:191:28 ===---
mov ax, 8
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:191:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:191:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteset
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:192:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:192:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:192:63 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:192:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:192:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:192:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:192:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:192:58 ===---
mov ax, 3
mov cx, ax
pop ax
shr ax, cl
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:192:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:192:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:192:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:192:28 ===---
mov ax, 8
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:192:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:192:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteset
add sp, 12
ROTULO186:
mov sp, bp
pop bp
FIM_vga_drawrectangle:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:195:9 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:195:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:195:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:196:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:197:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:198:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:199:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:199:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-4], 0
ROTULO324:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:199:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:199:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:199:22 ===---
mov ax, 479
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:200:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:200:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:200:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:200:26 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO330
jmp ROTULO331
ROTULO330:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:200:33 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 170
ROTULO331:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:201:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:201:38 ===---
mov ax, 80
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:201:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:201:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:201:27 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:201:21 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteset
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:202:13 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:203:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:203:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:203:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:203:26 ===---
mov ax, 1
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO335
jmp ROTULO336
ROTULO335:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:203:33 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 85
ROTULO336:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:204:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:204:38 ===---
mov ax, 80
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:204:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
xor ah, ah
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:204:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:204:27 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:204:21 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _vga_byteset
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/VGA.hcb:199:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO324
ROTULO326:
ROTULO323:
mov sp, bp
pop bp
FIM_vga_clearscreen:
retf
; MODULO FIM: vga
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:123:8 ===---
; MODULO: genericvideo
_genericvideo:
db 18
db 83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:124:9 ===---
_genericvideo_palette:
times 46 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:126:16 ===---
_genericvideo_register2colorspalette:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:127:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:127:25 ===---
xor ax, ax
cs push word [_genericvideo_palette+2]
pop es
cs mov di, [_genericvideo_palette]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:128:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:128:24 ===---
xor ax, ax
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:129:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:129:25 ===---
xor ax, ax
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:130:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:130:24 ===---
xor ax, ax
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:131:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:131:23 ===---
xor ax, ax
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:132:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:132:27 ===---
xor ax, ax
es mov [di+10], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:133:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:133:25 ===---
xor ax, ax
es mov [di+12], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:134:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:134:29 ===---
mov ax, 1
es mov [di+14], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:135:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:135:24 ===---
xor ax, ax
es mov [di+16], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:136:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:136:29 ===---
mov ax, 1
es mov [di+18], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:137:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:137:30 ===---
mov ax, 1
es mov [di+20], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:138:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:138:29 ===---
mov ax, 1
es mov [di+22], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:139:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:139:28 ===---
mov ax, 1
es mov [di+24], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:140:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:140:32 ===---
mov ax, 1
es mov [di+26], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:141:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:141:26 ===---
mov ax, 1
es mov [di+28], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:142:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:142:25 ===---
mov ax, 1
es mov [di+30], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:143:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:143:31 ===---
mov ax, 65535
es mov [di+32], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:144:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:144:38 ===---
mov ax, 1
es mov [di+34], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:145:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:145:25 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _colors_register
add sp, 4
ROTULO340:
FIM_genericvideo_register2colorspalette:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:148:16 ===---
_genericvideo_register16colorspalette:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:149:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:149:25 ===---
xor ax, ax
cs push word [_genericvideo_palette+2]
pop es
cs mov di, [_genericvideo_palette]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:150:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:150:24 ===---
mov ax, 1
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:151:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:151:25 ===---
mov ax, 2
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:152:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:152:24 ===---
mov ax, 3
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:153:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:153:23 ===---
mov ax, 4
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:154:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:154:27 ===---
mov ax, 5
es mov [di+10], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:155:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:155:25 ===---
mov ax, 6
es mov [di+12], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:156:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:156:29 ===---
mov ax, 7
es mov [di+14], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:157:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:157:24 ===---
mov ax, 8
es mov [di+16], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:158:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:158:29 ===---
mov ax, 9
es mov [di+18], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:159:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:159:30 ===---
mov ax, 10
es mov [di+20], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:160:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:160:29 ===---
mov ax, 11
es mov [di+22], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:161:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:161:28 ===---
mov ax, 12
es mov [di+24], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:162:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:162:32 ===---
mov ax, 13
es mov [di+26], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:163:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:163:26 ===---
mov ax, 14
es mov [di+28], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:164:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:164:25 ===---
mov ax, 15
es mov [di+30], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:165:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:165:31 ===---
mov ax, 65535
es mov [di+32], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:166:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:166:38 ===---
mov ax, 1
es mov [di+34], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:167:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:167:25 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _colors_register
add sp, 4
ROTULO341:
FIM_genericvideo_register16colorspalette:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:170:16 ===---
_genericvideo_registerdrawline:
push bp
mov bp, sp
; ARG: mode TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:170:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:171:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:171:25 ===---
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
ROTULO342:
mov sp, bp
pop bp
FIM_genericvideo_registerdrawline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:174:16 ===---
_genericvideo_registerdrawellipse:
push bp
mov bp, sp
; ARG: mode TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:174:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:175:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:175:28 ===---
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
ROTULO343:
mov sp, bp
pop bp
FIM_genericvideo_registerdrawellipse:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:178:9 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:178:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:178:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:178:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:178:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:178:79 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:178:93 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:179:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:180:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:181:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:182:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:183:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:184:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:185:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:186:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:187:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:187:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:187:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:187:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO347
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:188:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:188:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:188:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:188:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
sub ax, bx
mov [bp+-8], ax
jmp ROTULO350
ROTULO346:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:190:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:190:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:190:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:190:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
sub ax, bx
mov [bp+-8], ax
ROTULO350:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:192:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:192:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:192:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:192:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO353
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:193:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:193:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:193:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:193:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
sub ax, bx
mov [bp+-10], ax
jmp ROTULO356
ROTULO352:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:195:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:195:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:195:23 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:195:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
sub ax, bx
mov [bp+-10], ax
ROTULO356:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:197:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:197:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:197:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:197:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
mov bx, ax
pop ax
cmp ax, bx
jg ROTULO359
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:198:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:198:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:198:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:198:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO364
jmp ROTULO365
ROTULO364:
mov ax, 65535
jmp ROTULO366
ROTULO365:
xor ax, ax
ROTULO366:
cmp ax, 0
jne ROTULO362
jmp ROTULO363
ROTULO362:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:199:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:199:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:200:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:200:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov [bp+10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:201:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:201:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
mov [bp+14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:202:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:202:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:203:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:203:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov [bp+12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:204:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:204:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
mov [bp+16], ax
ROTULO363:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:206:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:206:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:206:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:206:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO369
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:207:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
jmp ROTULO372
ROTULO368:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:209:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:209:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:209:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:209:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO375
jmp ROTULO376
ROTULO375:
mov ax, 65535
jmp ROTULO377
ROTULO376:
xor ax, ax
ROTULO377:
cmp ax, 0
jne ROTULO373
jmp ROTULO374
ROTULO373:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:210:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
jmp ROTULO378
ROTULO374:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:212:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:212:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:212:28 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:212:27 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+-2], ax
ROTULO378:
ROTULO372:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:215:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:215:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:216:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:216:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:217:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:217:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:217:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:217:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:217:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:217:25 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
pop bx
sub ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:218:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:218:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:218:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:218:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:218:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:218:32 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:219:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:219:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:219:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:219:27 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:220:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:220:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:220:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:220:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:220:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+6]
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:221:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:221:31 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:221:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:221:26 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:221:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
mov [bp+-14], ax
ROTULO379:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:221:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:221:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:221:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO382
jmp ROTULO383
ROTULO382:
mov ax, 65535
jmp ROTULO384
ROTULO383:
xor ax, ax
ROTULO384:
cmp ax, 0
jne ROTULO380
jmp ROTULO381
ROTULO380:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:222:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:222:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:222:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:222:25 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jge ROTULO387
jmp ROTULO388
ROTULO387:
mov ax, 65535
jmp ROTULO389
ROTULO388:
xor ax, ax
ROTULO389:
cmp ax, 0
jne ROTULO385
jmp ROTULO386
ROTULO385:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:223:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:223:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:223:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:223:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
pop bx
add ax, bx
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:224:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:224:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:224:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:224:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
mov [bp+-12], ax
jmp ROTULO390
ROTULO386:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:226:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:226:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:226:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:226:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
mov [bp+-12], ax
ROTULO390:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:228:17 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:228:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:228:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:228:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:228:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+6]
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:221:31 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-14]
jmp ROTULO379
ROTULO381:
jmp ROTULO391
ROTULO358:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:231:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:231:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:231:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:231:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:232:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:232:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:233:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:233:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
mov [bp+10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:234:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:234:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
mov [bp+14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:235:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:235:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:236:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:236:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov [bp+12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:237:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:237:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
mov [bp+16], ax
ROTULO393:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:239:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:239:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:239:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:239:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO399
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:240:17 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
jmp ROTULO402
ROTULO398:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:242:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:242:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:242:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:242:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:243:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
jmp ROTULO408
ROTULO404:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:245:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:245:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:245:28 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:245:27 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+-2], ax
ROTULO408:
ROTULO402:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:248:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:248:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:249:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:249:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
mov [bp+-16], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:250:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:250:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:250:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:250:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:250:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:250:25 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
pop bx
sub ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:251:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:251:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:251:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:251:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:251:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:251:32 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:252:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:252:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:252:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:252:27 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:253:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:253:41 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:253:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:253:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:253:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+6]
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:254:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:254:31 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:254:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:254:26 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:254:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
pop bx
add ax, bx
mov [bp+-16], ax
ROTULO409:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:254:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:254:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:254:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO412
jmp ROTULO413
ROTULO412:
mov ax, 65535
jmp ROTULO414
ROTULO413:
xor ax, ax
ROTULO414:
cmp ax, 0
jne ROTULO410
jmp ROTULO411
ROTULO410:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:255:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:255:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:255:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:255:25 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jge ROTULO417
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:256:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:256:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:256:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:256:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
pop bx
add ax, bx
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:257:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:257:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:257:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:257:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
mov [bp+-12], ax
jmp ROTULO420
ROTULO416:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:259:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:259:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:259:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:259:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
mov [bp+-12], ax
ROTULO420:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:261:17 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:261:45 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:261:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:261:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:261:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+6]
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:254:31 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-16]
jmp ROTULO409
ROTULO411:
ROTULO391:
ROTULO344:
mov sp, bp
pop bp
FIM_genericvideo_drawline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:266:9 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:266:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:266:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:266:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:266:68 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:266:82 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:266:96 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:266:119 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:267:15 ===---
mov ax, _genericvideo
mov [bp+-8], ax
mov ax, 267
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO421:
mov sp, bp
pop bp
FIM_genericvideo_drawellipse:
retf
; MODULO FIM: genericvideo
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:32:8 ===---
; MODULO: graphics
_graphics:
db 18
db 83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:33:9 ===---
_graphics_active:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:34:9 ===---
_graphics_video:
times 30 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:36:16 ===---
_graphics_drawpixel:
push bp
mov bp, sp
; ARG: x TAM: 2 POS: BP+6 
; ARG: y TAM: 2 POS: BP+8 
; ARG: color TAM: 2 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:36:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:36:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:36:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:37:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:37:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:37:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:37:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO425
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:37:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 37
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO424:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:38:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:38:14 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:38:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:38:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO430
jmp ROTULO431
ROTULO430:
mov ax, 65535
jmp ROTULO432
ROTULO431:
xor ax, ax
ROTULO432:
cmp ax, 0
jne ROTULO428
jmp ROTULO429
ROTULO428:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:38:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:38:39 ===---
xor ax, ax
jmp ROTULO422
ROTULO429:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:39:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:39:14 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:39:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:39:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO435
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:39:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:39:40 ===---
xor ax, ax
jmp ROTULO422
ROTULO434:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:40:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:40:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:40:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:40:32 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:40:9 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
push es
push di
es call far [di+6]
add sp, 10
ROTULO422:
mov sp, bp
pop bp
FIM_graphics_drawpixel:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:43:16 ===---
_graphics_drawline:
push bp
mov bp, sp
; ARG: x1 TAM: 2 POS: BP+6 
; ARG: y1 TAM: 2 POS: BP+8 
; ARG: x2 TAM: 2 POS: BP+10 
; ARG: y2 TAM: 2 POS: BP+12 
; ARG: color TAM: 2 POS: BP+14 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:43:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:43:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:43:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:43:67 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:43:81 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:44:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:44:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:44:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:44:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO441
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:44:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 44
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO440:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:45:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:45:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:45:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:45:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO446
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:45:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:45:40 ===---
xor ax, ax
jmp ROTULO438
ROTULO445:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:46:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:46:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:46:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:46:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO451
jmp ROTULO452
ROTULO451:
mov ax, 65535
jmp ROTULO453
ROTULO452:
xor ax, ax
ROTULO453:
cmp ax, 0
jne ROTULO449
jmp ROTULO450
ROTULO449:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:46:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:46:41 ===---
xor ax, ax
jmp ROTULO438
ROTULO450:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:47:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:47:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:47:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:47:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO456
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:47:35 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:47:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:47:54 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:47:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
sub ax, bx
mov [bp+10], ax
ROTULO455:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:48:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:48:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:48:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:48:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO461
jmp ROTULO462
ROTULO461:
mov ax, 65535
jmp ROTULO463
ROTULO462:
xor ax, ax
ROTULO463:
cmp ax, 0
jne ROTULO459
jmp ROTULO460
ROTULO459:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:48:36 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:48:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:48:56 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:48:41 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
sub ax, bx
mov [bp+12], ax
ROTULO460:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:49:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:49:47 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:49:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:49:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:49:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:49:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:49:9 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
push es
push di
es call far [di+18]
add sp, 14
ROTULO438:
mov sp, bp
pop bp
FIM_graphics_drawline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:52:16 ===---
_graphics_drawrectangle:
push bp
mov bp, sp
; ARG: x1 TAM: 2 POS: BP+6 
; ARG: y1 TAM: 2 POS: BP+8 
; ARG: x2 TAM: 2 POS: BP+10 
; ARG: y2 TAM: 2 POS: BP+12 
; ARG: bordercolor TAM: 2 POS: BP+14 
; ARG: backgroundcolor TAM: 2 POS: BP+16 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:52:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:52:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:52:58 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:52:72 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:52:86 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:52:109 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:53:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:53:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:53:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:53:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO467
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:53:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 53
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO466:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:54:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:54:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:54:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:54:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO472
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:54:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:54:40 ===---
xor ax, ax
jmp ROTULO464
ROTULO471:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:55:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:55:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:55:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:55:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO477
jmp ROTULO478
ROTULO477:
mov ax, 65535
jmp ROTULO479
ROTULO478:
xor ax, ax
ROTULO479:
cmp ax, 0
jne ROTULO475
jmp ROTULO476
ROTULO475:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:55:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:55:41 ===---
xor ax, ax
jmp ROTULO464
ROTULO476:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:56:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:56:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:56:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:56:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO482
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:56:35 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:56:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:56:54 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:56:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
sub ax, bx
mov [bp+10], ax
ROTULO481:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:57:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:57:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:57:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:57:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO487
jmp ROTULO488
ROTULO487:
mov ax, 65535
jmp ROTULO489
ROTULO488:
xor ax, ax
ROTULO489:
cmp ax, 0
jne ROTULO485
jmp ROTULO486
ROTULO485:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:57:36 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:57:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:57:56 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:57:41 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
sub ax, bx
mov [bp+12], ax
ROTULO486:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:58:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:58:65 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:58:52 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:58:48 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:58:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:58:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:58:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:58:9 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
push es
push di
es call far [di+10]
add sp, 16
ROTULO464:
mov sp, bp
pop bp
FIM_graphics_drawrectangle:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:61:16 ===---
_graphics_drawellipse:
push bp
mov bp, sp
; ARG: x1 TAM: 2 POS: BP+6 
; ARG: y1 TAM: 2 POS: BP+8 
; ARG: x2 TAM: 2 POS: BP+10 
; ARG: y2 TAM: 2 POS: BP+12 
; ARG: bordercolor TAM: 2 POS: BP+14 
; ARG: backgroundcolor TAM: 2 POS: BP+16 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:61:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:61:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:61:56 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:61:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:61:84 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:61:107 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:62:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:62:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:62:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:62:22 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:62:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 62
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO492:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:63:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:63:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:63:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:63:18 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:63:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:63:40 ===---
xor ax, ax
jmp ROTULO490
ROTULO497:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:64:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:64:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:64:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:64:18 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:64:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:64:41 ===---
xor ax, ax
jmp ROTULO490
ROTULO502:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:65:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:65:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:65:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:65:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO508
jmp ROTULO509
ROTULO508:
mov ax, 65535
jmp ROTULO510
ROTULO509:
xor ax, ax
ROTULO510:
cmp ax, 0
jne ROTULO506
jmp ROTULO507
ROTULO506:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:65:35 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:65:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:65:54 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:65:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
sub ax, bx
mov [bp+10], ax
ROTULO507:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:66:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:66:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:66:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:66:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO513
jmp ROTULO514
ROTULO513:
mov ax, 65535
jmp ROTULO515
ROTULO514:
xor ax, ax
ROTULO515:
cmp ax, 0
jne ROTULO511
jmp ROTULO512
ROTULO511:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:66:36 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:66:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:66:56 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:66:41 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
sub ax, bx
mov [bp+12], ax
ROTULO512:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:67:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:67:63 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:67:50 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:67:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:67:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:67:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:67:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:67:9 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
push es
push di
es call far [di+14]
add sp, 16
ROTULO490:
mov sp, bp
pop bp
FIM_graphics_drawellipse:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:70:16 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:70:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:70:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:70:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:70:69 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:70:83 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:70:97 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:70:111 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:70:128 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:71:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:71:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:71:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:71:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO519
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:71:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 71
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO518:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:72:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:72:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:72:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:72:18 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:72:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:72:40 ===---
xor ax, ax
jmp ROTULO516
ROTULO523:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:73:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:73:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:73:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:73:18 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:73:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:73:41 ===---
xor ax, ax
jmp ROTULO516
ROTULO528:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:74:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:74:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:74:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:74:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO534
jmp ROTULO535
ROTULO534:
mov ax, 65535
jmp ROTULO536
ROTULO535:
xor ax, ax
ROTULO536:
cmp ax, 0
jne ROTULO532
jmp ROTULO533
ROTULO532:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:74:35 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:74:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:74:54 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:74:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
sub ax, bx
mov [bp+18], ax
ROTULO533:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:75:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:75:15 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:75:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:75:18 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO539
jmp ROTULO540
ROTULO539:
mov ax, 65535
jmp ROTULO541
ROTULO540:
xor ax, ax
ROTULO541:
cmp ax, 0
jne ROTULO537
jmp ROTULO538
ROTULO537:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:75:36 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:75:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:75:56 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:75:41 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
sub ax, bx
mov [bp+20], ax
ROTULO538:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:76:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:76:59 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:76:52 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:76:48 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:76:44 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:76:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:76:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:76:30 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:76:9 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+22]
add sp, 20
ROTULO516:
mov sp, bp
pop bp
FIM_graphics_drawtext:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:79:16 ===---
_graphics_calcfontsize:
push bp
mov bp, sp
; ARG: font TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: size TAM: 4 POS: BP+14 
; ARG: totalwidth TAM: 2 POS: BP+18 
; ARG: multiline TAM: 2 POS: BP+20 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:79:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:79:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:79:59 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:79:73 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:79:95 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:80:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:80:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:80:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:80:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO545
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:80:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 80
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO544:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:81:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:81:54 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:81:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:81:36 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+14+2]
pop es
mov di, [bp+14]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:81:30 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:81:9 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+26]
add sp, 16
ROTULO542:
mov sp, bp
pop bp
FIM_graphics_calcfontsize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:84:16 ===---
_graphics_clearscreen:
push bp
mov bp, sp
; ARG: color TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:84:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:85:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:85:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:85:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:85:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO551
jmp ROTULO552
ROTULO551:
mov ax, 65535
jmp ROTULO553
ROTULO552:
xor ax, ax
ROTULO553:
cmp ax, 0
jne ROTULO549
jmp ROTULO550
ROTULO549:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:85:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 85
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO550:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:86:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:86:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:86:9 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
push es
push di
es call far [di+22]
add sp, 6
ROTULO548:
mov sp, bp
pop bp
FIM_graphics_clearscreen:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:89:21 ===---
_graphics_getactive:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:90:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:90:16 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
jmp ROTULO554
ROTULO554:
FIM_graphics_getactive:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:93:21 ===---
_graphics_getwidth:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:94:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:94:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:94:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:94:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO558
jmp ROTULO559
ROTULO558:
mov ax, 65535
jmp ROTULO560
ROTULO559:
xor ax, ax
ROTULO560:
cmp ax, 0
jne ROTULO556
jmp ROTULO557
ROTULO556:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:94:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 94
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO557:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:95:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:95:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+0]
jmp ROTULO555
ROTULO555:
FIM_graphics_getwidth:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:98:21 ===---
_graphics_getheight:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:99:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:99:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:99:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:99:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO564
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:99:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 99
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO563:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:100:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:100:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+2]
jmp ROTULO561
ROTULO561:
FIM_graphics_getheight:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:103:21 ===---
_graphics_getcolors:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:104:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:104:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:104:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_graphics_active]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:104:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO570
jmp ROTULO571
ROTULO570:
mov ax, 65535
jmp ROTULO572
ROTULO571:
xor ax, ax
ROTULO572:
cmp ax, 0
jne ROTULO568
jmp ROTULO569
ROTULO568:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:104:35 ===---
mov ax, _graphics
mov [bp+-8], ax
mov ax, 104
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
ROTULO569:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:105:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:105:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
cs push word [_graphics_video+2]
pop es
cs mov di, [_graphics_video]
es mov ax, [di+4]
jmp ROTULO567
ROTULO567:
FIM_graphics_getcolors:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:108:16 ===---
_graphics_mode80x25x16:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:109:9 ===---
; ACAO GRAVACAO - Grava em variavel
cs mov word [_graphics_active], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:110:13 ===---
mov ax, 3
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:111:13 ===---
int 0x10
ROTULO573:
FIM_graphics_mode80x25x16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:114:16 ===---
_graphics_modemanual:
push bp
mov bp, sp
; ARG: newmode TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:114:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:115:9 ===---
; ACAO GRAVACAO - Grava em variavel
cs mov word [_graphics_active], 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:116:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:116:19 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+6+2]
cs mov [_graphics_video+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:117:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:117:19 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
cs mov [_graphics_video], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:118:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _font_initialize
ROTULO574:
mov sp, bp
pop bp
FIM_graphics_modemanual:
retf
; MODULO FIM: graphics
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:271:8 ===---
; MODULO: font
_font:
db 18
db 83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:272:16 ===---
_font_default:
times 34 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:274:16 ===---
_font_initialize:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:275:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:275:29 ===---
; ACAO CHAMADA - Carrega binario embutido
jmp ROTULO576
ROTULO577:
db 7,0,3,0,3,0,1,0,88,0,97,0,131,0,140,0,149,0,158,0,167,0,176,0,185,0,194,0,203,0,212,0,221,0,230,0,239,0,248,0,1,1,10,1,19,1,28,1,37,1,46,1,55,1,64,1,73,1,82,1,91,1,100,1,109,1,118,1,127,1,136,1,145,1,154,1,163,1,172,1,181,1,190,1,199,1,208,1,9,83,105,115,116,101,109,97,0,34,72,117,109,98,101,114,116,111,32,67,111,115,116,97,32,100,111,115,32,83,97,110,116,111,115,32,74,117,110,105,111,114,0,5,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,6,0,48,72,148,164,164,72,48,3,0,32,96,160,32,32,32,32,5,0,112,136,8,16,32,64,248,5,0,248,8,48,8,8,8,240,5,0,136,136,136,248,8,8,8,5,0,248,128,240,8,8,8,240,5,0,112,136,128,240,136,136,112,5,0,248,8,8,16,32,64,128,5,0,112,136,136,112,136,136,112,5,0,112,136,136,120,8,136,112,7,0,56,68,130,254,130,130,130,6,0,248,132,132,248,132,132,248,6,0,56,68,128,128,128,68,56,7,0,248,132,130,130,130,132,248,6,0,252,128,128,240,128,128,252,6,0,252,128,128,240,128,128,128,6,0,120,132,128,156,132,132,120,6,0,132,132,132,252,132,132,132,1,0,128,128,128,128,128,128,128,5,0,8,8,8,8,8,136,112,6,0,132,132,136,240,136,132,132,5,0,128,128,128,128,128,128,248,7,0,130,198,170,146,130,130,130,7,0,130,194,162,146,138,134,130,7,0,124,130,130,130,130,130,124,6,0,248,132,132,248,128,128,128,8,0,124,130,130,130,138,132,123,7,0,248,132,132,248,132,132,130,6,0,120,132,128,120,4,132,120,7,0,254,16,16,16,16,16,16,7,0,130,130,130,130,130,130,124,7,0,130,130,130,130,68,40,16,7,0,130,130,130,146,170,198,130,7,0,130,68,40,16,40,68,130,7,0,130,68,40,16,32,64,128,7,0,254,4,8,16,32,64,254
ROTULO576:
push cs
pop es
mov di, ROTULO577
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:275:20 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_font_default+2]
pop es
cs mov di, [_font_default]
push es
push di
push cs
call _font_loadbinary
add sp, 8
ROTULO575:
FIM_font_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:278:16 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:278:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:278:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:279:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:280:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:281:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:281:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:282:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:282:21 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+0]
es pop word [di+0+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:283:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:283:25 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:284:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:284:25 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:285:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:285:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:286:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:287:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:288:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:288:28 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:289:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:290:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:291:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:291:28 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:292:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:293:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:294:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:294:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:295:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:296:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:297:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:297:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:297:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:297:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+0]
pop bx
add ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:298:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:298:18 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+10+2]
mov word [bp+-8+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:299:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:299:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:300:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:301:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:302:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:302:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:302:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:302:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+0]
pop bx
add ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:303:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:303:18 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+10+2]
mov word [bp+-8+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:304:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:304:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:305:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:305:58 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:305:60 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 18
es mov ax, [di+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:305:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:305:41 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 16
es mov ax, [di+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:305:23 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 14
es mov ax, [di+14]
pop bx
add ax, bx
pop bx
add ax, bx
es mov [di+12], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO578:
mov sp, bp
pop bp
FIM_font_loadbinary:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:308:14 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:308:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:308:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:309:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:310:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:311:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:312:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:312:22 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+2]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:313:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:313:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:313:50 ===---
mov ax, 12
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:313:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:313:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:313:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:313:45 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:313:22 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:314:10 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:314:21 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+2]
mov word [bp+-8+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:315:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:315:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+0]
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:316:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:316:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:316:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:316:21 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
pop bx
add ax, bx
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:317:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:317:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-8+2]
pop es
mov di, [bp+-8]
jmp ROTULO579
ROTULO579:
mov sp, bp
pop bp
FIM_font_findchar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:320:9 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:320:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:320:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:320:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:320:68 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:320:82 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:320:96 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:320:110 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:320:127 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:321:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:322:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:323:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:324:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:325:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:326:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:327:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:328:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:329:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:330:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:331:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:332:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:333:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:334:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:335:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:336:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:337:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:338:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:339:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:339:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:339:27 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:339:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
pop bx
sub ax, bx
mov [bp+-38], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:340:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:340:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:340:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:341:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:342:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-26], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:343:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:343:24 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-16], 1
ROTULO581:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:343:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:343:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:343:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO584
jmp ROTULO585
ROTULO584:
mov ax, 65535
jmp ROTULO586
ROTULO585:
xor ax, ax
ROTULO586:
cmp ax, 0
jne ROTULO582
jmp ROTULO583
ROTULO582:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:344:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-34], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:345:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-36], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:346:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:347:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:347:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:347:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:347:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:347:25 ===---
mov ax, 48
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
je ROTULO590
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:347:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:347:40 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:347:48 ===---
mov ax, 57
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO595
jmp ROTULO596
ROTULO595:
mov ax, 65535
jmp ROTULO597
ROTULO596:
xor ax, ax
ROTULO597:
cmp ax, 0
je ROTULO590
ROTULO589:
mov ax, 65535
jmp ROTULO591
ROTULO590:
xor ax, ax
ROTULO591:
cmp ax, 0
jne ROTULO587
jmp ROTULO588
ROTULO587:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:347:59 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:347:79 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:347:81 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:347:72 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:347:74 ===---
mov ax, 48
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:347:67 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
pop bx
sub ax, bx
pop bx
add ax, bx
mov [bp+-8], ax
ROTULO588:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:348:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:348:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:348:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:348:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:348:25 ===---
mov ax, 65
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO603
jmp ROTULO604
ROTULO603:
mov ax, 65535
jmp ROTULO605
ROTULO604:
xor ax, ax
ROTULO605:
cmp ax, 0
je ROTULO601
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:348:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:348:40 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:348:48 ===---
mov ax, 90
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO606
jmp ROTULO607
ROTULO606:
mov ax, 65535
jmp ROTULO608
ROTULO607:
xor ax, ax
ROTULO608:
cmp ax, 0
je ROTULO601
ROTULO600:
mov ax, 65535
jmp ROTULO602
ROTULO601:
xor ax, ax
ROTULO602:
cmp ax, 0
jne ROTULO598
jmp ROTULO599
ROTULO598:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:348:59 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:348:79 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:348:81 ===---
mov ax, 12
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:348:72 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:348:74 ===---
mov ax, 65
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:348:67 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
pop bx
sub ax, bx
pop bx
add ax, bx
mov [bp+-8], ax
ROTULO599:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:349:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:349:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:349:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:349:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:349:25 ===---
mov ax, 97
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO614
jmp ROTULO615
ROTULO614:
mov ax, 65535
jmp ROTULO616
ROTULO615:
xor ax, ax
ROTULO616:
cmp ax, 0
je ROTULO612
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:349:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:349:40 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:349:48 ===---
mov ax, 122
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO617
jmp ROTULO618
ROTULO617:
mov ax, 65535
jmp ROTULO619
ROTULO618:
xor ax, ax
ROTULO619:
cmp ax, 0
je ROTULO612
ROTULO611:
mov ax, 65535
jmp ROTULO613
ROTULO612:
xor ax, ax
ROTULO613:
cmp ax, 0
jne ROTULO609
jmp ROTULO610
ROTULO609:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:349:59 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:349:79 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:349:81 ===---
mov ax, 12
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:349:72 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:349:74 ===---
mov ax, 97
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:349:67 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
pop bx
sub ax, bx
pop bx
add ax, bx
mov [bp+-8], ax
ROTULO610:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:350:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:350:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:350:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:350:24 ===---
mov ax, 32
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:350:34 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 1
ROTULO621:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:351:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:351:23 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:351:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:351:32 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:352:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:352:21 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:353:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:354:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:354:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
xor ax, ax
es mov al, [di+0]
mov [bp+-18], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:355:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:356:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:356:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:356:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:356:35 ===---
mov ax, 8
mov cx, ax
pop ax
shr ax, cl
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:357:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:357:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:357:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:357:28 ===---
xor ax, ax
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:357:35 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-12], 1
ROTULO626:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:358:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:358:31 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-20], 1
ROTULO630:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:358:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:358:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:358:26 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 14
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+14]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO633
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:359:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:359:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:359:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:359:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:359:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:359:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-38]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO638
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:360:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:360:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+24]
cmp ax, 0
jne ROTULO641
jmp ROTULO642
ROTULO641:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:361:25 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-26], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:362:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:362:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:362:35 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:362:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
add ax, bx
mov [bp+16], ax
jmp ROTULO643
ROTULO642:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:364:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:364:30 ===---
xor ax, ax
jmp ROTULO580
ROTULO643:
ROTULO637:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:367:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:367:30 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-22], 1
ROTULO644:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:367:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:367:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:367:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO647
jmp ROTULO648
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:368:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:368:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:368:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:368:28 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO652
jmp ROTULO653
ROTULO652:
mov ax, 65535
jmp ROTULO654
ROTULO653:
xor ax, ax
ROTULO654:
cmp ax, 0
jne ROTULO650
jmp ROTULO651
ROTULO650:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:369:25 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 8
jmp ROTULO655
ROTULO651:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:371:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:371:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:371:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:371:46 ===---
mov ax, 7
mov bx, ax
pop ax
and ax, bx
mov [bp+-14], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:372:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:372:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:372:28 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:372:37 ===---
mov ax, 8
mov bx, ax
pop ax
cmp ax, bx
je ROTULO661
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:372:44 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-14], 8
ROTULO660:
ROTULO655:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:374:21 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:374:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
xor ax, ax
es mov al, [di+0]
mov [bp+-32], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:375:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:375:34 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-24], 1
ROTULO664:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:375:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:375:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:375:34 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO667
jmp ROTULO668
ROTULO667:
mov ax, 65535
jmp ROTULO669
ROTULO668:
xor ax, ax
ROTULO669:
cmp ax, 0
jne ROTULO665
jmp ROTULO666
ROTULO665:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:376:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:376:59 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:376:61 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:376:55 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:376:57 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:376:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:376:38 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 16
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:376:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
add ax, bx
pop bx
add ax, bx
pop bx
sub ax, bx
mov [bp+-28], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:377:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:377:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:377:28 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-32]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:377:36 ===---
mov ax, 128
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO670
jmp ROTULO671
ROTULO670:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:378:29 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:378:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:378:50 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:378:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:378:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:378:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:378:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:378:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
pop bx
add ax, bx
pop bx
add ax, bx
pop bx
sub ax, bx
mov [bp+-30], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:379:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:379:46 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:379:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:379:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-30]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:379:42 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO680
jmp ROTULO681
ROTULO680:
mov ax, 65535
jmp ROTULO682
ROTULO681:
xor ax, ax
ROTULO682:
cmp ax, 0
je ROTULO678
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:379:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:379:55 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:379:64 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO683
jmp ROTULO684
ROTULO683:
mov ax, 65535
jmp ROTULO685
ROTULO684:
xor ax, ax
ROTULO685:
cmp ax, 0
je ROTULO678
ROTULO677:
mov ax, 65535
jmp ROTULO679
ROTULO678:
xor ax, ax
ROTULO679:
cmp ax, 0
jne ROTULO675
jmp ROTULO676
ROTULO675:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:380:33 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:380:66 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+22]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:380:59 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:380:52 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-30]
push ax
push cs
call _graphics_drawpixel
add sp, 6
ROTULO676:
ROTULO671:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:383:25 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:383:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:383:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-32]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:383:39 ===---
mov ax, 1
mov cx, ax
pop ax
shl ax, cl
mov [bp+-32], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:375:34 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-24]
jmp ROTULO664
ROTULO666:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:385:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:367:30 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-22]
jmp ROTULO644
ROTULO646:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:358:31 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-20]
jmp ROTULO630
ROTULO632:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:388:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:388:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:388:29 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 20
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:388:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:388:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:388:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+-26], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:389:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:343:24 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-16]
jmp ROTULO581
ROTULO583:
ROTULO580:
mov sp, bp
pop bp
FIM_font_drawtext:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:393:9 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:393:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:393:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:393:54 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:393:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:393:92 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:394:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:395:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:396:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:397:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:398:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:399:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:400:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:401:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:402:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:403:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:404:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:405:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:406:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:407:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:408:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:409:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:410:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:411:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:412:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-38], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:413:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:413:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:413:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:414:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:415:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-26], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:416:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:416:25 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:417:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:417:24 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-16], 1
ROTULO687:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:417:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:417:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:417:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO690
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:418:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:419:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:419:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:419:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:419:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:419:25 ===---
mov ax, 48
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO698
jmp ROTULO699
ROTULO698:
mov ax, 65535
jmp ROTULO700
ROTULO699:
xor ax, ax
ROTULO700:
cmp ax, 0
je ROTULO696
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:419:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:419:40 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:419:48 ===---
mov ax, 57
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO701
jmp ROTULO702
ROTULO701:
mov ax, 65535
jmp ROTULO703
ROTULO702:
xor ax, ax
ROTULO703:
cmp ax, 0
je ROTULO696
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:419:59 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:419:79 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:419:81 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:419:72 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:419:74 ===---
mov ax, 48
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:419:67 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
pop bx
sub ax, bx
pop bx
add ax, bx
mov [bp+-8], ax
ROTULO694:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:420:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:420:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:420:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:420:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:420:25 ===---
mov ax, 65
mov bx, ax
pop ax
cmp ax, bx
jae ROTULO709
jmp ROTULO710
ROTULO709:
mov ax, 65535
jmp ROTULO711
ROTULO710:
xor ax, ax
ROTULO711:
cmp ax, 0
je ROTULO707
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:420:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:420:40 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:420:48 ===---
mov ax, 90
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO712
jmp ROTULO713
ROTULO712:
mov ax, 65535
jmp ROTULO714
ROTULO713:
xor ax, ax
ROTULO714:
cmp ax, 0
je ROTULO707
ROTULO706:
mov ax, 65535
jmp ROTULO708
ROTULO707:
xor ax, ax
ROTULO708:
cmp ax, 0
jne ROTULO704
jmp ROTULO705
ROTULO704:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:420:59 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:420:79 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:420:81 ===---
mov ax, 12
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:420:72 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:420:74 ===---
mov ax, 65
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:420:67 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
pop bx
sub ax, bx
pop bx
add ax, bx
mov [bp+-8], ax
ROTULO705:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:421:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:421:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:421:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:421:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:421:25 ===---
mov ax, 97
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
je ROTULO718
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:421:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:421:40 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:421:48 ===---
mov ax, 122
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO723
jmp ROTULO724
ROTULO723:
mov ax, 65535
jmp ROTULO725
ROTULO724:
xor ax, ax
ROTULO725:
cmp ax, 0
je ROTULO718
ROTULO717:
mov ax, 65535
jmp ROTULO719
ROTULO718:
xor ax, ax
ROTULO719:
cmp ax, 0
jne ROTULO715
jmp ROTULO716
ROTULO715:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:421:59 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:421:79 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:421:81 ===---
mov ax, 12
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:421:72 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:421:74 ===---
mov ax, 97
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:421:67 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
pop bx
sub ax, bx
pop bx
add ax, bx
mov [bp+-8], ax
ROTULO716:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:422:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:422:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:422:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:422:24 ===---
mov ax, 32
mov bx, ax
pop ax
cmp ax, bx
je ROTULO728
jmp ROTULO729
ROTULO728:
mov ax, 65535
jmp ROTULO730
ROTULO729:
xor ax, ax
ROTULO730:
cmp ax, 0
jne ROTULO726
jmp ROTULO727
ROTULO726:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:422:34 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 1
ROTULO727:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:423:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:423:23 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:423:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:423:32 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:424:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:424:21 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:425:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:425:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:425:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:425:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:425:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:425:30 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO733
jmp ROTULO734
ROTULO733:
mov ax, 65535
jmp ROTULO735
ROTULO734:
xor ax, ax
ROTULO735:
cmp ax, 0
jne ROTULO731
jmp ROTULO732
ROTULO731:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:426:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:426:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+20]
cmp ax, 0
jne ROTULO736
jmp ROTULO737
ROTULO736:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:427:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-26], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:428:21 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-38], 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:429:21 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:429:36 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+18]
push word [bp+14+2]
pop es
mov di, [bp+14]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:430:21 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:430:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:430:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:430:37 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
push word [bp+14+2]
pop es
mov di, [bp+14]
es mov ax, [di+2]
pop bx
add ax, bx
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
jmp ROTULO738
ROTULO737:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:432:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:432:26 ===---
xor ax, ax
jmp ROTULO686
ROTULO738:
ROTULO732:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:435:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:435:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:435:29 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 20
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:435:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:435:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:435:17 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+-26], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:436:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:436:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:436:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-38]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:436:27 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO741
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:436:34 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:436:49 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-26]
push word [bp+14+2]
pop es
mov di, [bp+14]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO740:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:437:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Drawing.hcb:417:24 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-16]
jmp ROTULO687
ROTULO689:
ROTULO686:
mov sp, bp
pop bp
FIM_font_calcsize:
retf
; MODULO FIM: font
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:163:8 ===---
; MODULO: string
_string:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:164:21 ===---
_string_length:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: text TAM: 4 POS: BP+6 
; ARG: i TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:164:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:165:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:166:13 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:168:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:169:9 ===---
ROTULO745:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:169:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:169:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:169:22 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO748
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:170:17 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:171:18 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
jmp ROTULO745
ROTULO747:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:173:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:173:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO744
ROTULO744:
mov sp, bp
pop bp
FIM_string_length:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:176:16 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:176:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:176:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:176:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:176:85 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:177:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:178:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:179:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:180:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:181:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:181:20 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:182:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:182:20 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:182:34 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:183:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:183:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:183:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:183:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO754
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:183:38 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 183
mov [bp+-10], ax
mov ax, 4
cs jmp word [_os_trycode]
ROTULO753:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:184:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:184:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:184:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:184:20 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:184:13 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:184:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO759
jmp ROTULO760
ROTULO759:
mov ax, 65535
jmp ROTULO761
ROTULO760:
xor ax, ax
ROTULO761:
cmp ax, 0
jne ROTULO757
jmp ROTULO758
ROTULO757:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:184:45 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 184
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO758:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:185:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:186:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:186:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:186:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:186:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:186:25 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:186:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:187:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:187:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-6], 1
ROTULO762:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:187:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:187:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:187:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+16]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO765
jmp ROTULO766
ROTULO765:
mov ax, 65535
jmp ROTULO767
ROTULO766:
xor ax, ax
ROTULO767:
cmp ax, 0
jne ROTULO763
jmp ROTULO764
ROTULO763:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:188:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:188:21 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:189:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:189:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:190:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:191:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:187:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-6]
jmp ROTULO762
ROTULO764:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:193:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO751:
mov sp, bp
pop bp
FIM_string_substring:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:196:21 ===---
_string_equals:
push bp
mov bp, sp
; ARG: txt1 TAM: 4 POS: BP+6 
; ARG: txt2 TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:196:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:196:50 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:197:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:198:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:199:9 ===---
ROTULO769:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:199:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:199:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:199:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:200:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:200:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:200:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:200:24 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO777
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:200:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:200:38 ===---
mov ax, 1
jmp ROTULO768
ROTULO776:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:201:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:202:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
jmp ROTULO769
ROTULO771:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:204:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:204:16 ===---
xor ax, ax
jmp ROTULO768
ROTULO768:
mov sp, bp
pop bp
FIM_string_equals:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:207:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:207:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:207:50 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:208:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:209:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:210:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:211:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:212:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:213:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:213:20 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:213:34 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:214:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:214:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:215:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:215:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:215:37 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:215:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:215:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:216:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:216:34 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:216:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:216:31 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:216:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:216:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:216:13 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
pop bx
add ax, bx
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:216:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:216:62 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 216
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO782:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:217:10 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:217:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:217:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:217:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:217:25 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:217:18 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
pop bx
add ax, bx
pop bx
add ax, bx
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:218:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:219:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:219:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-8], 1
ROTULO786:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:219:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:219:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:219:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO789
jmp ROTULO790
ROTULO789:
mov ax, 65535
jmp ROTULO791
ROTULO790:
xor ax, ax
ROTULO791:
cmp ax, 0
jne ROTULO787
jmp ROTULO788
ROTULO787:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:220:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:220:19 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:221:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:221:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:222:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:223:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:219:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-8]
jmp ROTULO786
ROTULO788:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:225:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:226:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:226:16 ===---
mov ax, 1
jmp ROTULO780
ROTULO780:
mov sp, bp
pop bp
FIM_string_concat:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:229:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:229:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:229:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:230:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:231:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:232:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:233:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:234:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:234:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:235:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:235:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:235:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:235:20 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:235:34 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:236:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:237:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:238:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:239:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:239:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:239:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:239:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:239:40 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:239:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
pop bx
add ax, bx
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO795
jmp ROTULO796
ROTULO795:
mov ax, 65535
jmp ROTULO797
ROTULO796:
xor ax, ax
ROTULO797:
cmp ax, 0
jne ROTULO793
jmp ROTULO794
ROTULO793:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:239:54 ===---
mov ax, _string
mov [bp+-8], ax
mov ax, 239
mov [bp+-10], ax
mov ax, 9
cs jmp word [_os_trycode]
ROTULO794:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:240:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:240:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-6], 1
ROTULO798:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:240:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:240:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:240:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO801
jmp ROTULO802
ROTULO801:
mov ax, 65535
jmp ROTULO803
ROTULO802:
xor ax, ax
ROTULO803:
cmp ax, 0
jne ROTULO799
jmp ROTULO800
ROTULO799:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:241:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:241:19 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-8], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:242:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:242:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-8]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], al
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:243:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:244:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:240:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-6]
jmp ROTULO798
ROTULO800:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:246:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:247:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:247:16 ===---
mov ax, 1
jmp ROTULO792
ROTULO792:
mov sp, bp
pop bp
FIM_string_copy:
retf
; MODULO FIM: string
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:443:8 ===---
; MODULO: application
_application:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:444:9 ===---
_application_currenttheme:
times 14 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:445:9 ===---
_application_running:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:446:16 ===---
_application_currentfocus:
times 100 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:447:16 ===---
_application_currentfocusform:
times 100 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:448:16 ===---
_application_keyboardupdate:
times 4 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:449:16 ===---
_application_mouseupdate:
times 4 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:450:16 ===---
_application_exitstatus:
times 2 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:452:16 ===---
_application_applydarktheme:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:453:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:453:40 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_black
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:454:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:454:34 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_white
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:455:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:455:42 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_white
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:456:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:456:36 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_black
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:457:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:457:41 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_white
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:458:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:458:33 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _systemcolors_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:459:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:459:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_application_running]
cmp ax, 0
jne ROTULO805
jmp ROTULO806
ROTULO805:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:459:25 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:459:40 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO806:
ROTULO804:
FIM_application_applydarktheme:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:462:16 ===---
_application_applydefaulttheme:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:463:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:463:40 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_white
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:464:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:464:34 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_black
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:465:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:465:42 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_black
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:466:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:466:36 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_white
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:467:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:467:41 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _colors_black
cs push word [_application_currenttheme+2]
pop es
cs mov di, [_application_currenttheme]
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:468:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:468:33 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _systemcolors_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:469:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:469:12 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_application_running]
cmp ax, 0
jne ROTULO808
jmp ROTULO809
ROTULO808:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:469:25 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:469:40 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO809:
ROTULO807:
FIM_application_applydefaulttheme:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:472:16 ===---
_application_initialize:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:473:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
cs mov word [_application_currentfocus+2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:474:10 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
cs mov word [_application_currentfocus], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:475:9 ===---
; ACAO GRAVACAO - Grava em variavel
cs mov word [_application_running], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:476:9 ===---
; ACAO GRAVACAO - Grava em variavel
cs mov word [_application_exitstatus], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:477:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _screen_initialize
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:478:9 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _application_applydefaulttheme
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:479:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:479:26 ===---
push cs
pop es
mov di, _application_generickeyboardupdate
push es
cs pop word [_application_keyboardupdate+2]
cs mov [_application_keyboardupdate], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:480:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:480:23 ===---
push cs
pop es
mov di, _application_genericmouseupdate
push es
cs pop word [_application_mouseupdate+2]
cs mov [_application_mouseupdate], di
ROTULO810:
FIM_application_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:483:9 ===---
_application_generickeyboardupdate:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:483:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:485:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:484:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:484:12 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_consoleavail
cmp ax, 0
jne ROTULO812
jmp ROTULO813
ROTULO812:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:486:13 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 9
push ss
pop es
mov di, sp
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:487:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:487:27 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_consolereadchar
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov [di+0], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:488:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:488:29 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
xor ax, ax
es mov al, [di+0]
es mov [di+1], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:489:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:489:30 ===---
xor ax, ax
es mov [di+3], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:490:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:490:24 ===---
xor ax, ax
es mov [di+7], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:491:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:491:25 ===---
mov ax, 1
es mov [di+5], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:492:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:492:43 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:492:37 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_processkeyboard
add sp, 8
ROTULO813:
ROTULO811:
mov sp, bp
pop bp
FIM_application_generickeyboardupdate:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:496:9 ===---
_application_genericmouseupdate:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:496:28 ===---
ROTULO814:
mov sp, bp
pop bp
FIM_application_genericmouseupdate:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:499:16 ===---
_application_exit:
push bp
mov bp, sp
; ARG: status TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:499:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:500:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:500:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
cs mov [_application_exitstatus], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:501:9 ===---
; ACAO GRAVACAO - Grava em variavel
cs mov word [_application_running], 0
ROTULO815:
mov sp, bp
pop bp
FIM_application_exit:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:504:16 ===---
_application_run:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:504:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:505:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:505:24 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:506:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:506:43 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:506:21 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
push es
push di
push cs
call _control_add
add sp, 8
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:507:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:507:24 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
push es
push di
push cs
call _control_redraw
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:508:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:508:23 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_focus
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:509:9 ===---
; ACAO GRAVACAO - Grava em variavel
cs mov word [_application_running], 1
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:510:9 ===---
ROTULO817:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:510:15 ===---
; ACAO LEITURA - Le variavel
cs mov ax, [_application_running]
cmp ax, 0
jne ROTULO818
jmp ROTULO819
ROTULO818:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:511:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:511:35 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:512:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:512:32 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:513:17 ===---
sti
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:514:17 ===---
hlt
jmp ROTULO817
ROTULO819:
ROTULO816:
mov sp, bp
pop bp
FIM_application_run:
retf
; MODULO FIM: application
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:415:8 ===---
; MODULO: systemcolors
_systemcolors:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:416:17 ===---
_systemcolors_current:
times 4 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:418:21 ===---
_systemcolors_backgroundcolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:419:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:419:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+0]
jmp ROTULO820
ROTULO820:
FIM_systemcolors_backgroundcolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:422:21 ===---
_systemcolors_textcolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:423:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:423:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+2]
jmp ROTULO821
ROTULO821:
FIM_systemcolors_textcolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:426:21 ===---
_systemcolors_windowbordercolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:427:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:427:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+4]
jmp ROTULO822
ROTULO822:
FIM_systemcolors_windowbordercolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:430:21 ===---
_systemcolors_windowcolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:431:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:431:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+6]
jmp ROTULO823
ROTULO823:
FIM_systemcolors_windowcolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:434:21 ===---
_systemcolors_windowtitlecolor:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:435:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:435:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 8
cs push word [_systemcolors_current+2]
pop es
cs mov di, [_systemcolors_current]
es mov ax, [di+8]
jmp ROTULO824
ROTULO824:
FIM_systemcolors_windowtitlecolor:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:438:16 ===---
_systemcolors_initialize:
push bp
mov bp, sp
; ARG: newtheme TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:438:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:439:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:439:19 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
cs pop word [_systemcolors_current+2]
cs mov [_systemcolors_current], di
ROTULO825:
mov sp, bp
pop bp
FIM_systemcolors_initialize:
retf
; MODULO FIM: systemcolors
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:66:8 ===---
; MODULO: control
_control:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:67:16 ===---
_control_initialize:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:67:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:68:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:68:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:69:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:69:20 ===---
xor ax, ax
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:70:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:70:21 ===---
xor ax, ax
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:71:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:71:22 ===---
mov ax, 10
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:72:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:72:23 ===---
mov ax, 10
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:73:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:73:24 ===---
xor ax, ax
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:74:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:74:26 ===---
xor ax, ax
es mov [di+15], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:75:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:75:26 ===---
mov ax, 1
es mov [di+16], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:76:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:76:37 ===---
mov ax, 1
es mov [di+17], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:77:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:77:25 ===---
xor ax, ax
es mov [di+18], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:78:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:78:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:79:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:79:36 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:80:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:80:42 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:81:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:81:40 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:82:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:82:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:83:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:83:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:84:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:84:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:85:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:85:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:86:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:86:28 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:87:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:87:26 ===---
xor ax, ax
es mov [di+59], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:88:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:88:25 ===---
xor ax, ax
es mov [di+64], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:89:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:89:31 ===---
xor ax, ax
es mov [di+69], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:90:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:90:30 ===---
xor ax, ax
es mov [di+76], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:91:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:91:28 ===---
xor ax, ax
es mov [di+78], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:92:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:92:29 ===---
xor ax, ax
es mov [di+80], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:93:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:93:27 ===---
xor ax, ax
es mov [di+74], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:94:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:94:21 ===---
push cs
pop es
mov di, ROTULO828
jmp ROTULO827
ROTULO828:
db 0
times 1 db 0
ROTULO827:
push es
push di
push word [bp+6+2]
pop es
mov di, [bp+6]
es pop word [di+10]
es pop word [di+10+2]
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:95:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:95:22 ===---
xor ax, ax
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO826:
mov sp, bp
pop bp
FIM_control_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:98:9 ===---
_control_genericcontrolpaint:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:98:29 ===---
ROTULO829:
mov sp, bp
pop bp
FIM_control_genericcontrolpaint:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:101:9 ===---
_control_genericcontrolmouseinteraction:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:101:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:101:57 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:102:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:102:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:102:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:102:31 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
mov bx, ax
pop ax
or ax, bx
cmp ax, 0
jne ROTULO831
jmp ROTULO832
ROTULO831:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:103:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:103:33 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:103:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+39]
add sp, 8
ROTULO832:
ROTULO830:
mov sp, bp
pop bp
FIM_control_genericcontrolmouseinteraction:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:107:9 ===---
_control_genericcontrolkeyboardinteracion:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:107:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:107:59 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:108:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:108:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 5
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov ax, [di+5]
cmp ax, 0
jne ROTULO837
jmp ROTULO838
ROTULO837:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:109:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:109:36 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:109:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+43]
add sp, 8
jmp ROTULO839
ROTULO838:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:111:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:111:38 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:111:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+47]
add sp, 8
ROTULO839:
ROTULO836:
mov sp, bp
pop bp
FIM_control_genericcontrolkeyboardinteracion:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:115:9 ===---
_control_genericcontrolfocuschanged:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: focus TAM: 2 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:115:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:115:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:116:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:116:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
cmp ax, 0
jne ROTULO841
jmp ROTULO842
ROTULO841:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:117:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:117:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+51]
add sp, 4
jmp ROTULO843
ROTULO842:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:119:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:119:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+55]
add sp, 4
ROTULO843:
ROTULO840:
mov sp, bp
pop bp
FIM_control_genericcontrolfocuschanged:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:123:9 ===---
_control_genericonclick:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:123:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:123:41 ===---
ROTULO844:
mov sp, bp
pop bp
FIM_control_genericonclick:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:126:9 ===---
_control_genericonkeypress:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:126:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:126:44 ===---
ROTULO845:
mov sp, bp
pop bp
FIM_control_genericonkeypress:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:129:9 ===---
_control_genericonkeyrelease:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:129:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:129:46 ===---
ROTULO846:
mov sp, bp
pop bp
FIM_control_genericonkeyrelease:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:132:9 ===---
_control_genericonfocus:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:132:24 ===---
ROTULO847:
mov sp, bp
pop bp
FIM_control_genericonfocus:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:135:9 ===---
_control_genericonlostfocus:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:135:28 ===---
ROTULO848:
mov sp, bp
pop bp
FIM_control_genericonlostfocus:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:138:16 ===---
_control_setparent:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: parent TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:138:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:138:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:139:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:139:26 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+59], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:140:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:140:23 ===---
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
ROTULO849:
mov sp, bp
pop bp
FIM_control_setparent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:143:21 ===---
_control_getparent:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:143:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:144:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:144:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:144:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 59
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+59]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:144:30 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO853
jmp ROTULO854
ROTULO853:
mov ax, 65535
jmp ROTULO855
ROTULO854:
xor ax, ax
ROTULO855:
cmp ax, 0
jne ROTULO851
jmp ROTULO852
ROTULO851:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:144:43 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 144
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
ROTULO852:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:145:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:145:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
jmp ROTULO850
ROTULO850:
mov sp, bp
pop bp
FIM_control_getparent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:148:16 ===---
_control_add:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: child TAM: 4 POS: BP+10 
; ARG: tmp TAM: 4 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:148:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:148:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:149:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:150:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:150:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 64
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+64]
cmp ax, 0
jne ROTULO857
jmp ROTULO858
ROTULO857:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:151:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:151:21 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+67]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:152:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:152:21 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+65]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:153:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:153:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:154:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:154:22 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-4+2]
mov word [bp+6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:155:13 ===---
ROTULO859:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:155:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 69
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+69]
cmp ax, 0
jne ROTULO860
jmp ROTULO861
ROTULO860:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:156:18 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:156:25 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+72]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:157:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:157:25 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+70]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:158:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:158:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:159:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:159:26 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-4+2]
mov word [bp+6+2], ax
jmp ROTULO859
ROTULO861:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:161:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:161:35 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+69], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:162:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:162:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+10+2]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:163:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:163:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:164:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:164:32 ===---
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
jmp ROTULO862
ROTULO858:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:166:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:166:29 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+64], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:167:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:167:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+10+2]
mov word [bp+-4+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:168:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:168:21 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:169:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:169:26 ===---
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
ROTULO862:
ROTULO856:
mov sp, bp
pop bp
FIM_control_add:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:173:21 ===---
_control_count:
push bp
mov bp, sp
sub sp, 6
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: ret TAM: 2 POS: BP--2 
; ARG: ptr TAM: 4 POS: BP--6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:173:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:174:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:175:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:176:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:177:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:177:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 64
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+64]
cmp ax, 0
jne ROTULO864
jmp ROTULO865
ROTULO864:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:178:13 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:179:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:179:21 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+67]
mov word [bp+-6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:180:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:180:21 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+65]
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:181:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:181:22 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-6+2]
mov word [bp+6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:182:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:182:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:183:13 ===---
ROTULO866:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:183:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 69
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+69]
cmp ax, 0
jne ROTULO867
jmp ROTULO868
ROTULO867:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:184:17 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:185:18 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:185:25 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+72]
mov word [bp+-6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:186:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:186:25 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+70]
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:187:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:187:26 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-6+2]
mov word [bp+6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:188:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:188:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov [bp+6], ax
jmp ROTULO866
ROTULO868:
ROTULO865:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:191:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:191:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO863
ROTULO863:
mov sp, bp
pop bp
FIM_control_count:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:194:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:194:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:194:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:195:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:196:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:197:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:198:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:198:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 64
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+64]
cmp ax, 0
jne ROTULO870
jmp ROTULO871
ROTULO870:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:199:13 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:200:14 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:200:21 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+67]
mov word [bp+-6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:201:14 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:201:21 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+65]
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:202:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:202:22 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-6+2]
mov word [bp+6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:203:14 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:203:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:204:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:204:18 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:204:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:204:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO874
jmp ROTULO875
ROTULO874:
mov ax, 65535
jmp ROTULO876
ROTULO875:
xor ax, ax
ROTULO876:
cmp ax, 0
jne ROTULO872
jmp ROTULO873
ROTULO872:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:204:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:204:42 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-6+2]
pop es
mov di, [bp+-6]
jmp ROTULO869
ROTULO873:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:205:13 ===---
ROTULO877:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:205:19 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 69
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+69]
cmp ax, 0
jne ROTULO878
jmp ROTULO879
ROTULO878:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:206:17 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:207:18 ===---
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:207:25 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
es mov ax, [di+72]
mov word [bp+-6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:208:18 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:208:25 ===---
; ACAO STRUCTURE - Leitura de Desvio de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+70]
mov [bp+-6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:209:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava segmento em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:209:26 ===---
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-6+2]
mov word [bp+6+2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:210:18 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:210:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-6]
mov [bp+6], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:211:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:211:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:211:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:211:25 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
mov bx, ax
pop ax
cmp ax, bx
je ROTULO882
jmp ROTULO883
ROTULO882:
mov ax, 65535
jmp ROTULO884
ROTULO883:
xor ax, ax
ROTULO884:
cmp ax, 0
jne ROTULO880
jmp ROTULO881
ROTULO880:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:211:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:211:46 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-6+2]
pop es
mov di, [bp+-6]
jmp ROTULO869
ROTULO881:
jmp ROTULO877
ROTULO879:
ROTULO871:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:214:15 ===---
mov ax, _control
mov [bp+-8], ax
mov ax, 214
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
ROTULO869:
mov sp, bp
pop bp
FIM_control_item:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:217:16 ===---
_control_redraw:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:217:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:218:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:218:9 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+23]
add sp, 4
ROTULO885:
mov sp, bp
pop bp
FIM_control_redraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:221:16 ===---
_control_settext:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: txt TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:221:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:221:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:222:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:222:21 ===---
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
ROTULO886:
mov sp, bp
pop bp
FIM_control_settext:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:225:21 ===---
_control_gettext:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:225:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:226:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:226:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 10
push word [bp+6+2]
pop es
mov di, [bp+6]
es push word [di+10+2]
es push word [di+10]
pop di
pop es
jmp ROTULO887
ROTULO887:
mov sp, bp
pop bp
FIM_control_gettext:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:229:9 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:229:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:230:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:231:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:232:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:233:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:233:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:233:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:234:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:234:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
cmp ax, 0
jne ROTULO889
jmp ROTULO890
ROTULO889:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:235:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:235:26 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 1
ROTULO891:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:235:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:235:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:235:26 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO894
jmp ROTULO895
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:236:17 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:236:25 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:236:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:236:38 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:237:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:237:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:237:67 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:237:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:237:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:237:32 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:238:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:238:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:238:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:238:50 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:238:52 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:238:32 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:239:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:239:78 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:239:80 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:239:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:239:67 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:239:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:239:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:239:32 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:240:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:240:75 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:240:77 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:240:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:240:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:240:50 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:240:52 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:240:32 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:241:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:241:37 ===---
mov ax, 1
es mov [di+94], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:242:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:242:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:242:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:242:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:242:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 80
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+80]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:242:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:242:50 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:242:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO899
jmp ROTULO900
ROTULO899:
mov ax, 65535
jmp ROTULO901
ROTULO900:
xor ax, ax
ROTULO901:
cmp ax, 0
jne ROTULO897
jmp ROTULO898
ROTULO897:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:243:21 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:243:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:243:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 80
es mov ax, [di+80]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:243:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:243:50 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:243:36 ===---
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
ROTULO898:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:245:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:245:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:245:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:245:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:245:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+76]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:245:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:245:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:245:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
add ax, bx
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO904
jmp ROTULO905
ROTULO904:
mov ax, 65535
jmp ROTULO906
ROTULO905:
xor ax, ax
ROTULO906:
cmp ax, 0
jne ROTULO902
jmp ROTULO903
ROTULO902:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:246:21 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:246:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:246:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
es mov ax, [di+76]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:246:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:246:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:246:36 ===---
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
ROTULO903:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:248:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:248:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:248:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+82]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:248:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:248:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 80
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+80]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:248:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:248:50 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 6
es mov ax, [di+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:248:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 2
es mov ax, [di+2]
pop bx
add ax, bx
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO909
jmp ROTULO910
ROTULO909:
mov ax, 65535
jmp ROTULO911
ROTULO910:
xor ax, ax
ROTULO911:
cmp ax, 0
jne ROTULO907
jmp ROTULO908
ROTULO907:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:249:21 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:249:41 ===---
xor ax, ax
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov [di+94], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO908:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:251:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:251:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:251:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:251:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:251:65 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 76
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+76]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:251:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:251:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 4
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:251:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
es mov ax, [di+0]
pop bx
add ax, bx
pop bx
sub ax, bx
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO914
jmp ROTULO915
ROTULO914:
mov ax, 65535
jmp ROTULO916
ROTULO915:
xor ax, ax
ROTULO916:
cmp ax, 0
jne ROTULO912
jmp ROTULO913
ROTULO912:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:252:21 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:252:41 ===---
xor ax, ax
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov [di+94], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO913:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:254:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:254:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:254:50 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+82]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:254:35 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
es mov [di+90], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:255:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:255:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:255:51 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:255:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
es mov ax, [di+88]
pop bx
sub ax, bx
es mov [di+92], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:256:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:256:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:256:38 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:256:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 94
es mov ax, [di+94]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:256:41 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO922
jmp ROTULO923
ROTULO922:
mov ax, 65535
jmp ROTULO924
ROTULO923:
xor ax, ax
ROTULO924:
cmp ax, 0
je ROTULO920
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:256:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:256:51 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 14
xor ax, ax
es mov al, [di+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:256:68 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO925
jmp ROTULO926
ROTULO925:
mov ax, 65535
jmp ROTULO927
ROTULO926:
xor ax, ax
ROTULO927:
cmp ax, 0
je ROTULO920
ROTULO919:
mov ax, 65535
jmp ROTULO921
ROTULO920:
xor ax, ax
ROTULO921:
cmp ax, 0
jne ROTULO917
jmp ROTULO918
ROTULO917:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:257:21 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:257:28 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO918:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:235:26 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-2]
jmp ROTULO891
ROTULO893:
ROTULO890:
ROTULO888:
mov sp, bp
pop bp
FIM_control_drawchildren:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:263:16 ===---
_control_focus:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: old TAM: 4 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:263:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:264:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:265:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:265:15 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_application_currentfocus+2]
pop es
cs mov di, [_application_currentfocus]
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:266:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:266:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:266:13 ===---
; ACAO STRUCTURE - Define Segmento/desvio de estrutura
; ACAO LEITURA - Le segmento em variavel
mov ax, [bp+-4+2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:266:20 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO931
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:267:13 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:267:29 ===---
xor ax, ax
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+18], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:268:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:268:45 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:268:13 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
es call far [di+35]
add sp, 6
ROTULO930:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:270:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:270:36 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
cs pop word [_application_currentfocus+2]
cs mov [_application_currentfocus], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:271:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:271:25 ===---
mov ax, 1
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+18], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:272:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:272:41 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:272:9 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
es call far [di+35]
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:273:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:273:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 17
xor ax, ax
es mov al, [di+17]
cmp ax, 0
jne ROTULO934
jmp ROTULO935
ROTULO934:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:273:43 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:273:50 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _control_redraw
add sp, 4
ROTULO935:
ROTULO928:
mov sp, bp
pop bp
FIM_control_focus:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:276:16 ===---
_control_processkeyboard:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:276:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:276:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:277:9 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:277:47 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:277:9 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+31]
add sp, 8
ROTULO936:
mov sp, bp
pop bp
FIM_control_processkeyboard:
retf
; MODULO FIM: control
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:282:8 ===---
; MODULO: screen
_screen:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:283:16 ===---
_screen_screencontrol:
times 100 db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:285:16 ===---
_screen_initialize:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:286:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:286:28 ===---
; ACAO LEITURA - Le ponteiro
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
push es
push di
push cs
call _control_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:287:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:287:29 ===---
xor ax, ax
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:288:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:288:30 ===---
xor ax, ax
es mov [di+2], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:289:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:289:31 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _graphics_getwidth
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:290:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:290:32 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _graphics_getheight
cs push word [_screen_screencontrol+2]
pop es
cs mov di, [_screen_screencontrol]
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:291:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:291:33 ===---
mov ax, 1
es mov [di+14], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:292:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:292:38 ===---
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
ROTULO937:
FIM_screen_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:295:9 ===---
_screen_controlpaint:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:295:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:296:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:296:30 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_backgroundcolor
push ax
push cs
call _graphics_clearscreen
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:297:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:297:30 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_drawchildren
add sp, 4
ROTULO938:
mov sp, bp
pop bp
FIM_screen_controlpaint:
retf
; MODULO FIM: screen
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:354:8 ===---
; MODULO: form
_form:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:355:16 ===---
_form_initialize:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:355:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:356:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:356:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:357:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:357:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:358:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:358:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:359:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:359:30 ===---
mov ax, 2
es mov [di+76], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:360:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:360:28 ===---
mov ax, 2
es mov [di+78], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:361:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:361:29 ===---
mov ax, 2
es mov [di+80], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO939:
mov sp, bp
pop bp
FIM_form_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:364:9 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:364:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:365:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:366:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:370:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:367:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:367:40 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
cs pop word [_application_currentfocusform+2]
cs mov [_application_currentfocusform], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:368:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:368:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:368:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:369:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:369:22 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-4], 1
ROTULO941:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:369:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:369:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:369:22 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
mov bx, ax
pop ax
cmp ax, bx
jbe ROTULO944
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:371:13 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:371:21 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:371:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:371:34 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:372:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:372:16 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 16
xor ax, ax
es mov al, [di+16]
cmp ax, 0
jne ROTULO947
jmp ROTULO948
ROTULO947:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:373:17 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:373:31 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _control_focus
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:374:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:374:22 ===---
xor ax, ax
jmp ROTULO940
ROTULO948:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:369:22 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-4]
jmp ROTULO941
ROTULO943:
ROTULO940:
mov sp, bp
pop bp
FIM_form_onfocus:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:379:9 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:379:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:380:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:381:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:382:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:383:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:384:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:385:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 4
push ss
pop es
mov di, sp
push es
pop word [bp+-8+2]
mov [bp+-8], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:386:9 ===---
; ACAO GRAVACAO - Gravacao em ponteiro
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:386:15 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:387:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:387:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:387:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 92
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+92]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:387:30 ===---
mov ax, 30
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO952
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:387:44 ===---
mov ax, _form
mov [bp+-8], ax
mov ax, 387
mov [bp+-10], ax
mov ax, 4
cs jmp word [_os_trycode]
ROTULO951:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:388:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:388:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:388:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 90
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+90]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:388:29 ===---
mov ax, 50
mov bx, ax
pop ax
cmp ax, bx
jb ROTULO957
jmp ROTULO958
ROTULO957:
mov ax, 65535
jmp ROTULO959
ROTULO958:
xor ax, ax
ROTULO959:
cmp ax, 0
jne ROTULO955
jmp ROTULO956
ROTULO955:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:388:43 ===---
mov ax, _form
mov [bp+-8], ax
mov ax, 388
mov [bp+-10], ax
mov ax, 4
cs jmp word [_os_trycode]
ROTULO956:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:389:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:389:118 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:389:84 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:389:71 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:389:58 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:389:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:389:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:390:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:390:105 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:390:92 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:390:93 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:390:90 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:390:91 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:390:79 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:390:66 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:390:53 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:390:54 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:390:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:390:52 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:390:40 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:390:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:391:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:391:74 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:391:68 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:391:70 ===---
mov ax, 50
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:391:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 90
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+90]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:391:47 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-8+2]
pop es
mov di, [bp+-8]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:391:36 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:391:31 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push cs
call _graphics_calcfontsize
add sp, 16
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:392:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:392:32 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:392:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:392:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:392:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:392:36 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 90
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+90]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:392:69 ===---
mov ax, 1
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:392:20 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
mov [bp+-10], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:393:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:393:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:393:66 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:393:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:393:54 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+-8+2]
pop es
mov di, [bp+-8]
es mov ax, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:393:37 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 90
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+90]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:393:70 ===---
mov ax, 1
mov cx, ax
pop ax
shr ax, cl
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:393:21 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
mov [bp+-12], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:138 ===---
xor ax, ax
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:105 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowtitlecolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:92 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:93 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:90 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:91 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:79 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:68 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:64 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:65 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:53 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:43 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 10
es push word [di+10+2]
es push word [di+10]
pop di
pop es
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:394:27 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+-4+2]
pop es
mov di, [bp+-4]
push es
push di
push cs
call _graphics_drawtext
add sp, 20
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:395:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:395:63 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:395:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:395:31 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:395:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+84]
pop bx
add ax, bx
mov [bp+-14], ax
ROTULO960:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:395:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:395:63 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:395:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:395:63 ===---
mov ax, 3
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:395:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:395:50 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:395:36 ===---
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
jbe ROTULO963
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:396:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:396:71 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:396:68 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:396:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:396:65 ===---
mov ax, 3
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:396:51 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+82]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:396:48 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:396:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:396:45 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:396:31 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:397:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:397:69 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:397:66 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:397:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:397:63 ===---
mov ax, 5
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:397:52 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-10]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:397:49 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:397:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:397:45 ===---
mov ax, 13
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:397:31 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:398:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:398:69 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:398:66 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:398:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:398:63 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:398:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:398:46 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:398:41 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:398:43 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:398:31 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-12]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:399:13 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:395:63 ===---
; ACAO INC - Incrementa variavel
inc word [bp+-14]
jmp ROTULO960
ROTULO962:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:146 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:113 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:109 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:110 ===---
mov ax, 3
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:96 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:98 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:84 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:78 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:80 ===---
mov ax, 11
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:66 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:63 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:46 ===---
mov ax, 5
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:401:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:402:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:402:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:402:31 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 12
push word [bp+-4+2]
pop es
mov di, [bp+-4]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:402:27 ===---
mov ax, 2
pop bx
add ax, bx
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+74], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:403:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:403:30 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
push cs
call _control_drawchildren
add sp, 4
ROTULO949:
mov sp, bp
pop bp
FIM_form_controlpaint:
retf
; MODULO FIM: form
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:341:8 ===---
; MODULO: label
_label:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:342:16 ===---
_label_initialize:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:342:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:343:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:343:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:344:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:344:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:345:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:345:26 ===---
xor ax, ax
es mov [di+16], al
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
ROTULO966:
mov sp, bp
pop bp
FIM_label_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:348:9 ===---
_label_controlpaint:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:348:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:349:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:349:112 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:349:84 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:349:71 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:349:58 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:349:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:349:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:350:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:350:127 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:350:101 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_textcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:350:88 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:350:75 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:350:62 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:350:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:350:38 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 10
es push word [di+10+2]
es push word [di+10]
pop di
pop es
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:350:27 ===---
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
ROTULO967:
mov sp, bp
pop bp
FIM_label_controlpaint:
retf
; MODULO FIM: label
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:301:8 ===---
; MODULO: button
_button:
db 16
db 83,121,115,116,101,109,46,70,111,114,109,115,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:302:16 ===---
_button_initialize:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:302:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:303:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:303:28 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _control_initialize
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:304:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:304:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:305:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:305:42 ===---
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
ROTULO968:
mov sp, bp
pop bp
FIM_button_initialize:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:308:9 ===---
_button_controlkeyboardinteracion:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: ctrl TAM: 4 POS: BP+6 
; ARG: e TAM: 4 POS: BP+10 
; ARG: mouse TAM: 4 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:308:35 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:308:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:312:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:309:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:309:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 5
push word [bp+10+2]
pop es
mov di, [bp+10]
es mov ax, [di+5]
cmp ax, 0
jne ROTULO970
jmp ROTULO971
ROTULO970:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:310:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:310:36 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:310:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+43]
add sp, 8
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:311:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:311:63 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:311:36 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:311:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:311:17 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:311:32 ===---
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
je ROTULO980
jmp ROTULO981
ROTULO980:
mov ax, 65535
jmp ROTULO982
ROTULO981:
xor ax, ax
ROTULO982:
cmp ax, 0
jne ROTULO977
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:311:56 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:311:44 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:311:59 ===---
mov ax, 10
mov bx, ax
pop ax
cmp ax, bx
je ROTULO983
jmp ROTULO984
ROTULO983:
mov ax, 65535
jmp ROTULO985
ROTULO984:
xor ax, ax
ROTULO985:
cmp ax, 0
je ROTULO978
ROTULO977:
mov ax, 65535
jmp ROTULO979
ROTULO978:
xor ax, ax
ROTULO979:
cmp ax, 0
jne ROTULO974
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:311:83 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:311:71 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 0
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:311:86 ===---
mov ax, 32
mov bx, ax
pop ax
cmp ax, bx
je ROTULO986
jmp ROTULO987
ROTULO986:
mov ax, 65535
jmp ROTULO988
ROTULO987:
xor ax, ax
ROTULO988:
cmp ax, 0
je ROTULO975
ROTULO974:
mov ax, 65535
jmp ROTULO976
ROTULO975:
xor ax, ax
ROTULO976:
cmp ax, 0
jne ROTULO972
jmp ROTULO973
ROTULO972:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:313:17 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 12
push ss
pop es
mov di, sp
push es
pop word [bp+-4+2]
mov [bp+-4], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:314:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:314:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:315:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:315:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:316:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:316:39 ===---
mov ax, 1
es mov [di+4], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:317:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:317:41 ===---
xor ax, ax
es mov [di+6], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:318:17 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:318:37 ===---
xor ax, ax
es mov [di+8], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:319:17 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:319:37 ===---
; ACAO LEITURA - Le ponteiro
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:319:17 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+39]
add sp, 8
ROTULO973:
jmp ROTULO989
ROTULO971:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:322:13 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:322:38 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:322:13 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+47]
add sp, 8
ROTULO989:
ROTULO969:
mov sp, bp
pop bp
FIM_button_controlkeyboardinteracion:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:326:9 ===---
_button_controlpaint:
push bp
mov bp, sp
; ARG: ctrl TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:326:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:327:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:327:112 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:327:84 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:327:71 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:327:58 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:327:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:327:32 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
push cs
call _graphics_drawrectangle
add sp, 12
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:12 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int8 - Desvio 18
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+18]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:29 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO993
jmp ROTULO994
ROTULO993:
mov ax, 65535
jmp ROTULO995
ROTULO994:
xor ax, ax
ROTULO995:
cmp ax, 0
jne ROTULO991
jmp ROTULO992
ROTULO991:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:36 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:122 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:117 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:119 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:105 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:100 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:102 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:88 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:83 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:85 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:71 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:66 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:68 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:328:54 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
ROTULO992:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:329:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:329:87 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:329:74 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:329:69 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:329:71 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:329:57 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:329:44 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:329:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:329:41 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:329:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:330:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:330:87 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:330:74 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:330:69 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:330:71 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:330:57 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:330:44 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
es mov ax, [di+88]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:330:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:330:41 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:330:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:331:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:331:87 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:331:82 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:331:84 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:331:70 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:331:57 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:331:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:331:54 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:331:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:331:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:332:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:332:87 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:332:82 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:332:84 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:332:70 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:332:57 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:332:52 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:332:54 ===---
mov ax, 2
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:332:40 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:332:27 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
push ax
push cs
call _graphics_drawline
add sp, 10
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:333:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:333:62 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:333:57 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:333:59 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:333:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:333:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:333:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:333:28 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:334:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:334:62 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:334:57 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:334:59 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:334:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:334:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:334:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:334:28 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:335:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:335:62 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:335:57 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:335:59 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:335:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:335:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:335:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:335:28 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:336:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:336:62 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_windowbordercolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:336:57 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:336:59 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:336:45 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:336:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:336:42 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:336:28 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
push cs
call _graphics_drawpixel
add sp, 6
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:143 ===---
mov ax, 1
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:117 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _systemcolors_textcolor
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:112 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:114 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:100 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 88
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+88]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:95 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:97 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:83 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 86
es mov ax, [di+86]
pop bx
sub ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:78 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:80 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:66 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 84
es mov ax, [di+84]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:61 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:63 ===---
mov ax, 4
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:49 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 82
es mov ax, [di+82]
pop bx
add ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:38 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - Ponteiro Byte - Desvio 10
es push word [di+10+2]
es push word [di+10]
pop di
pop es
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.Forms.hcb:337:27 ===---
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
ROTULO990:
mov sp, bp
pop bp
FIM_button_controlpaint:
retf
; MODULO FIM: button
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:310:8 ===---
; MODULO: console
_console:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:311:21 ===---
_console_avail:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:312:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:312:16 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_consoleavail
jmp ROTULO996
ROTULO996:
FIM_console_avail:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:315:21 ===---
_console_readchar:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:316:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:316:16 ===---
; ACAO CHAMADA - Chama rotina
push cs
call _os_consolereadchar
jmp ROTULO997
ROTULO997:
FIM_console_readchar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:319:16 ===---
_console_readline:
push bp
mov bp, sp
sub sp, 6
push cs
call _os_stackcheck
; ARG: txt TAM: 4 POS: BP+6 
; ARG: len TAM: 2 POS: BP--2 
; ARG: stdin TAM: 4 POS: BP--6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:319:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:320:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:321:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:322:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:322:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:323:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:324:9 ===---
; ACAO STRUCTURE - Aloca estrutura na pilha
sub sp, 34
push ss
pop es
mov di, sp
push es
pop word [bp+-6+2]
mov [bp+-6], di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:325:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:325:20 ===---
xor ax, ax
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:326:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:326:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:326:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:326:35 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:326:28 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:327:9 ===---
ROTULO999:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:327:37 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:327:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:327:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:327:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:327:21 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO1008
jmp ROTULO1009
ROTULO1008:
mov ax, 65535
jmp ROTULO1010
ROTULO1009:
xor ax, ax
ROTULO1010:
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:327:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:327:27 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:327:34 ===---
mov ax, 13
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO1011
jmp ROTULO1012
ROTULO1011:
mov ax, 65535
jmp ROTULO1013
ROTULO1012:
xor ax, ax
ROTULO1013:
mov bx, ax
pop ax
and ax, bx
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:327:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:327:41 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:327:48 ===---
mov ax, 10
mov bx, ax
pop ax
cmp ax, bx
jne ROTULO1014
jmp ROTULO1015
ROTULO1014:
mov ax, 65535
jmp ROTULO1016
ROTULO1015:
xor ax, ax
ROTULO1016:
mov bx, ax
pop ax
and ax, bx
cmp ax, 0
jne ROTULO1000
jmp ROTULO1001
ROTULO1000:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:328:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
inc di
jmp ROTULO999
ROTULO1001:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:330:9 ===---
; ACAO GRAVACAO - Gravacao de numero em ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov byte [di+0], 0
ROTULO998:
mov sp, bp
pop bp
FIM_console_readline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:333:16 ===---
_console_writechar:
push bp
mov bp, sp
; ARG: c TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:333:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:334:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:334:29 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
xor ah, ah
push ax
push cs
call _os_consolewritechar
add sp, 2
ROTULO1017:
mov sp, bp
pop bp
FIM_console_writechar:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:337:16 ===---
_console_write:
push bp
mov bp, sp
; ARG: txt TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:337:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:339:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:340:9 ===---
ROTULO1019:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:340:19 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:340:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
xor ax, ax
es mov al, [di+0]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:340:21 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO1022
jmp ROTULO1023
ROTULO1022:
mov ax, 65535
jmp ROTULO1024
ROTULO1023:
xor ax, ax
ROTULO1024:
cmp ax, 0
jne ROTULO1020
jmp ROTULO1021
ROTULO1020:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:341:13 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:341:23 ===---
; ACAO LEITURA - Le ponteiro
xor ax, ax
es mov al, [di+0]
xor ah, ah
push ax
push cs
call _console_writechar
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:342:14 ===---
; ACAO INC - Incrementa variavel
inc word [bp+6]
jmp ROTULO1019
ROTULO1021:
ROTULO1018:
mov sp, bp
pop bp
FIM_console_write:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:346:16 ===---
_console_writeline:
push bp
mov bp, sp
; ARG: txt TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:346:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:347:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:347:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _console_write
add sp, 4
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:348:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:348:19 ===---
mov ax, 13
xor ah, ah
push ax
push cs
call _console_writechar
add sp, 2
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:349:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:349:19 ===---
mov ax, 10
xor ah, ah
push ax
push cs
call _console_writechar
add sp, 2
ROTULO1025:
mov sp, bp
pop bp
FIM_console_writeline:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:352:16 ===---
_console_writeuint16:
push bp
mov bp, sp
sub sp, 4
push cs
call _os_stackcheck
; ARG: nro TAM: 2 POS: BP+6 
; ARG: tmp TAM: 2 POS: BP--2 
; ARG: prox TAM: 2 POS: BP--4 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:352:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:353:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:354:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:355:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:355:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:355:19 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:355:27 ===---
mov ax, 10
cmp ax, 0
jne ROTULO1027
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:355:27 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 355
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO1027:
mov bx, ax
pop ax
xor dx, dx
div bx
mov ax, dx
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:356:13 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:356:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:356:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:356:26 ===---
mov ax, 10
cmp ax, 0
jne ROTULO1028
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:356:26 ===---
mov ax, _console
mov [bp+-8], ax
mov ax, 356
mov [bp+-10], ax
mov ax, 1
cs jmp word [_os_trycode]
ROTULO1028:
mov bx, ax
pop ax
xor dx, dx
div bx
mov [bp+-4], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:357:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:357:17 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:357:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:357:19 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
ja ROTULO1031
jmp ROTULO1032
ROTULO1031:
mov ax, 65535
jmp ROTULO1033
ROTULO1032:
xor ax, ax
ROTULO1033:
cmp ax, 0
jne ROTULO1029
jmp ROTULO1030
ROTULO1029:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:357:26 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:357:38 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-4]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO1030:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:358:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:358:22 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:358:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:358:19 ===---
mov ax, 48
pop bx
add ax, bx
xor ah, ah
push ax
push cs
call _console_writechar
add sp, 2
ROTULO1026:
mov sp, bp
pop bp
FIM_console_writeuint16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:361:16 ===---
_console_writeint16:
push bp
mov bp, sp
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:361:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:362:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:362:16 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:362:12 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:362:18 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
jl ROTULO1037
jmp ROTULO1038
ROTULO1037:
mov ax, 65535
jmp ROTULO1039
ROTULO1038:
xor ax, ax
ROTULO1039:
cmp ax, 0
jne ROTULO1035
jmp ROTULO1036
ROTULO1035:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:363:17 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:363:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:363:24 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:363:23 ===---
xor ax, ax
pop bx
sub ax, bx
mov [bp+6], ax
ROTULO1036:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:365:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:365:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO1034:
mov sp, bp
pop bp
FIM_console_writeint16:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:368:16 ===---
_console_writeuint8:
push bp
mov bp, sp
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:368:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:369:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:369:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeuint16
add sp, 2
ROTULO1040:
mov sp, bp
pop bp
FIM_console_writeuint8:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:372:16 ===---
_console_writeint8:
push bp
mov bp, sp
; ARG: nro TAM: 2 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:372:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:373:9 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:373:20 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+6]
push ax
push cs
call _console_writeint16
add sp, 2
ROTULO1041:
mov sp, bp
pop bp
FIM_console_writeint8:
retf
; MODULO FIM: console
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:166:8 ===---
; MODULO: file
_file:
db 13
db 83,121,115,116,101,109,46,79,83,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:167:21 ===---
_file_open:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: filename TAM: 4 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:167:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:167:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:168:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:169:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:170:13 ===---
mov ax, 0x3d02
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:171:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:172:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:173:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:174:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:175:13 ===---
inc dx
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:176:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:177:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:178:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:179:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:180:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:181:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:182:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 182
mov [bp+-10], ax
mov ax, 5
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:183:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:184:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:184:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:185:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:185:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:186:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:186:26 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:187:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:187:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:188:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:188:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:189:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:189:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:190:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:190:30 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:191:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:191:26 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:192:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:192:28 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:193:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:193:16 ===---
mov ax, 1
jmp ROTULO1042
ROTULO1042:
mov sp, bp
pop bp
FIM_file_open:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:196:21 ===---
_file_create:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: filename TAM: 4 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:196:28 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:196:46 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:197:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:198:9 ===---
; ACAO GRAVACAO - Grava em variavel
mov word [bp+-2], 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:199:13 ===---
mov ax, 0x3c00
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:200:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:201:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:202:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:203:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:204:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:205:13 ===---
inc dx
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:206:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:207:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:208:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:209:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:210:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:211:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:212:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 212
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:213:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:214:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:214:21 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov [di+0], ax
; ACAO STRUCTURE - Gravacao de Ponteiro - Fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:215:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:215:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:216:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:216:26 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:217:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:217:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:218:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:218:27 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:219:9 ===---
; ACAO STRUCTURE - Gravacao de Ponteiro- Prepara
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:219:24 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:220:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:220:16 ===---
mov ax, 1
jmp ROTULO1043
ROTULO1043:
mov sp, bp
pop bp
FIM_file_create:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:223:21 ===---
_file_read:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:223:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:223:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:224:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:225:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:225:15 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
xor ax, ax
es mov al, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:226:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
inc di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:227:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:227:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:227:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:227:31 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:227:23 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:228:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:228:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO1044
ROTULO1044:
mov sp, bp
pop bp
FIM_file_read:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:231:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:231:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:231:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:231:69 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:232:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:233:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:233:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:234:13 ===---
mov ax, 0x3f00
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:235:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:236:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:237:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:238:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:239:13 ===---
mov cx, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:240:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:241:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:242:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:243:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:244:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:245:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:246:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:247:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 247
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:248:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:249:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:249:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO1045
ROTULO1045:
mov sp, bp
pop bp
FIM_file_readraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:252:21 ===---
_file_write:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: text TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:252:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:252:45 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:253:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:254:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:254:15 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:254:29 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:255:10 ===---
; ACAO INC - Incrementa variavel
inc word [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:256:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:256:16 ===---
; ACAO CHAMADA - Chama rotina
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:256:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:256:33 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:256:25 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
push cs
call _file_writeraw
add sp, 10
jmp ROTULO1046
ROTULO1046:
mov sp, bp
pop bp
FIM_file_write:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:259:21 ===---
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:259:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:259:48 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:259:70 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:260:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:261:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:261:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:262:13 ===---
mov ax, 0x4000
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:263:13 ===---
push ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:264:13 ===---
push word [bp+12]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:265:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:266:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:267:13 ===---
mov cx, [bp+14]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:268:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:269:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:270:13 ===---
pushf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:271:13 ===---
mov [bp-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:272:13 ===---
popf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:273:13 ===---
pop ds
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:274:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:275:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 275
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:276:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:277:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:277:16 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+-2]
jmp ROTULO1047
ROTULO1047:
mov sp, bp
pop bp
FIM_file_writeraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:280:21 ===---
_file_close:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:280:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:281:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:282:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:282:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:283:13 ===---
mov ax, 0x3e00
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:284:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:285:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:286:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:287:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 287
mov [bp+-10], ax
mov ax, 8
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:288:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:289:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:289:16 ===---
mov ax, 1
jmp ROTULO1048
ROTULO1048:
mov sp, bp
pop bp
FIM_file_close:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:292:21 ===---
_file_seekstart:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:292:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:292:49 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:293:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:294:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:294:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:295:13 ===---
mov ax, 0x4200
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:296:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:297:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:298:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:299:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:300:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:301:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 301
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:302:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:303:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:303:16 ===---
mov ax, 1
jmp ROTULO1049
ROTULO1049:
mov sp, bp
pop bp
FIM_file_seekstart:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:306:21 ===---
_file_seekcurrent:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:306:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:306:51 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:307:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:308:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:308:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:309:13 ===---
mov ax, 0x4201
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:310:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:311:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:312:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:313:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:314:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:315:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 315
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:316:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:317:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:317:16 ===---
mov ax, 1
jmp ROTULO1050
ROTULO1050:
mov sp, bp
pop bp
FIM_file_seekcurrent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:320:21 ===---
_file_seekend:
push bp
mov bp, sp
sub sp, 2
push cs
call _os_stackcheck
; ARG: stream TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
; ARG: id TAM: 2 POS: BP--2 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:320:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:320:47 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:321:13 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:322:9 ===---
; ACAO GRAVACAO - Grava em variavel
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:322:14 ===---
; ACAO STRUCTURE - Leitura de Ponteiro - (U)Int16 - Desvio 0
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+0]
mov [bp+-2], ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:323:13 ===---
mov ax, 0x4202
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:324:13 ===---
mov bx, [bp-2]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:325:13 ===---
xor cx, cx
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:326:13 ===---
mov dx, [bp+10]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:327:13 ===---
int 0x21
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:328:13 ===---
jnc .fim
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:329:15 ===---
mov ax, _file
mov [bp+-8], ax
mov ax, 329
mov [bp+-10], ax
mov ax, 13
cs jmp word [_os_trycode]
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:330:13 ===---
.fim:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:331:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086-DOS/System.OS.hcb:331:16 ===---
mov ax, 1
jmp ROTULO1051
ROTULO1051:
mov sp, bp
pop bp
FIM_file_seekend:
retf
; MODULO FIM: file
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:263:8 ===---
; MODULO: stream
_stream:
db 10
db 83,121,115,116,101,109,46,104,99,98
db 0
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:265:21 ===---
_stream_readraw:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
; ARG: data TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP+14 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:265:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:265:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:265:64 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:266:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:266:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:266:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+4]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:266:26 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1055
jmp ROTULO1056
ROTULO1055:
mov ax, 65535
jmp ROTULO1057
ROTULO1056:
xor ax, ax
ROTULO1057:
cmp ax, 0
jne ROTULO1053
jmp ROTULO1054
ROTULO1053:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:266:39 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 266
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1054:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:267:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:267:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:267:39 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:267:33 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:267:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+2]
add sp, 10
jmp ROTULO1052
ROTULO1052:
mov sp, bp
pop bp
FIM_stream_readraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:270:21 ===---
_stream_read:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
; ARG: data TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:270:26 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:270:39 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:271:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:271:20 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:271:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+8]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:271:23 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1061
jmp ROTULO1062
ROTULO1061:
mov ax, 65535
jmp ROTULO1063
ROTULO1062:
xor ax, ax
ROTULO1063:
cmp ax, 0
jne ROTULO1059
jmp ROTULO1060
ROTULO1059:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:271:36 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 271
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1060:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:272:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:272:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:272:30 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:272:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+6]
add sp, 8
jmp ROTULO1058
ROTULO1058:
mov sp, bp
pop bp
FIM_stream_read:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:275:21 ===---
_stream_writeraw:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
; ARG: data TAM: 4 POS: BP+10 
; ARG: len TAM: 2 POS: BP+14 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:275:30 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:275:43 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:275:65 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:276:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:276:24 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:276:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+12]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:276:27 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1067
jmp ROTULO1068
ROTULO1067:
mov ax, 65535
jmp ROTULO1069
ROTULO1068:
xor ax, ax
ROTULO1069:
cmp ax, 0
jne ROTULO1065
jmp ROTULO1066
ROTULO1065:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:276:40 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 276
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1066:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:277:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:277:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:277:40 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+14]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:277:34 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:277:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+10]
add sp, 10
jmp ROTULO1064
ROTULO1064:
mov sp, bp
pop bp
FIM_stream_writeraw:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:280:21 ===---
_stream_write:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
; ARG: data TAM: 4 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:280:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:280:40 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:281:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:281:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:281:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+16]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:281:24 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1073
jmp ROTULO1074
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
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:281:37 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 281
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1072:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:282:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:282:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:282:31 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+10+2]
pop es
mov di, [bp+10]
push es
push di
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:282:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+14]
add sp, 8
jmp ROTULO1070
ROTULO1070:
mov sp, bp
pop bp
FIM_stream_write:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:285:21 ===---
_stream_close:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:285:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:286:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:286:21 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:286:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+20]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:286:24 ===---
xor ax, ax
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
jne ROTULO1077
jmp ROTULO1078
ROTULO1077:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:286:37 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 286
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1078:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:287:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:287:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:287:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+18]
add sp, 4
jmp ROTULO1076
ROTULO1076:
mov sp, bp
pop bp
FIM_stream_close:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:290:21 ===---
_stream_seekcurrent:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
; ARG: position TAM: 2 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:290:33 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:290:46 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:291:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:291:27 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:291:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+24]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:291:30 ===---
xor ax, ax
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
jne ROTULO1083
jmp ROTULO1084
ROTULO1083:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:291:43 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 291
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1084:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:292:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:292:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:292:37 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:292:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+22]
add sp, 6
jmp ROTULO1082
ROTULO1082:
mov sp, bp
pop bp
FIM_stream_seekcurrent:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:295:21 ===---
_stream_seekend:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
; ARG: pos TAM: 2 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:295:29 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:295:42 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:296:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:296:23 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:296:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+32]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:296:26 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1091
jmp ROTULO1092
ROTULO1091:
mov ax, 65535
jmp ROTULO1093
ROTULO1092:
xor ax, ax
ROTULO1093:
cmp ax, 0
jne ROTULO1089
jmp ROTULO1090
ROTULO1089:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:296:39 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 296
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1090:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:297:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:297:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:297:33 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:297:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+30]
add sp, 6
jmp ROTULO1088
ROTULO1088:
mov sp, bp
pop bp
FIM_stream_seekend:
retf
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:300:21 ===---
_stream_seekstart:
push bp
mov bp, sp
; ARG: s TAM: 4 POS: BP+6 
; ARG: pos TAM: 2 POS: BP+10 
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:300:31 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:300:44 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:301:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:301:25 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:301:13 ===---
; ACAO STRUCTURE - Leitura de Segmento de Ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
es mov ax, [di+28]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:301:28 ===---
xor ax, ax
mov bx, ax
pop ax
cmp ax, bx
je ROTULO1097
jmp ROTULO1098
ROTULO1097:
mov ax, 65535
jmp ROTULO1099
ROTULO1098:
xor ax, ax
ROTULO1099:
cmp ax, 0
jne ROTULO1095
jmp ROTULO1096
ROTULO1095:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:301:41 ===---
mov ax, _stream
mov [bp+-8], ax
mov ax, 301
mov [bp+-10], ax
mov ax, 7
cs jmp word [_os_trycode]
ROTULO1096:
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:302:9 ===---
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:302:16 ===---
; ACAO CHAMADA - Chama indiretamente usando Invoke
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:302:35 ===---
; ACAO LEITURA - Le variavel
mov ax, [bp+10]
push ax
;     ---=== /home/humberto/Nextcloud/hcbasic/Distro/Linux64/Plataformas/8086/System.hcb:302:16 ===---
; ACAO LEITURA - Le ponteiro
push word [bp+6+2]
pop es
mov di, [bp+6]
push es
push di
es call far [di+26]
add sp, 6
jmp ROTULO1094
ROTULO1094:
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
dw 0
dw 0
dw 0
dw 0
END:
