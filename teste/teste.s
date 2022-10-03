| Gerado com o HCBasic
| BAS: ..\biblio\header.bas
mov ax, cs

mov bx, #__FIM__

movb cl, #4

shr bx, cl

add ax, bx

inc ax

mov ds, ax

mov es, ax

mov ss, ax

seg cs

mov __SP__, sp

mov sp, #0xffff

call __INICIO__

seg cs

mov sp, __SP__

mov ax, cs

mov ss, ax

ret

__SP__:

.zerow 1

__INICIO__:

| Inicio
push bp
mov bp, sp
| BAS: teste.bas
V0a = -2
sub sp, # 2
xor ax, ax
mov V0a[bp], ax
jmp RO1
RO0:
.byte  4
.byte  79
.byte  105
.byte  101
.byte  101
.byte  0
RO1:
mov ax, cs
push ax
mov ax, #RO0
push ax
call __print_str
add sp, # 4
mov ax, # 123
push ax
call __print_int
add sp, # 2
mov ax, # 1
mov V0a[bp], ax
RO3:
mov ax, # 3
mov bx, V0a[bp]
cmp bx, ax
jle RO2
jmp RO5
RO4:
inc V0a[bp]
jmp RO3
RO2:
jmp RO7
RO6:
.byte  1
.byte  46
.byte  0
RO7:
mov ax, cs
push ax
mov ax, #RO6
push ax
call __print_str
add sp, # 4
jmp RO4
RO5:
mov ax, V0a[bp]
cmp ax, # 0
je RO10
xor ax, ax
jmps RO11
RO10:
mov ax, #-1
RO11:
cmp ax, # 0
jne RO8
jmp RO9
RO8:
mov ax, # 456
push ax
call __print_int
add sp, # 2
call __print_enter
RO9:
jmp RO13
RO12:
.byte  2
.byte  111
.byte  105
.byte  0
RO13:
mov ax, cs
push ax
mov ax, #RO12
push ax
call __print_str
add sp, # 4
call __print_enter
mov sp, bp
pop bp
ret
| BAS: ..\biblio\print.bas
jmp RO14
__print_string_var__: 
.zerob  4
RO15:
.byte  255
.zerob  256
RO14:
seg cs
mov __print_string_var__, #RO15
mov ax, cs
seg cs
mov __print_string_var__+2, ax
jmp RO16
__print_char:
push bp
mov bp, sp
V1c =  4
movb al, 4[bp]

movb ah, #0xe

int #0x10

RO17:
mov sp, bp
pop bp
ret
RO16:
jmp RO18
__print_enter:
push bp
mov bp, sp
movb ah, #0xe

movb al, #13

int #0x10

movb al, #10

int #0x10

RO19:
mov sp, bp
pop bp
ret
RO18:
| BAS: ..\biblio\prints.bas
jmp RO20
__print_str:
push bp
mov bp, sp
V3txt =  4
mov si, 4[bp]

mov ax, 6[bp]

mov ds, ax

xor ax, ax

lodsb

mov cx, ax

__print_str_loop:

  lodsb

  cmpb al, #0

  je __print_str_end

  movb ah, #0xe

  int #0x10

loop __print_str_loop

__print_str_end:

RO21:
mov sp, bp
pop bp
ret
RO20:
| BAS: ..\biblio\printi.bas
jmp RO22
__print_int:
push bp
mov bp, sp
V4valor =  4
mov ax, 4[bp]

xor dx, dx

cmp ax, #0

je __print_int_end

mov bx, #10

div bx

cmp ax, #0

je __print_int_end

push dx

push ax

call __print_int

add sp, #2

pop dx

__print_int_end:

mov ax, dx

add ax, #'0'

movb ah, #0xe

int #0x10

RO23:
mov sp, bp
pop bp
ret
RO22:
| BAS: ..\biblio\footer.bas
.align 16

__FIM__:

