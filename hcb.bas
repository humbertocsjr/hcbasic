declare sub Processa()

const cArgsCapacidade = 10
const cTrechoCapacidade = 32
const cFuncaoCapacidade = 128
const cLocalCapacidade = 64
const cGlobalCapacidade = 64
const cTamStringPadrao = 64
const cNiveisSaida = 32

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
dim shared gComando as string * 255
dim shared gTrecho(cTrechoCapacidade) as string
dim shared gTipo(cTrechoCapacidade) as integer
dim shared gColuna(cTrechoCapacidade) as integer
dim shared gTrechoAtual as integer
dim shared gTrechoQtd as integer
dim shared gFuncaoAtual as integer
dim shared gFuncao(cFuncaoCapacidade) as string
dim shared gFuncaoArgs(cFuncaoCapacidade) as string
dim shared gFuncaoArgsQtd(cFuncaoCapacidade) as integer
dim shared gLocal(cLocalCapacidade) as string
dim shared gLocalTipo(cLocalCapacidade) as string
dim shared gLocalRaiz(cLocalCapacidade) as string
dim shared gLocalRaizTipo(cLocalCapacidade) as string
dim shared gGlobal(cGlobalCapacidade) as string
dim shared gGlobalTipo(cGlobalCapacidade) as string
dim shared gSeNivel(cNiveisSaida) as integer
dim shared gSeNivelAtual as integer
dim shared gRepeticaoNivelInicio(cNiveisSaida) as integer
dim shared gRepeticaoNivelFim(cNiveisSaida) as integer
dim shared gRepeticaoNivelAtual as integer
dim shared gLocalPos as integer
dim shared gEtapa as integer
dim shared gRotulo as integer
dim shared gRotina as string
dim shared gRotinaRotuloFim as integer
dim shared gRotinaRotuloPula as integer
dim shared gRotinaTipo as string
dim shared gImportaEndereco as string
dim shared gImportaPrint as integer
dim shared gImportaPrintStr as integer
dim shared gImportaPrintInt as integer
dim shared gImportaStrConcat as integer
dim shared gImportaStrCopy as integer

gImportaPrint = 0
gImportaPrintStr = 0
gImportaPrintInt = 0
gImportaStrConcat = 0
gImportaStrCopy = 0

gSeNivelAtual = 0
gRepeticaoNivelAtual = 0
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

sub StrExpr2(global as integer, destino as string)
    dim pulo as integer
    if ValidaTipo(cTipoString) then
        ExprString
        EmiteMovB16A16
        EmiteMovA16SegCodigo
        EmitePushA16
        EmitePushB16
        EmiteChamaFuncao "__str_concat"
        EmiteAddPilhaValor 4
    end if
end sub

sub StrExpr(global as integer, destino as string)
    StrExpr2 global, destino
end sub

sub PtrExpr()
    
end sub

sub Declara()
    dim global as integer
    dim rotuloPulo as integer
    dim rotulo as integer
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
        rotuloPulo = NovoRotulo
        EmitePuloRotuloNro rotuloPulo
        if tipo$ = "string" then
            EmiteDeclaraVarGlobal nome$, 4
            rotulo = NovoRotulo
            EmiteRotuloNro rotulo
            if Valida(cTipoOpMatematica, "*") then
                Exige cTipoOpMatematica, "*", "Esperado '*' ou fim da linha", "dim variavel as string * 123"
                EmitePreparaStringGlobal TInteger
                ExigeTipo cTipoInteger, "Esperado o tamanho da string", "dim variavel as string * 123"
            else
                EmitePreparaStringGlobal cTamStringPadrao
            end if
            EmiteRotuloNro rotuloPulo
            EmiteMovVarGlobalStringPrep nome$, rotulo
        elseif tipo$ = "ptrbyte" then
            EmiteDeclaraVarGlobal nome$, 4
            EmiteRotuloNro rotuloPulo
        elseif tipo$ = "ptrword" then
            EmiteDeclaraVarGlobal nome$, 4
            EmiteRotuloNro rotuloPulo
        else 
            EmiteDeclaraVarGlobal nome$, 2
            EmiteRotuloNro rotuloPulo
        end if
    else
        LocalCadastra nome$, tipo$
        if tipo$ = "string" then
            gLocalPos = gLocalPos - 4
            EmiteDeclaraVarLocal nome$, gLocalPos
            gLocalPos = gLocalPos - 2 - cTamStringPadrao
            EmitePreparaStringLocal cTamStringPadrao, nome$, gLocalPos
            EmiteMovVarLocalStringPrep nome$, gLocalPos
            EmiteSubPilhaValor 4 + cTamStringPadrao + 2
        elseif tipo$ = "ptrbyte"
            gLocalPos = gLocalPos - 4
            EmiteDeclaraVarLocal nome$, gLocalPos
            EmiteSubPilhaValor 4
        elseif tipo$ = "ptrword"
            gLocalPos = gLocalPos - 4
            EmiteDeclaraVarLocal nome$, gLocalPos
            EmiteSubPilhaValor 4
        else 
            gLocalPos = gLocalPos - 2
            EmiteDeclaraVarLocal nome$, gLocalPos
            EmiteSubPilhaValor 2
        end if
    end if
    if Valida(cTipoOpLogica, "=") then
        Prox
        if tipo$ = "string" then
            Erro "Expressao nao suportada na declaracao"
        elseif tipo$ = "ptrbyte" then
            Erro "Expressao nao suportada na declaracao"
        elseif tipo$ = "ptrword" then
            Erro "Expressao nao suportada na declaracao"
        else
            Expr
        end if
        if global = 1 then
            EmiteMovVarGlobalA16 nome$
        else
            EmiteMovVarLocalA16 nome$
        end if
    end if
    ExigeFimDaLinha "Esperado fim da linha", "dim nome as tipo"
end sub

sub Assembly()
    dim emiteAsm as integer
    emiteAsm = 0
    Exige cTipoId, "asm", "Esperado o comando 'asm'", "asm nasm ""xor ax, ax"""
    select case T$
    case "nasm"
        if gFormato = cFormatoNasm then
            emiteAsm = 1
        end if
    case "osasm"
        if gFormato = cFormatoOsasm then
            emiteAsm = 1
        end if
    case "tinyasm"
        Erro "Usar 'nasm' ao inves de 'tinyasm'"
        if gFormato = cFormatoNasm then
            emiteAsm = 1
        end if
    end select

    do while TentaProxIgnora <> 0
        if emiteAsm = 1 then Emite T$ 
    loop

end sub

sub SubRotina()
    dim varPos as integer
    dim varNome as string
    varPos = 2
    gEtapa = 0
    gLocalPos = 0
    gFuncaoAtual = gFuncaoAtual + 1
    gRotinaRotuloPula = NovoRotulo
    gRotinaRotuloFim = NovoRotulo
    ExigeId "sub", "Esperado 'sub'", "sub Rotina(arg as integer, arg as string)"
    gRotina$ = T$
    gFuncao$(gFuncaoAtual) = T$
    gFuncaoArgs$(gFuncaoAtual) = ""
    gFuncaoArgsQtd(gFuncaoAtual) = 0
    gRotinaTipo$ = "sub"
    EmitePuloRotuloNro gRotinaRotuloPula
    EmiteRotuloTexto T$
    EmiteFuncaoInicio
    ExigeTipo cTipoId, "Esperado nome da rotina", "sub Rotina(arg as integer, arg as string)"
    gNivel = gNivel + 1
    LocalLimpa
    if Valida(cTipoOutro, "(") then
        Exige cTipoOutro, "(", "Esperado '('", "sub Rotina(arg as integer, arg as string)"
        do while not Valida(cTipoOutro, ")")
            varPos = varPos + 2
            EmiteDeclaraVarLocal T$, varPos
            varNome$ = T$
            ExigeTipo cTipoId, "Esperado nome do argumento", "arg as integer"
            ExigeId "as", "Esperado 'as' depois do nome da variavel", "arg as integer"
            select case T$
            case "integer"
                LocalCadastra varNome$, T$
            case "string"
                LocalCadastra varNome$, T$
            case else
                Erro "Tipo nao suportado"
            end select
            gFuncaoArgs$(gFuncaoAtual) = gFuncaoArgs$(gFuncaoAtual) + "," + T$
            gFuncaoArgsQtd(gFuncaoAtual) = gFuncaoArgsQtd(gFuncaoAtual) + 1
            ExigeTipo cTipoId, "Esperado tipo da variavel depois de 'as'", "arg as integer"
            if Valida(cTipoOutro, ",") then ExigeTipo cTipoOutro, "Esperado virgula entre argumentos", "arg1 as integer, arg2 as integer"
        loop
        Exige cTipoOutro, ")", "Esperado ')'", "sub Rotina(arg as integer, arg as string)"
    end if
    ExigeFimDaLinha "Esperado fim da linha", "sub Rotina(arg as integer, arg as string)"
end sub

sub FimSubRotina()
    EmiteRotuloNro gRotinaRotuloFim
    EmiteFuncaoFim
    EmiteRotuloNro gRotinaRotuloPula
    ExigeId "sub", "Esperado 'sub'", "end sub"
    ExigeFimDaLinha "Esperado fim da linha", "end sub"
    gRotina$ = ""
    gRotinaTipo$ = ""
    gNivel = 0
end sub

sub AtribuiLocal()
    dim dest as string
    dest$ = T$
    ExigeTipo cTipoId, "Esperado variavel", "variavel = 0"
    Exige cTipoOpLogica, "=", "Esperado variavel", "variavel = 0"
    if LocalTipo$(dest$) = "string" then
        StrExpr 0, T$
    else
        Expr
        EmiteMovVarLocalA16 dest$
    end if
    ExigeFimDaLinha "Esperado fim da linha", "variavel = 0"
end sub

sub AtribuiGlobal()
    dim dest as string
    dest$ = T$
    ExigeTipo cTipoId, "Esperado variavel", "variavel = 0"
    Exige cTipoOpLogica, "=", "Esperado variavel", "variavel = 0"
    if GlobalTipo$(dest$) = "string" then
        StrExpr 1, T$
    else
        Expr
        EmiteMovVarGlobalA16 dest$
    end if
    ExigeFimDaLinha "Esperado fim da linha", "variavel = 0"
end sub

sub ChamaFuncao()
    dim nome as string
    dim args as integer
    dim func as integer
    dim argPos as integer
    dim argTipo as string
    nome$ = T$
    EmiteChamaFuncao "__mem_aloca"
    func = FuncaoExiste(nome$)
    ExigeTipo cTipoId, "Esperado o nome da rotina", "Rotina arg1, arg2"
    if func == 0 then 
        ErroExemplo "Esperado o nome da rotina", "Rotina arg1, arg2"
    end if
    args = 0
    do while not ValidaFimDaLinha()
        argTipo$ = ""
        for argPos = argPos to len(gFuncaoArgs$(func))
            if mid$(gFuncaoArgs$(func), argPos, 1) = "," then
                argPos = argPos + 1
                exit for
            end if
            argTipo$ = argTipo$ + mid$(gFuncaoArgs$(func), argPos, 1)
        next
        select case argTipo$
        case "string"
            EmiteChamaFuncao "__mem_str"
            StrExpr 2, ""
        case "integer"
            Expr
        case ""
            ExigeFimDaLinha "Esperado fim da linha", "Rotina arg1, arg2"
        case else
            Erro "Tipo de argumento nao suportado: " + argTipo$
        end select
    loop
    EmiteChamaFuncao "__mem_libera"
    EmiteChamaFuncao nome$
    ExigeFimDaLinha "Esperado fim da linha", "Rotina arg1, arg2"
end sub

sub ProcessaPrint()
    dim enter as integer
    dim pula as integer
    dim conteudo as integer
    enter = 1
    ExigeId "print", "Esperado 'print'", "print ""texto"""
    gImportaPrint = gImportaPrint + 1
    if ValidaFimDaLinha() then
        EmiteChamaFuncao "__print_enter"
        exit sub
    end if
    do while not ValidaFimDaLinha()
        if ValidaTipo(cTipoString) then
            gImportaPrintStr = gImportaPrintStr + 1
            conteudo = NovoRotulo
            pula = NovoRotulo
            EmitePuloRotuloNro pula
            EmiteRotuloNro conteudo
            EmiteConstString T$
            EmiteRotuloNro pula
            EmiteMovA16SegCodigo
            EmitePushA16
            EmiteMovA16RotuloNro conteudo
            EmitePushA16
            EmiteChamaFuncao "__print_str"
            EmiteAddPilhaValor 4
            ExigeTipo cTipoString, "Esperado uma string", "print ""Texto"""
        elseif ValidaTipo(cTipoInteger) then
            gImportaPrintInt = gImportaPrintInt + 1
            EmiteMovA16Valor TInteger
            EmitePushA16
            EmiteChamaFuncao "__print_int"
            EmiteAddPilhaValor 2
            ExigeTipo cTipoInteger, "Esperado um integer", "print 123"
        else
            ErroExemplo "Esperado conteudo do print", "print ""Texto"""
        end if
        enter = 1
        if Valida(cTipoOutro, ";") then
            enter = 0
            Prox
        elseif not ValidaFimDaLinha() then
            Exige cTipoOpMatematica, "+", "Esperado concatenacao de texto ou separador de campos (';')", "print ""Texto"" + teste$"
            exit do
        end if
    loop
    if enter = 1 then EmiteChamaFuncao "__print_enter"
    ExigeFimDaLinha "Esperado o fim da linha", "print ""Texto"""
end sub

sub ProcessaIf()
    dim inicio as integer
    inicio = NovoRotulo
    gSeNivelAtual = gSeNivelAtual + 1
    gSeNivel(gSeNivelAtual) = NovoRotulo
    Prox
    Expr
    ExigeId("then", "Esperado 'then' apos a comparacao", "if a > b then")
    EmiteCmpA16Valor 0
    EmitePuloSeDifRotuloNro inicio
    EmitePuloRotuloNro gSeNivel(gSeNivelAtual)
    EmiteRotuloNro inicio
    if ValidaFimDaLinha() then
        ExigeFimDaLinha "Esperado fim da linha", "if a > 0 then"
    else
        Processa
        EmiteRotuloNro gSeNivel(gSeNivelAtual)
        gSeNivel(gSeNivelAtual) = 0
        gSeNivelAtual = gSeNivelAtual - 1
        ExigeFimDaLinha "Esperado fim da linha apos o comando", "if a > 0 then comando"
    end if
end sub

sub ProcessaFimIf()
    EmiteRotuloNro gSeNivel(gSeNivelAtual)
    gSeNivel(gSeNivelAtual) = 0
    gSeNivelAtual = gSeNivelAtual - 1
    Prox
    ExigeFimDaLinha "Esperado fim da linha", "end if"
end sub

sub ProcessaDo()
    dim ok as integer
    dim tipo as string
    gRepeticaoNivelAtual = gRepeticaoNivelAtual + 1
    ok = NovoRotulo
    gRepeticaoNivelInicio(gRepeticaoNivelAtual) = NovoRotulo
    gRepeticaoNivelFim(gRepeticaoNivelAtual) = NovoRotulo
    Prox
    EmiteRotuloNro gRepeticaoNivelInicio(gRepeticaoNivelAtual)
    if not ValidaFimDaLinha() then
        tipo$ = T$
        Prox
        Expr
        EmiteCmpA16Valor 0
        if tipo$ = "while" then
            EmitePuloSeDifRotuloNro ok
        elseif tipo$ = "until" then
            EmitePuloSeIgualRotuloNro ok
        else
            ErroExemplo "Esperado fim da linha ou 'while' ou 'until'", "do while a < 2"
        end if
        EmitePuloRotuloNro gRepeticaoNivelFim(gRepeticaoNivelAtual)
    end if
    EmiteRotuloNro ok
    ExigeFimDaLinha "Esperado fim da linha", "loop"
end sub

sub ProcessaLoop()
    dim tipo as string
    Prox
    if not ValidaFimDaLinha() then
        tipo$ = T$
        Prox
        Expr
        EmiteCmpA16Valor 0
        if tipo$ = "while" then
            EmitePuloSeDifRotuloNro gRepeticaoNivelInicio(gRepeticaoNivelAtual)
        elseif tipo$ = "until" then
            EmitePuloSeIgualRotuloNro gRepeticaoNivelInicio(gRepeticaoNivelAtual)
        else
            ErroExemplo "Esperado fim da linha ou 'while' ou 'until'", "loop while a < 2"
        end if
        EmitePuloRotuloNro gRepeticaoNivelFim(gRepeticaoNivelAtual)
    end if
    EmitePuloRotuloNro gRepeticaoNivelInicio(gRepeticaoNivelAtual)
    EmiteRotuloNro gRepeticaoNivelFim(gRepeticaoNivelAtual)
    gRepeticaoNivelInicio(gRepeticaoNivelAtual) = 0
    gRepeticaoNivelFim(gRepeticaoNivelAtual) = 0
    gRepeticaoNivelAtual = gRepeticaoNivelAtual - 1
end sub

sub ProcessaBreak()
    if gRepeticaoNivelAtual = 0 then 
        Erro "Este comando apenas pode ser executado de dentro de uma repeticao/loop"
    end if
    EmitePuloRotuloNro gRepeticaoNivelFim(gRepeticaoNivelAtual)
end sub

sub ProcessaContinue()
    if gRepeticaoNivelAtual = 0 then 
        Erro "Este comando apenas pode ser executado de dentro de uma repeticao/loop"
    end if
    EmitePuloRotuloNro gRepeticaoNivelInicio(gRepeticaoNivelAtual)
end sub

sub ProcessaFor()
    dim ok as integer
    dim inicio as integer
    dim variavel as string
    gRepeticaoNivelAtual = gRepeticaoNivelAtual + 1
    ok = NovoRotulo
    inicio = NovoRotulo
    gRepeticaoNivelInicio(gRepeticaoNivelAtual) = NovoRotulo
    gRepeticaoNivelFim(gRepeticaoNivelAtual) = NovoRotulo
    Prox
    variavel$ = T$
    ExigeTipo cTipoId, "Esperado variavel depois do 'for'", "for i = 1 to 10 step 2"
    Exige cTipoOpLogica, "=", "Esperado '=' depois da variavel", "for i = 1 to 10 step 2"
    Expr
    if LocalExiste(variavel$) then
        EmiteMovVarLocalA16 variavel$
    elseif GlobalExiste(variavel$) then
        EmiteMovVarGlobalA16 variavel$
    else
        ErroExemplo "Variavel nao existe", "for i = 1 to 10 step 2"
    end if
    ExigeId "to","Esperado um 'to' apos o valor inicial", "for i = 1 to 10 step 2"
    EmiteRotuloNro inicio
    Expr
    if LocalExiste(variavel$) then
        EmiteMovB16VarLocal variavel$
    elseif GlobalExiste(variavel$) then
        EmiteMovB16VarGlobal variavel$
    end if
    EmiteCmpB16A16
    EmitePuloSeMenorIgualRotuloNro ok
    EmitePuloRotuloNro gRepeticaoNivelFim(gRepeticaoNivelAtual)
    EmiteRotuloNro gRepeticaoNivelInicio(gRepeticaoNivelAtual)
    if Valida(cTipoId, "step") then
        Expr
        if LocalExiste(variavel$) then
            EmiteAddVarLocalA16 variavel$
        elseif GlobalExiste(variavel$) then
            EmiteAddVarGlobalA16 variavel$
        end if
    else
        if LocalExiste(variavel$) then
            EmiteIncVarLocal variavel$
        elseif GlobalExiste(variavel$) then
            EmiteIncVarGlobal variavel$
        end if
    end if
    EmitePuloRotuloNro inicio
    EmiteRotuloNro ok
    ExigeFimDaLinha "Esperado fim da linha", "for i = 1 to 10 step 2"
end sub

sub ProcessaNext()
    Prox
    EmitePuloRotuloNro gRepeticaoNivelInicio(gRepeticaoNivelAtual)
    EmiteRotuloNro gRepeticaoNivelFim(gRepeticaoNivelAtual)
    gRepeticaoNivelInicio(gRepeticaoNivelAtual) = 0
    gRepeticaoNivelFim(gRepeticaoNivelAtual) = 0
    gRepeticaoNivelAtual = gRepeticaoNivelAtual - 1
end sub

sub Processa()
    if ValidaTipo(cTipoComentario) or ValidaTipo(cTipoFimDaLinha) then
        exit sub
    end if
    if Valida(cTipoId, "dim") then
        if gEtapa <> 0 then
            Erro "Todas as declaracoes de variaveis devem ficar no topo"
        end if
        Declara
        exit sub
    elseif Valida(cTipoId, "asm") then
        Assembly
        exit sub
    elseif Valida(cTipoId, "sub") then
        SubRotina
        exit sub
    elseif Valida(cTipoId, "end") then
        ExigeId "end", "Esperado 'end'", "end"
        if Valida(cTipoId, "sub") then
            FimSubRotina
        elseif Valida(cTipoId, "if") then
            ProcessaFimIf
        end if
        exit sub
    end if
    gEtapa = 1
    if Valida(cTipoId, "print") then
        ProcessaPrint
    elseif Valida(cTipoId, "if") then
        ProcessaIf
    elseif Valida(cTipoId, "loop") then
        ProcessaLoop
    elseif Valida(cTipoId, "do") then
        ProcessaDo
    elseif Valida(cTipoId, "break") then
        ProcessaBreak
    elseif Valida(cTipoId, "continue") then
        ProcessaContinue
    elseif Valida(cTipoId, "for") then
        ProcessaFor
    elseif Valida(cTipoId, "next") then
        ProcessaNext
    elseif LocalExiste(T$) > 0 then
        AtribuiLocal
    elseif GlobalExiste(T$) > 0 then
        AtribuiGlobal
    elseif FuncaoExiste(T$) > 0 then
        ChamaFuncao
    else
        Erro "Comando nao suportado ou nao reconhecido"
    end if
end sub

sub ProcessaArq(arq as string)
    dim antNivel as integer
    dim antArq as integer
    dim antArqNome as string
    dim antLinha as integer

    antArq = gArq
    antArqNome = gArqNome
    antLinha = gLinha
    antNivel = gNivel

    gArq = freefile
    gArqNome$ = arq$
    
    EmiteComentario "BAS: " + arq$

    open arq$ for input as #gArq
    
    gLinha = 1

    do while not eof(gArq)
        print ".";
        Leia
        Processa
    loop
    
    close #gArq

    gLinha = antLinha
    gArqNome = antArqNome
    gArq = antArq
    gNivel = antNivel
end sub

print "HCBasic Compilador para 8086 v0.1"
print "Copyright (c) 2022, Humberto Costa dos Santos Junior"
print

Argumentos

if gArgsQtd <> 4 then
ajuda:
    print "Modo de uso: hcb [entrada .bas] [saida sem extensao] [nasm|tinyasm|osasm] [endereco biblioteca]"
    print gArgsQtd
    system
end if

select case gArgs$(3)
case "nasm"
    gExt = ".asm"
    gFormato = cFormatoNasm
case "tinyasm"
    gExt = ".asm"
    gFormato = cFormatoNasm
case "osasm"
    gExt = ".s"
    gFormato = cFormatoOsasm
case else
    goto ajuda
end select

gImportaEndereco$ = gArgs$(4)

gSaida = freefile

gNivel = 0

print "Processando "+ gArgs$(2) + gExt$;
open (gArgs$(2) + gExt$) for output as #gSaida

EmiteComentario "Gerado com o HCBasic"

ProcessaArq gImportaEndereco$ + "header.bas"

EmiteComentario "Inicio"

EmiteFuncaoInicio

ProcessaArq gArgs$(1)

EmiteFuncaoFim

if gImportaPrint > 0 then
    gEtapa = 0
    ProcessaArq gImportaEndereco$ + "print.bas"
end if
if gImportaPrintStr > 0 then
    gEtapa = 0
    ProcessaArq gImportaEndereco$ + "prints.bas"
end if
if gImportaPrintInt > 0 then
    gEtapa = 0
    ProcessaArq gImportaEndereco$ + "printi.bas"
end if
if gImportaStrConcat > 0 then
    gEtapa = 0
    ProcessaArq gImportaEndereco$ + "concat.bas"
end if
if gImportaStrCopy > 0 then
    gEtapa = 0
    ProcessaArq gImportaEndereco$ + "copy.bas"
end if

ProcessaArq gImportaEndereco$ + "footer.bas"

close #gSaida
if gErros = 0 then
    print "[ OK ]"
else 
    print
    print "[ Foram encontrados" +str$(gErros) + " erros ]"
    system 1
end if


