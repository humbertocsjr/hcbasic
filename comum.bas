function NovoRotulo
    NovoRotulo = gRotulo
    gRotulo = gRotulo + 1
end function

sub Erro(msg as string)
    gErros = gErros + 1
    print
    print "Erro: " + gArqNome$ + ":" + str$(gLinha) + ":" + str$(gColuna(gTrechoAtual)) + ": " + msg + " "
    print " Trecho: [" + str$(gTipo(gTrechoAtual)) + " ]: '" + gTrecho$(gTrechoAtual) + "'";
end sub

sub ErroExemplo(msg as string, exemplo as string)
    gErros = gErros + 1
    Erro msg
    print
    if exemplo <> "" then print " Exemplo de uso: " + exemplo;
end sub

sub ErroFimInesperado(txt as string)
    Erro "Esperado "+ txt + ", porem encontrado fim da linha"
end sub

sub ErroFimInesperadoOpMatematica()
    ErroFimInesperado "Valor de Operacao Matematica"
end sub

sub ErroNaoImplementado()
    Erro "Nao implementado"
end sub

sub GlobalCadastra(nome as string, tipo as string)
    dim i as integer
    for i = 1 to cGlobalCapacidade
        if gGlobal$(i) = "" then
            gGlobal$(i) = nome
            gGlobalTipo$(i) = tipo
            exit sub
        end if
    next
    Erro "Estouro da capacidade de variaveis globais simultaneas"
end sub

function GlobalTipo$(nome as string)
    dim i as integer
    for i = 1 to cLocalCapacidade
        if gGlobal$(i) = nome$ then
            GlobalTipo$ = gGlobalTipo$(i)
            exit function
        end if
    next
    GlobalTipo$ = ""
end function

function GlobalExiste(nome as string)
    dim i as integer
    for i = 1 to cGlobalCapacidade
        if gGlobal$(i) = nome$ then
            GlobalExiste = i
            exit function
        end if
    next
    GlobalExiste = 0
end function

sub LocalCadastra(nome as string, tipo as string)
    dim i as integer
    for i = 1 to cLocalCapacidade
        if gNivel = 0 then
            if gLocalRaiz$(i) = "" then
                gLocalRaiz$(i) = nome$
                gLocalRaizTipo$(i) = tipo$
                exit sub
            end if
        else
            if gLocal$(i) = "" then
                gLocal$(i) = nome$
                gLocalTipo$(i) = tipo$
                exit sub
            end if
        end if
    next
    Erro "Estouro da capacidade de variaveis locais simultaneas"
end sub

function LocalExiste(nome as string)
    dim i as integer
    for i = 1 to cLocalCapacidade
        if gNivel = 0 then
            if gLocalRaiz$(i) = nome$ then
                LocalExiste = i
                exit function
            end if
        else
            if gLocal$(i) = "" then
                LocalExiste = i
                exit function
            end if
        end if
    next
    LocalExiste = 0
end function

function LocalTipo$(nome as string)
    dim i as integer
    for i = 1 to cLocalCapacidade
        if gNivel = 0 then
            if gLocalRaiz$(i) = nome$ then
                LocalTipo$ = gLocalRaizTipo$(i)
                exit function
            end if
        else
            if gLocal$(i) = nome$ then
                LocalTipo$ = gLocalTipo$(i)
                exit function
            end if
        end if
    next
    LocalTipo$ = ""
end function

sub GlobalLimpa()
    dim i as integer
    for i = 1 to cGlobalCapacidade
        gGlobal$(i) = ""
        gGlobalTipo$(i) = ""
    next
end sub

sub LocalLimpa()
    dim i as integer
    for i = 1 to cLocalCapacidade
        gLocal$(i) = ""
        gLocalTipo$(i) = ""
    next
end sub

sub LocalRaizLimpa()
    dim i as integer
    for i = 1 to cLocalCapacidade
        gLocalRaiz$(i) = ""
        gLocalRaizTipo$(i) = ""
    next
end sub

function FuncaoExiste(nome as string)
    dim i as integer
    for i = 1 to cFuncaoCapacidade
        if gFuncao$(i) = nome$ then
            FuncaoExiste = i
            exit function
        end if
    next
    FuncaoExiste = 0
end function

function TentaProx
    gTrechoAtual = gTrechoAtual + 1
    if gTrechoAtual > cTrechoCapacidade then 
        TentaProx = 0
    elseif gTrechoAtual > gTrechoQtd then
        TentaProx = 0
    else
        TentaProx = 1
    end if
end function

function TentaProxIgnora
    TentaProxIgnora = TentaProx()
    if gTipo(gTrechoAtual) = cTipoComentario then
        TentaProxIgnora = TentaProx()
    end if
end function

sub Prox
    if TentaProxIgnora = 0 then
        Erro "Fim da linha inesperado"
    end if
end sub



function T$
    if gTrechoAtual > cTrechoCapacidade then 
        T$ = ""
    elseif gTrechoAtual > gTrechoQtd then
        T$ = ""
    else
        T$ = gTrecho$(gTrechoAtual)
    end if
