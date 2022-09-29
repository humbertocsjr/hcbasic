function NomeVarLocal$(nome as string)
    if gNivel = 0 then
        NomeVarLocal$ = "V0" + nome$
    else
        NomeVarLocal$ = "V" + ltrim$(str$(gFuncaoAtual)) + nome$
    end if
end function

sub EmiteFmt(nasm as string, osasm as string)
    select case gFormato
    case cFormatoNasm
        Emite nasm
    case cFormatoOsasm
        Emite osasm
    end select
end sub

sub EmiteComentario(txt as string)
    EmiteFmt "; " + txt, "| " + txt
end sub

sub EmiteMovA16Valor(valor as integer)
    if valor = 0 then
        EmiteFmt "xor ax, ax", "xor ax, ax"
    else 
        EmiteFmt "mov ax, " + str$(valor), "mov ax, #" + str$(valor)
    end if
end sub

sub EmiteMovB16Valor(valor as integer)
    if valor = 0 then
        EmiteFmt "xor bx, bx", "xor bx, bx"
    else 
        EmiteFmt "mov bx, " + str$(valor), "mov bx, #" + str$(valor)
    end if
end sub

sub EmiteMovA16SegCodigo()
    EmiteFmt "mov ax, cs", "mov ax, cs"
end sub

sub EmiteMovA16SegPilha()
    EmiteFmt "mov ax, ss", "mov ax, ss"
end sub

sub EmiteMovA16VarLocal(var as string)
    EmiteFmt "mov ax, [bp+" + NomeVarLocal$(var$) + "]", "mov ax, " + NomeVarLocal$(var$) + "[bp]"
end sub

sub EmiteMovA16VarGlobal(var as string)
    EmiteFmt "cs", "seg cs"
    EmiteFmt "mov ax, [" + var$ + "]", "mov ax, "+ var$ 
end sub

sub EmitePushA16
    EmiteFmt "push ax", "push ax"
end sub

sub EmitePopA16
    EmiteFmt "pop ax", "pop ax"
end sub

sub EmitePopB16
    EmiteFmt "pop bx", "pop bx"
end sub

sub EmiteAddA16Valor(valor as integer)
    EmiteFmt "add ax, " + str$(valor), "add ax, #" + str$(valor)
end sub

sub EmiteAddA16Pop
    EmitePopB16
    EmiteFmt "add ax, bx", "add ax, bx"
end sub

sub EmiteSubA16Valor(valor as integer)
    EmiteFmt "sub ax, " + str$(valor), "sub ax, #" + str$(valor)
end sub

sub EmiteSubA16Pop
    EmitePopB16
    EmiteFmt "sub ax, bx", "sub ax, bx"
end sub

sub EmiteMulA16Valor(valor as integer)
    EmiteMovB16Valor valor
    EmiteFmt "imul bx", "imul bx"
end sub

sub EmiteMulA16Pop
    EmitePopB16
    EmiteFmt "imul bx", "imul bx"
end sub

sub EmiteDivA16Valor(valor as integer)
    EmiteMovB16Valor valor
    EmiteFmt "cwd", "cwd"
    EmiteFmt "idiv bx", "idiv bx"
end sub

sub EmiteDivA16Pop
    EmitePopB16
    EmiteFmt "cwd", "cwd"
    EmiteFmt "idiv bx", "idiv bx"
end sub

sub EmiteModA16Valor(valor as integer)
    EmiteMovB16Valor valor
    EmiteFmt "cwd", "cwd"
    EmiteFmt "idiv bx", "idiv bx"
    EmiteFmt "mov ax, dx", "mov ax, dx"
end sub

sub EmiteModA16Pop
    EmitePopB16
    EmiteFmt "cwd", "cwd"
    EmiteFmt "idiv bx", "idiv bx"
    EmiteFmt "mov ax, dx", "mov ax, dx"
end sub

sub EmiteFuncaoInicio
    EmiteFmt "push bp", "push bp"
    EmiteFmt "mov bp, sp", "mov bp, sp"
end sub

sub EmiteFuncaoFim
    EmiteFmt "mov sp, bp", "mov sp, bp"
    EmiteFmt "pop bp", "pop bp"
    EmiteFmt "ret", "ret"
end sub

sub EmiteDeclaraVarLocal(nome as string, posicao as integer)
    EmiteFmt NomeVarLocal$(nome$)+ ": equ " + str$(posicao), NomeVarLocal$(nome$)+ " = "+ str$(posicao)
end sub

sub EmiteDeclaraVarGlobal(nome as string, tam as integer)
    EmiteFmt nome + ": times " + str$(tam) + " db 0",  nome$ + ": " 
    EmiteFmt "",  ".zerob "+ str$(tam)
end sub

sub EmiteMovVarLocalA16(var as string)
    EmiteFmt "mov [bp+" + NomeVarLocal$(var$)+ "], ax", "mov " + NomeVarLocal$(var$) + "[bp], ax"
end sub

sub EmiteMovVarLocalValor(var as string, valor as integer)
    EmiteFmt "mov word [bp+" + NomeVarLocal$(var$) + "], " + str$(valor), "mov " + NomeVarLocal$(var$) + "[bp], #" + str$(valor)
end sub

sub EmiteMovVarLocalStringPrep(var as string, posicao as integer)
    EmiteFmt "lea ax, [bp+ " + ltrim$(str$(posicao)) + "]" , "lea ax, " + ltrim$(str$(posicao)) + "[bp]"
    EmiteFmt "mov word [bp+" + NomeVarLocal$(var$) + "], ax" , "mov " + NomeVarLocal$(var$) + "[bp], ax"
    EmiteFmt "mov ax, ss" , "mov ax, ss"
    EmiteFmt "mov word [bp+" + NomeVarLocal$(var$) + "+2], ax" , "mov " + NomeVarLocal$(var$) + "+2[bp], ax"
end sub

sub EmiteMovVarGlobalA16(var as string)
    EmiteFmt "cs", "seg cs"
    EmiteFmt "mov [" + var$ + "], ax", "mov " + var$ + ", ax"
end sub

sub EmiteMovVarGlobalValor(var as string, valor as integer)
    EmiteFmt "cs", "seg cs"
    EmiteFmt "mov word [" + var$ + "], " + str$(valor), "mov " + var$ + ", #" + str$(valor)
end sub

sub EmiteMovVarGlobalStringPrep(var as string, rotulo as integer)
    EmiteFmt "cs", "seg cs"
    EmiteFmt "mov word [" + var$ + "], RO" + ltrim$(str$(rotulo)) , "mov " + var$ + ", #RO" + ltrim$(str$(rotulo))
    EmiteFmt "mov ax, cs" , "mov ax, cs"
    EmiteFmt "cs", "seg cs"
    EmiteFmt "mov [" + var$ + "+2], ax" , "mov " + var$ + "+2, ax"
end sub

sub EmitePreparaStringGlobal(tam as integer)
    EmiteFmt "db "+str$(tam), ".byte " + str$(tam)
    EmiteFmt "times "+str$(tam+1) + " db 0", ".zerob " + str$(tam + 1)
end sub

sub EmitePreparaStringLocal(tam as integer, var as string, posicao as integer)
    EmiteFmt "mov byte [bp+" + str$(posicao) + "], " + str$(tam), "movb " + str$(posicao + 1)  + "[bp], #" + str$(tam)
    EmiteFmt "mov byte [bp+" + str$(posicao + 1) + "], 0", "movb " + str$(posicao + 1)  + "[bp], #0"
end sub

sub EmiteSubPilhaValor(valor as integer)
    EmiteFmt "sub sp, " + str$(valor), "sub sp, #" + str$(valor)
end sub

sub EmiteAddPilhaValor(valor as integer)
    EmiteFmt "add sp, " + str$(valor), "add sp, #" + str$(valor)
end sub

sub EmitePuloRotuloNro(rotulo as integer)
    EmiteFmt "jmp RO" + ltrim$(str$(rotulo)) , "jmp RO" + ltrim$(str$(rotulo))
end sub

sub EmitePuloCurtoRotuloNro(rotulo as integer)
    EmiteFmt "jmp RO" + ltrim$(str$(rotulo)) , "jmps RO" + ltrim$(str$(rotulo))
end sub

sub EmitePuloSeIgualRotuloNro(rotulo as integer)
    EmiteFmt "je RO" + ltrim$(str$(rotulo)) , "je RO" + ltrim$(str$(rotulo))
end sub

sub EmitePuloSeDifRotuloNro(rotulo as integer)
    EmiteFmt "jne RO" + ltrim$(str$(rotulo)) , "jne RO" + ltrim$(str$(rotulo))
end sub

sub EmitePuloSeMaiorQueRotuloNro(rotulo as integer)
    EmiteFmt "jg RO" + ltrim$(str$(rotulo)) , "jg RO" + ltrim$(str$(rotulo))
end sub

sub EmitePuloSeMenorQueRotuloNro(rotulo as integer)
    EmiteFmt "jl RO" + ltrim$(str$(rotulo)) , "jl RO" + ltrim$(str$(rotulo))
end sub

sub EmitePuloSeMaiorIgualRotuloNro(rotulo as integer)
    EmiteFmt "jge RO" + ltrim$(str$(rotulo)) , "jge RO" + ltrim$(str$(rotulo))
end sub

sub EmitePuloSeMenorIgualRotuloNro(rotulo as integer)
    EmiteFmt "jle RO" + ltrim$(str$(rotulo)) , "jle RO" + ltrim$(str$(rotulo))
end sub

sub EmiteRotuloNro(rotulo as integer)
    EmiteFmt "RO" + ltrim$(str$(rotulo)) + ":", "RO" + ltrim$(str$(rotulo)) + ":"
end sub

sub EmiteRotuloTexto(rotulo as string)
    EmiteFmt ltrim$(rotulo$) + ":", ltrim$(rotulo$) + ":"
end sub

sub EmitePuloRotuloTexto(rotulo as string)
    EmiteFmt "jmp " + ltrim$(rotulo$), "jmp " + ltrim$(rotulo$)
end sub

sub EmiteMovA16RotuloNro(rotulo as integer)
    EmiteFmt "mov ax, RO" + ltrim$(str$(rotulo)) , "mov ax, #RO" + ltrim$(str$(rotulo))
end sub

sub EmiteConstString(conteudo as string)
    dim i as integer
    EmiteFmt "db " + str$(len(conteudo$)), ".byte " + str$(len(conteudo$))
    for i = 1 to len(conteudo$)
        EmiteFmt "db " + str$(asc(mid$(conteudo$, i, 1))), ".byte " + str$(asc(mid$(conteudo$, i, 1)))
    next
    EmiteFmt "db  0", ".byte  0"
end sub

sub EmiteCmpA16Valor(valor as integer)
    EmiteFmt "cmp ax, " + str$(valor), "cmp ax, #" + str$(valor)
end sub

sub EmiteCmpA16Pop
    EmitePopB16
    EmiteFmt "cmp ax, bx", "cmp ax, bx"
end sub

sub EmiteIgualA16Valor(valor as integer)
    dim sim as integer
    dim fim as integer
    sim = NovoRotulo
    fim = NovoRotulo
    EmiteCmpA16Valor valor
    EmitePuloSeIgualRotuloNro sim
        EmiteMovA16Valor 0
        EmitePuloCurtoRotuloNro fim
    EmiteRotuloNro sim
        EmiteMovA16Valor -1
    EmiteRotuloNro fim
end sub

sub EmiteIgualA16Pop
    dim sim as integer
    dim fim as integer
    sim = NovoRotulo
    fim = NovoRotulo
    EmiteCmpA16Pop
    EmitePuloSeIgualRotuloNro sim
        EmiteMovA16Valor 0
        EmitePuloCurtoRotuloNro fim
    EmiteRotuloNro sim
        EmiteMovA16Valor -1
    EmiteRotuloNro fim
end sub

sub EmiteDifA16Valor(valor as integer)
    dim sim as integer
    dim fim as integer
    sim = NovoRotulo
    fim = NovoRotulo
    EmiteCmpA16Valor valor
    EmitePuloSeDifRotuloNro sim
        EmiteMovA16Valor 0
        EmitePuloCurtoRotuloNro fim
    EmiteRotuloNro sim
        EmiteMovA16Valor -1
    EmiteRotuloNro fim
end sub

