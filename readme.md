# Compilador HCBasic para 8086

Esta linguagem de programação tem como objetivo criar uma derivação de baixo nível da linguagem BASIC, inspirada no VisualBasic.NET, QuickBASIC.

Esta linguagem não tem como objetivo ser orientada a objetos, sendo próximo de uma versão 16Bits procedural do VisualBasic.NET, onde os comandos são agrupados em módulos, com uma dinâmica de nomes próxima as bibliotecas do .NET Framework.

## Objetivos

- [x] Suporte a módulos
- [x] Suporte a variáveis globais(do módulo) e locais
- [x] Suporte a sub-rotinas e funções
- [x] Comandos IF e WHILE
- [x] Suporte a números 8 e 16 bits
- [ ] Correto tratamento e diferenciação do public e private
- [ ] Comando FOR
- [ ] Suporte a rotinas externas
- [ ] Ponteiros
- [ ] String
- [x] Suporte a números 32 bits na biblioteca
- [ ] Suporte a números 32 bits na linguagem

## Exemplo

Todo programa deve ter um Módulo chamado Program com uma rotina chamada Main para ser executável.

```vb

Imports System

Module Program

    Public Dim Teste as UInt16

    Sub Main
        Dim a as Int16
        Let a = 1+2;
        If a == 3 Then
            Let a = a - 2
        End
        While a < 10
            Let a = a - 1
        End
    End

End

```

## Compilando e instalando

```sh
make

sudo make install
```

## Uso

```sh

hcbasic teste.hcb teste.asm

nasm -f bin -o teste.com teste.asm

```