end function

function TInteger
    TInteger = val(T$)
end function

sub ImprimeTrechos()
    dim i as integer
    for i = 1 to gTrechoQtd
        print "[" +  gTrecho$(i) + "] ";
    next
    print
end sub

function ValidaTipo(tipo as integer)
    ValidaTipo = (tipo = gTipo(gTrechoAtual))
end function

function ValidaTipoBasic()
    ValidaTipoBasic = ValidaTipo(cTipoId) or ((T$ = "string")or(T$ = "integer"))
end function

sub ExigeTipo(tipo as integer, msg as string, exemplo as string)
    if not ValidaTipo(tipo) then
        ErroExemplo msg, exemplo
    end if
    Prox
end sub

sub ExigeTipoBasic(msg as string, exemplo as string)
    if not ValidaTipoBasic() then
        ErroExemplo msg, exemplo
    end if
    Prox
end sub

sub Exige(tipo as integer, id as string, msg as string, exemplo as string)
    if not ValidaTipo(tipo) then
        ErroExemplo msg + " [" + str$(tipo) + " ]", exemplo 
    end if
    if T$ <> id then
        ErroExemplo msg, exemplo
    end if
    Prox
end sub

sub ExigeId(id as string, msg as string, exemplo as string)
    Exige cTipoId, id, msg, exemplo
end sub

sub ExigeFimDaLinha(msg as string, exemplo as string)
    if (not ValidaTipo(cTipoFimDaLinha)) and (not ValidaTipo(cTipoVazio)) then
        ErroExemplo msg + " [" + str$(tipo) + " ]", exemplo 
    end if
end sub

function Valida(tipo as integer, nome as string)
    Valida = (ValidaTipo(tipo) and (T$ = nome))
end function

function ValidaFimDaLinha()
    ValidaFimDaLinha = ValidaTipo(cTipoFimDaLinha)
end function

function ValidaNivelSoma()
    ValidaNivelSoma = (ValidaTipo(cTipoOpMatematica) and ((T$ = "+") or (T$ = "-")))
end function

function ValidaNivelMultiplicacao()
    ValidaNivelMultiplicacao = (ValidaTipo(cTipoOpMatematica) and ((T$ = "*") or (T$ = "/") or (T$ = "mod")))
end function

function ValidaNivelLogica()
    ValidaNivelLogica = (ValidaTipo(cTipoOpLogica))
end function

function EhLetra(c as string)
    EhLetra = ((lcase$(c$) >= "a") and (lcase$(c$) <= "z"))
end function

function EhNumero(c as string)
    EhNumero = ((c$ >= "0") and (c$ <= "9"))
end function

function EhAlfanum(c as string)
    EhAlfanum = (EhLetra(c$) or EhNumero(c$))
end function

function EhEnderecoArq(c as string)
    EhEnderecoArq = (EhAlfanum(c$) or (c$ = ".") or (c$ = "/") or (c$ = "\") or (c$ = ":") or (c$ = "_"))
end function

function EhOpMatematica(c as string)
    EhOpMatematica = ((c$ = "+") or (c$ = "-") or (c$ = "/") or (c$ = "*") or (c$ = "mod"))
end function

function EhOpLogica(c as string)
    EhOpLogica = ((c$ = "<") or (c$ = "<=") or (c$ = ">") or (c$ = ">=") or (c$ = "="))
end function

sub Argumentos()
    dim i as integer
    dim etapa as integer
    dim c as string
    gArgsQtd = 0
    etapa = 0
    for i = 1 to len(command$)
        c$ = mid$(command$, i, 1)
        reprocessa:
        select case etapa
        case 0
            if EhEnderecoArq(c$) or c$ = "/" or c$ = "-" then
                etapa = 1
                gArgsQtd = gArgsQtd + 1
                gArgs$(gArgsQtd) = c
            elseif c$ = chr$(34) then
                etapa = 2
                gArgsQtd = gArgsQtd + 1
                gArgs$(gArgsQtd) = ""
            end if
        case 1
            if EhEnderecoArq(c$) then
                gArgs$(gArgsQtd) = gArgs$(gArgsQtd) + c
            else
                etapa = 0
                goto reprocessa
            end if
        case 2
            if c$ = chr$(34) then
                etapa = 0
            else
                gArgs$(gArgsQtd) = gArgs$(gArgsQtd) + c
            end if
        end select
    next
    
end sub

sub Leia()
    dim i as integer
    dim etapa as integer
    dim c as string
    dim cProx as string

    for i = 1 to cTrechoCapacidade
        gTipo(i) = cTipoVazio
        gTrecho$(i) = ""
        gColuna(i) = 0
    next

    gLinha = gLinha + 1

    gComando$ = ""
    line input #gArq, gComando$
    gTrechoAtual = 0

    etapa = 0
    for i = 1 to len(gComando$)
        c$ = mid$(gComando$, i, 1)
        cProx$ = mid$(gComando$, i + 1, 1)
        reprocessa:
        if (gTrechoAtual + 1) > cTrechoCapacidade then
            Erro "Estouro da capacidade de trechos de codigo por linha"
        end if
        select case etapa
        case 0
            if (EhLetra(c$) or (c$ = "_")) then
                etapa = 1
                gTrechoAtual = gTrechoAtual + 1
                gTrecho$(gTrechoAtual) = lcase$(c$)
                gTipo(gTrechoAtual) = cTipoId
                gColuna(gTrechoAtual) = i
            elseif c$ = chr$(34) then
                etapa = 2
                gTrechoAtual = gTrechoAtual + 1
                gTrecho$(gTrechoAtual) = ""
                gTipo(gTrechoAtual) = cTipoString
                gColuna(gTrechoAtual) = i
            elseif EhNumero(c$) then
                etapa = 3
                gTrechoAtual = gTrechoAtual + 1
                gTrecho$(gTrechoAtual) = c$
                gTipo(gTrechoAtual) = cTipoInteger
                gColuna(gTrechoAtual) = i
            elseif EhOpMatematica(c$) then
                etapa = 4
                gTrechoAtual = gTrechoAtual + 1
                gTrecho$(gTrechoAtual) = c$
                gTipo(gTrechoAtual) = cTipoOpMatematica
                gColuna(gTrechoAtual) = i
            elseif EhOpLogica(c$) then
                etapa = 5
                gTrechoAtual = gTrechoAtual + 1
                gTrecho$(gTrechoAtual) = c$
                gTipo(gTrechoAtual) = cTipoOpLogica
                gColuna(gTrechoAtual) = i
            elseif (c$ = "#") then
                etapa = 6
                gTrechoAtual = gTrechoAtual + 1
                gTrecho$(gTrechoAtual) = ""
                gTipo(gTrechoAtual) = cTipoPreprocessamento
                gColuna(gTrechoAtual) = i
            elseif (c$ = "'") then
                etapa = 7
                gTrechoAtual = gTrechoAtual + 1
                gTrecho$(gTrechoAtual) = ""
                gTipo(gTrechoAtual) = cTipoComentario
                gColuna(gTrechoAtual) = i
            elseif (c$ = " ") or (c$ = chr$(9)) then
            elseif (c$ = chr$(0)) then
                exit for
            else 
                gTrechoAtual = gTrechoAtual + 1
                gTrecho$(gTrechoAtual) = c$
                gTipo(gTrechoAtual) = cTipoOutro
                gColuna(gTrechoAtual) = i
            end if
        case 1
            if (EhAlfanum(c$) or (c$ = "_")) then
                gTrecho$(gTrechoAtual) = gTrecho$(gTrechoAtual) + lcase$(c$)
            else
                if(gTrecho$(gTrechoAtual) = "mod") then
                    gTipo(gTrechoAtual) = cTipoOpMatematica
                elseif(gTrecho$(gTrechoAtual) = "rem") then
                    gTipo(gTrechoAtual) = cTipoComentario
                    gTrecho$(gTrechoAtual) = ""
                    etapa = 7
                else
                    etapa = 0
                    goto reprocessa
                end if
            end if
        case 2
            if c$ = chr$(34) and cProx$ = chr$(34) then
                gTrecho$(gTrechoAtual) = gTrecho$(gTrechoAtual) + c$
                i = i + 1
            elseif c$ = chr$(34) then
                etapa = 0
            else
                gTrecho$(gTrechoAtual) = gTrecho$(gTrechoAtual) + c$
            end if
        case 3
            if EhNumero(c$) then
                gTrecho$(gTrechoAtual) = gTrecho$(gTrechoAtual) + c$
            else
                etapa = 0
                goto reprocessa
            end if
        case 4
            etapa = 0
            goto reprocessa
        case 5
            etapa = 0
            if (gTrecho$(gTrechoAtual) = "<") and (c$ = "=") then
                gTrecho$(gTrechoAtual) = gTrecho$(gTrechoAtual) + c
            elseif (gTrecho$(gTrechoAtual) = "<") and (c$ = ">") then
                gTrecho$(gTrechoAtual) = gTrecho$(gTrechoAtual) + c
            elseif (gTrecho$(gTrechoAtual) = ">") and (c$ = "=") then
                gTrecho$(gTrechoAtual) = gTrecho$(gTrechoAtual) + c
            else
                goto reprocessa
            end if
        case 6
            if EhAlfanum(c$) then
                gTrecho$(gTrechoAtual) = gTrecho$(gTrechoAtual) + c
            else
                etapa = 0
                goto reprocessa
            end if
        case 7
            gTrecho$(gTrechoAtual) = gTrecho$(gTrechoAtual) + c
        end select
    next

    gTrechoQtd = gTrechoAtual + 1
    gTipo(gTrechoQtd) = cTipoFimDaLinha
    if gTrechoQtd > 1 then
        gColuna(gTrechoQtd) = gColuna(gTrechoQtd -1)
    end if
    gTrechoAtual = 1
end sub

sub Emite(txt as string)
    print #gSaida, txt
end sub