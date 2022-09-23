; Gerado com o HCBasic
org 0x100
push bp
mov bp, sp
.a: equ -2
sub sp,  2
mov word [bp+.a],  64
mov word [bp+-67 + ], 0
mov ax,  1
cmp ax,  1
jne R0
xor ax, ax
jmp R1
R0:
mov ax, -1
R1:
push ax
pop bx
cmp ax, bx
je R2
xor ax, ax
jmp R3
R2:
mov ax, -1
R3:
cmp ax,  1
je R4
xor ax, ax
jmp R5
R4:
mov ax, -1
R5:
cmp ax,  1
jg R6
xor ax, ax
jmp R7
R6:
mov ax, -1
R7:
cmp ax,  1
jl R8
xor ax, ax
jmp R9
R8:
mov ax, -1
R9:
cmp ax,  1
jle R10
xor ax, ax
jmp R11
R10:
mov ax, -1
R11:
cmp ax,  1
jge R12
xor ax, ax
jmp R13
R12:
mov ax, -1
R13:
mov [bp+.a], ax
mov sp, bp
pop bp
ret
