
const cArgsCapacidade = 10
const cTrechoCapacidade = 32
const cFuncaoCapacidade = 128
const cLocalCapacidade = 64
const cGlobalCapacidade = 64
const cTamStringPadrao = 64

'Tipos de trecho
const cTipoVazio = 0
const cTipoId = 1
const cTipoString = 2
const cTipoInteger = 3
const cTipoOpMatematica = 4
const cTipoOpLogica = 5
const cTipoComentario = 6
const cTipoPreprocessamento = 7
const cTipoOutro = 8
const cTipoFimDaLinha = 9

'Formato
const cFormatoNasm = 1
const cFormatoOsasm = 2

dim shared gNivel as integer
dim shared gErros as integer
dim shared gFormato as integer
dim shared gArq as integer
dim shared gArqNome as string
dim shared gLinha as integer
dim shared gSaida as integer
dim shared gExt as string
dim shared gArgs(cArgsCapacidade) as string
dim shared gArgsQtd as integer
dim shared gComando as string * 256
dim shared gTrecho(cTrechoCapacidade) as string
dim shared gTipo(cTrechoCapacidade) as integer
dim shared gColuna(cTrechoCapacidade) as integer
dim shared gTrechoAtual as integer
dim shared gTrechoQtd as integer
dim shared gFuncaoAtual as integer
dim shared gFuncao(cFuncaoCapacidade) as string
dim shared gFuncaoArgs(cFuncaoCapacidade) as string
dim shared gFuncaoArgsQtd as integer
dim shared gLocal(cLocalCapacidade) as string
dim shared gLocalTipo(cLocalCapacidade) as string
dim shared gLocalRaiz(cLocalCapacidade) as string
dim shared gLocalRaizTipo(cLocalCapacidade) as string
dim shared gGlobal(cGlobalCapacidade) as string
dim shared gGlobalTipo(cGlobalCapacidade) as string
dim shared gLocalPos as integer
dim shared gEtapa as integer
dim shared gRotulo as integer

gEtapa = 0
gLocalPos = 0
gFuncaoAtual = 0
gErros = 0

#include "comum.bas"
#include "gerador.bas"

LocalLimpa
LocalRaizLimpa
GlobalLimpa

sub ExprNumero()
    EmiteMovA16Valor TInteger()
    Prox
end sub

sub ExprId()
    EmiteMovA16VarLocal T$
    Prox
end sub

sub ExprString()
    dim tmp as integer
    dim tmp2 as integer
    tmp = NovoRotulo
    tmp2 = NovoRotulo
    EmitePuloRotuloNro tmp2
    EmiteRotuloNro tmp
    EmiteConstString T$
    EmiteRotuloNro tmp2
    EmiteMovA16RotuloNro tmp
    Prox
end sub

sub Expr4()
    if ValidaTipo(cTipoInteger) then
        ExprNumero
    elseif ValidaTipo(cTipoId) then
        ExprId
    elseif ValidaTipo(cTipoString) then
        ExprString
    end if
end sub

sub Expr3()
    dim operacao as string
    Expr4
    do while ValidaNivelMultiplicacao()
        operacao$ = T$
        Prox
        select case operacao$
        case "*"
            if ValidaTipo(cTipoInteger) then
                EmiteMulA16Valor TInteger
                Prox
            else
                EmitePushA16
                Expr4
                EmiteMulA16Pop
            end if
        case "/"
            if ValidaTipo(cTipoInteger) then
                EmiteDivA16Valor TInteger
                Prox
            else
                EmitePushA16
                Expr4
                EmiteDivA16Pop
            end if
        case "mod"
            if ValidaTipo(cTipoInteger) then
                EmiteModA16Valor TInteger
                Prox
            else
                EmitePushA16
                Expr4
                EmiteModA16Pop
            end if
        case else 
            Erro "Operacao nao implementada"
        end select
    loop
end sub

sub Expr2Otimiz
    dim operacao as string
    dim ret as integer
    dim posAnt as integer
    dim temp as integer
    dim contador as integer
    ret = 0
    contador = 0
    operacao$ = ""
    posAnt = gTrechoAtual
    do while ValidaTipo(cTipoInteger)
        contador = contador + 1
        temp = TInteger
        posAnt = gTrechoAtual
        if contador = 1 then
            ret = TInteger
        else
            select case operacao$
            case "+"
                ret = ret + temp
            case "-"
                ret = ret - temp
            case else
                ErroNaoImplementado
            end select
        end if
        Prox
        if ValidaNivelSoma() then
            operacao$ = T$
            Prox
            posAnt = gTrechoAtual
            if ValidaTipo(cTipoInteger) then
                prox
                if ValidaNivelSoma() or ValidaFimDaLinha() then
                else
                    contador = contador - 1
                    exit do
                end if
            end if
            gTrechoAtual = posAnt
        else
            contador = contador - 1
            exit do
        end if
    loop
    if ValidaFimDaLinha() then
        EmiteMovA16Valor ret
    elseif contador = 0 then
        gTrechoAtual = posAnt
        Expr3
    else 
        EmiteMovA16Valor ret
        EmitePushA16
        gTrechoAtual = posAnt
        Expr3
        select case operacao$
        case "+"
            EmiteAddA16Pop
        case "-"
            EmiteSubA16Pop
        case else
            ErroNaoImplementado
        end select
    end if
end sub

sub Expr2()
    dim operacao as string
    dim temp as integer
    dim posAnt as integer
    Expr2Otimiz
    do while ValidaNivelSoma()
        operacao$ = T$
        Prox
        select case operacao$
        case "+"
            if ValidaTipo(cTipoInteger) then
                posAnt = gTrechoAtual
                temp = TInteger
                Prox
                if ValidaNivelSoma() or ValidaFimDaLinha() then
                    EmiteAddA16Valor temp
                else
                    gTrechoAtual = posAnt
                    EmitePushA16
                    Expr3
                    EmiteAddA16Pop
                end if
            else
                EmitePushA16
                Expr3
                EmiteAddA16Pop
            end if
        case "-"
            if ValidaTipo(cTipoInteger) then
                posAnt = gTrechoAtual
                temp = TInteger
                Prox
                if ValidaNivelSoma() or ValidaFimDaLinha() then
                    EmiteSubA16Valor temp
                else
                    gTrechoAtual = posAnt
                    EmitePushA16
                    Expr3
                    EmiteSubA16Pop
                end if
            else
                EmitePushA16
                Expr3
                EmiteSubA16Pop
            end if
        case else 
            Erro "Operacao nao implementada"
        end select
    loop
end sub

sub Expr()
    dim operacao as string
    Expr2
    do while ValidaNivelLogica()
        operacao$ = T$
        Prox
        select case operacao$
        case "="
            if ValidaTipo(cTipoInteger) then
                EmiteIgualA16Valor TInteger
                Prox
            else
                EmitePushA16
                Expr2
                EmiteIgualA16Pop
            end if
        case "<>"
            if ValidaTipo(cTipoInteger) then
                EmiteDifA16Valor TInteger
                Prox
            else
                EmitePushA16
                Expr2
                EmiteDifA16Pop
            end if
        case ">"
            if ValidaTipo(cTipoInteger) then
                EmiteMaiorQueA16Valor TInteger
                Prox
            else
                EmitePushA16
                Expr2
                EmiteMaiorQueA16Pop
            end if
        case "<"
            if ValidaTipo(cTipoInteger) then
                EmiteMenorQueA16Valor TInteger
                Prox
            else
                EmitePushA16
                Expr2
                EmiteMenorQueA16Pop
            end if
        case ">="
            if ValidaTipo(cTipoInteger) then
                EmiteMaiorIgualA16Valor TInteger
                Prox
            else
                EmitePushA16
                Expr2
                EmiteMaiorIgualA16Pop
            end if
        case "<="
            if ValidaTipo(cTipoInteger) then
                EmiteMenorIgualA16Valor TInteger
                Prox
            else
                EmitePushA16
                Expr2
                EmiteMenorIgualA16Pop
            end if
        case else 
            Erro "Operacao nao implementada"
        end select
    loop
end sub

sub Declara()
    dim global as integer
    dim nome as string
    dim tipo as string
    global = 0
    Prox
    if T$ = "shared" then
        Prox
        global = 1
    end if
    nome$ = T$
    ExigeTipo cTipoId, "Esperado o nome da variavel", "dim nome as tipo"
    ExigeId "as", "Esperado 'as' apos o nome da variavel", "dim nome as tipo"
    tipo$ = T$
    ExigeTipoBasic "Esperado um tipo valido de variavel", "dim nome as tipo"
    if global = 1 then
        GlobalCadastra nome$, tipo$
        global = NovoRotulo
        EmitePuloRotuloNro global
        EmiteDeclaraVarGlobal nome$, 2
        EmitePreparaStringGlobal cTamStringPadrao
        EmiteRotuloNro global
    else
        LocalCadastra nome$, tipo$
        gLocalPos = gLocalPos - 2
        EmiteDeclaraVarLocal nome$, gLocalPos
        EmiteSubPilhaValor 2
        gLocalPos = gLocalPos - 1 - cTamStringPadrao
        EmitePreparaStringLocal cTamStringPadrao, nome$, gLocalPos
    end if
    if Valida(cTipoOpLogica, "=") then
        Prox
        Expr
        EmiteMovVarLocalA16 nome$
    end if
    ExigeFimDaLinha "Esperado fim da linha", "dim nome as tipo"
end sub

sub Processa()
    if Valida(cTipoId, "dim") then
        if gEtapa <> 0 then
            Erro "Todas as declaracoes de variaveis devem ficar no topo"
        end if
        Declara
        exit sub
    end if
    gEtapa = 1
    Expr
end sub

sub ProcessaArq(arq as string)
    gArq = freefile
    
    open arq for input as #gArq
    
    gLinha = 1

    do while not eof(gArq)
        print ".";
        Leia
        Processa
    loop
    
    close #gArq
end sub

print "HCBasic Compilador para 8086 v0.1"
print "Copyright (c) 2022, Humberto Costa dos Santos Junior"
print

Argumentos

if gArgsQtd <> 3 then
ajuda:
    print "Modo de uso: hcb [entrada .bas] [saida sem extensao] [nasm|osasm]"
    print gArgsQtd
    system
end if

select case gArgs$(3)
case "nasm"
    gExt = ".asm"
    gFormato = cFormatoNasm
case "osasm"
    gExt = ".s"
    gFormato = cFormatoOsasm
case else
    goto ajuda
end select

gSaida = freefile

print "Processando "+ gArgs$(2) + gExt$;
open (gArgs$(2) + gExt$) for output as #gSaida

EmiteComentario "Gerado com o HCBasic"

EmiteOrg0x100

EmiteFuncaoInicio

ProcessaArq gArgs$(1)

EmiteFuncaoFim

close #gSaida
if gErros = 0 then
    print "[ OK ]"
else 
    print
    print "[ Foram encontrados" +str$(gErros) + " erros ]"
end if


