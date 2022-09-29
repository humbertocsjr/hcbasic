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
call __print_enter
mov ax, # 456
push ax
call __print_int
add sp, # 2
call __print_enter
jmp RO3
RO2:
.byte  2
.byte  111
.byte  105
.byte  0
RO3:
mov ax, cs
push ax
mov ax, #RO2
push ax
call __print_str
add sp, # 4
call __print_enter
mov sp, bp
pop bp
ret
| BAS: ..\biblio\print.bas
jmp RO4
__print_string_var__: 
.zerob  4
RO5:
.byte  255
.zerob  256
RO4:
seg cs
mov __print_string_var__, #RO5
mov ax, cs
seg cs
mov __print_string_var__+2, ax
jmp RO6
__print_char:
push bp
mov bp, sp
V1c =  4
movb al, 4[bp]

movb ah, #0xe

int #0x10

RO7:
mov sp, bp
pop bp
ret
RO6:
jmp RO8
__print_enter:
push bp
mov bp, sp
movb ah, #0xe

movb al, #13

int #0x10

movb al, #10

int #0x10

RO9:
mov sp, bp
pop bp
ret
RO8:
| BAS: ..\biblio\prints.bas
jmp RO10
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

RO11:
mov sp, bp
pop bp
ret
RO10:
| BAS: ..\biblio\printi.bas
jmp RO12
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

RO13:
mov sp, bp
pop bp
ret
RO12:
| BAS: ..\biblio\footer.bas
.align 16

__FIM__:

