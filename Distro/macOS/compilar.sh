#!/bin/sh

chmod +x hcbasic

./hcbasic helloworld.hcb helloworld.asm Plataformas/8086-DOS Plataformas/8086/
nasm -f bin -o helloworld.com helloworld.asm

./hcbasic gui.hcb gui.asm Plataformas/8086-DOS Plataformas/8086/
nasm -f bin -o gui.com gui.asm