cpu 8086
bits 16
push cs
call _program_main
int 0x20
R0:
; MODULO: os
; MODULO FIM: os
; MODULO: string
; MODULO FIM: string
; MODULO: console
_console_writechar:
push bp
mov bp, sp
mov ax, [bp+6]
mov ah, 0xe
int 0x10
R1:
mov sp, bp
pop bp
FIM_console_writechar:
retf
; MODULO FIM: console
; MODULO: uint32
_uint32_add:
push bp
mov bp, sp
push bp
mov bp, sp
mov di, [bp+4]
mov si, [bp+6]
mov ax, [si]
mov bx, [si+2]
add [di], ax
adc [di+2], bx
pop bp
R2:
mov sp, bp
pop bp
FIM_uint32_add:
retf
_uint32_subtract:
push bp
mov bp, sp
push bp
mov bp, sp
mov di, [bp+4]
mov si, [bp+6]
mov ax, [si]
mov bx, [si+2]
sub [di], ax
sbb [di+2], bx
pop bp
R3:
mov sp, bp
pop bp
FIM_uint32_subtract:
retf
_uint32_multiply:
push bp
mov bp, sp
mov byte [bp-2], 32

mov si, [bp+4]

mov ax, [si]

mov bx, [si+2]

mov si, [bp+6]

mov di, [si]

mov si, [si+2]

mov [bp-4], ax

mov [bp-6], bx

xor ax, ax

xor bx, bx

xor cx, cx

xor dx, dx

.calcula:

test di, 1

jz .ignora

add cx, [bp-4]

adc dx, [bp-6]

.ignora:

rcr dx, 1

rcr cx, 1

rcr bx, 1

rcr ax, 1

rcr si, 1

rcr di, 1

dec byte [bp-2]

jnz .calcula

mov si, [bp+4]

mov [si], ax

mov [si+2], bx

R4:
mov sp, bp
pop bp
FIM_uint32_multiply:
retf
_uint32_divide:
push bp
mov bp, sp
mov di, [bp+6]
mov word [di], 0
mov word [di+2], 0
; bx:ax Resto
; dx:cx Divisor
; di:si Resultado
mov byte [bp-2], 32

mov si, [bp+8]

mov ax, [si]

mov bx, [si+2]

mov si, [bp+10]

mov di, [si]

mov si, [si+2]

mov [bp-4], ax

mov [bp-6], bx

xor ax, ax

xor bx, bx

xor cx, cx

xor dx, dx

.calcula:

test di, 1

jz .ignora

add cx, [bp-4]

adc dx, [bp-6]

.ignora:

rcr dx, 1

rcr cx, 1

rcr bx, 1

rcr ax, 1

rcr si, 1

rcr di, 1

dec byte [bp-2]

jnz .calcula

mov si, [bp+6]

mov [si], ax

mov [si+2], bx

R5:
mov sp, bp
pop bp
FIM_uint32_divide:
retf
; MODULO FIM: uint32
; MODULO: program
_program_main:
mov ax, 65
push ax
push cs
call _console_writechar
add sp, 2
R6:
FIM_program_main:
retf
; MODULO FIM: program