sub EmiteDifA16Pop
    dim sim as integer
    dim fim as integer
    sim = NovoRotulo
    fim = NovoRotulo
    EmiteCmpA16Pop
    EmitePuloSeDifRotuloNro sim
        EmiteMovA16Valor 0
        EmitePuloCurtoRotuloNro fim
    EmiteRotuloNro sim
        EmiteMovA16Valor -1
    EmiteRotuloNro fim
end sub

sub EmiteMaiorQueA16Valor(valor as integer)
    dim sim as integer
    dim fim as integer
    sim = NovoRotulo
    fim = NovoRotulo
    EmiteCmpA16Valor valor
    EmitePuloSeMaiorQueRotuloNro sim
        EmiteMovA16Valor 0
        EmitePuloCurtoRotuloNro fim
    EmiteRotuloNro sim
        EmiteMovA16Valor -1
    EmiteRotuloNro fim
end sub

sub EmiteMaiorQueA16Pop
    dim sim as integer
    dim fim as integer
    sim = NovoRotulo
    fim = NovoRotulo
    EmiteCmpA16Pop
    EmitePuloSeMaiorQueRotuloNro sim
        EmiteMovA16Valor 0
        EmitePuloCurtoRotuloNro fim
    EmiteRotuloNro sim
        EmiteMovA16Valor -1
    EmiteRotuloNro fim
end sub

sub EmiteMenorQueA16Valor(valor as integer)
    dim sim as integer
    dim fim as integer
    sim = NovoRotulo
    fim = NovoRotulo
    EmiteCmpA16Valor valor
    EmitePuloSeMenorQueRotuloNro sim
        EmiteMovA16Valor 0
        EmitePuloCurtoRotuloNro fim
    EmiteRotuloNro sim
        EmiteMovA16Valor -1
    EmiteRotuloNro fim
end sub

sub EmiteMenorQueA16Pop
    dim sim as integer
    dim fim as integer
    sim = NovoRotulo
    fim = NovoRotulo
    EmiteCmpA16Pop
    EmitePuloSeMenorQueRotuloNro sim
        EmiteMovA16Valor 0
        EmitePuloCurtoRotuloNro fim
    EmiteRotuloNro sim
        EmiteMovA16Valor -1
    EmiteRotuloNro fim
end sub

sub EmiteMaiorIgualA16Valor(valor as integer)
    dim sim as integer
    dim fim as integer
    sim = NovoRotulo
    fim = NovoRotulo
    EmiteCmpA16Valor valor
    EmitePuloSeMaiorIgualRotuloNro sim
        EmiteMovA16Valor 0
        EmitePuloCurtoRotuloNro fim
    EmiteRotuloNro sim
        EmiteMovA16Valor -1
    EmiteRotuloNro fim
end sub

sub EmiteMaiorIgualA16Pop
    dim sim as integer
    dim fim as integer
    sim = NovoRotulo
    fim = NovoRotulo
    EmiteCmpA16Pop
    EmitePuloSeMaiorIgualRotuloNro sim
        EmiteMovA16Valor 0
        EmitePuloCurtoRotuloNro fim
    EmiteRotuloNro sim
        EmiteMovA16Valor -1
    EmiteRotuloNro fim
end sub

sub EmiteMenorIgualA16Valor(valor as integer)
    dim sim as integer
    dim fim as integer
    sim = NovoRotulo
    fim = NovoRotulo
    EmiteCmpA16Valor valor
    EmitePuloSeMenorIgualRotuloNro sim
        EmiteMovA16Valor 0
        EmitePuloCurtoRotuloNro fim
    EmiteRotuloNro sim
        EmiteMovA16Valor -1
    EmiteRotuloNro fim
end sub

sub EmiteMenorIgualA16Pop
    dim sim as integer
    dim fim as integer
    sim = NovoRotulo
    fim = NovoRotulo
    EmiteCmpA16Pop
    EmitePuloSeMenorIgualRotuloNro sim
        EmiteMovA16Valor 0
        EmitePuloCurtoRotuloNro fim
    EmiteRotuloNro sim
        EmiteMovA16Valor -1
    EmiteRotuloNro fim
end sub

sub EmiteChamaFuncao(rotina as string)
    Emite "call " + rotina$
end sub