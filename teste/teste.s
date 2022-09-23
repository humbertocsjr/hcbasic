| Gerado com o HCBasic

push bp
mov bp, sp
V0a = -2
sub sp, # 2
mov V0a[bp], # 64
mov -67[bp], #0
mov ax, # 1
cmp ax, # 1
jne R0
xor ax, ax
jmps R1
R0:
mov ax, #-1
R1:
push ax
pop bx
cmp ax, bx
je R2
xor ax, ax
jmps R3
R2:
mov ax, #-1
R3:
cmp ax, # 1
je R4
xor ax, ax
jmps R5
R4:
mov ax, #-1
R5:
cmp ax, # 1
jg R6
xor ax, ax
jmps R7
R6:
mov ax, #-1
R7:
cmp ax, # 1
jl R8
xor ax, ax
jmps R9
R8:
mov ax, #-1
R9:
cmp ax, # 1
jle R10
xor ax, ax
jmps R11
R10:
mov ax, #-1
R11:
cmp ax, # 1
jge R12
xor ax, ax
jmps R13
R12:
mov ax, #-1
R13:
mov V0a[bp], ax
mov sp, bp
pop bp
ret
