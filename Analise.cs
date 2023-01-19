class Analise
{
    public List<Fonte> Fontes { get; set; } = new List<Fonte>();
    public List<Modulo> Modulos { get; set; } = new List<Modulo>();

    private TipoVariavel processaTipo(ref Trechos trechos)
    {
        switch(trechos.Atual.Conteudo.ToLower())
        {
            case "int8":
                return TipoVariavel.Int16;
            case "uint8":
                return TipoVariavel.UInt16;
            case "int16":
                return TipoVariavel.Int16;
            case "uint16":
                return TipoVariavel.UInt16;
            case "ptrbytearray":
                return TipoVariavel.PtrByteArray;
            case "ptrwordarray":
                return TipoVariavel.PtrWordArray;
            default:
                trechos.Erro("Esperado um tipo válido");
                return TipoVariavel.Int16;
        }
    }
    private DeclaraVariavel processaDim(NivelPublicidade publi, Modulo mod, bool varDoModulo, ref Trechos trechos)
    {
        trechos.ExigeProximo("Esperado o nome da variável após o 'dim'");
        trechos.ExigeId("Esperado o nome da variável");
        Trecho dimTrecho = trechos.Atual;
        TipoVariavel dimTipo = TipoVariavel.Int16;
        bool dimColecao = false;
        int dimColecaoTam = 0;
        if(trechos.Proximo())
        {
            trechos.ExigeId("as", "Esperado 'as' após o nome da variável");
            trechos.ExigeProximo("Esperado o tipo após o 'as'");
            dimTipo = processaTipo(ref trechos);
        }
        trechos.Proximo();
        DeclaraVariavel dim = new DeclaraVariavel(dimTrecho, mod, varDoModulo, publi, dimTipo, dimColecao, dimColecaoTam);
        return dim;
    }
    private No? processaExpressao7(Modulo mod, Rotina rot, ref Trechos trechos)
    {
        No? ret = null;
        if(trechos.EhTipo(TipoTrecho.Numero))
        {
            ret = new Numero(trechos.Atual, decimal.Parse(trechos.Atual.Conteudo));
            trechos.Proximo();
        }
        else if(trechos.EhTipo(TipoTrecho.NumeroHex))
        {
            ret = new Numero(trechos.Atual, (decimal)ulong.Parse(trechos.Atual.Conteudo, System.Globalization.NumberStyles.HexNumber));
            trechos.Proximo();
        }
        else if(trechos.EhTipo(TipoTrecho.Texto))
        {
            ret = new Texto(trechos.Atual);
            trechos.Proximo();
        }
        else if(trechos.EhTipo(TipoTrecho.AbreParenteses))
        {
            trechos.Proximo();
            ret = processaExpressao(mod, rot, ref trechos);
            trechos.ExigeTipo(TipoTrecho.FechaParenteses, "Esperado ')' após esta expressão");
            trechos.Proximo();
        }
        else if(trechos.EhIdentificador() | trechos.EhTipo(TipoTrecho.Arroba) | trechos.EhTipo(TipoTrecho.Cerquilha))
        {
            LeiaVariavel.TipoLeitura varTipo = LeiaVariavel.TipoLeitura.Comum;
            if(trechos.EhTipo(TipoTrecho.Arroba))
            {
                trechos.Proximo();
                trechos.ExigeId("Esperado o nome da variável");
                varTipo = LeiaVariavel.TipoLeitura.Desvio;
            }
            if(trechos.EhTipo(TipoTrecho.Cerquilha))
            {
                trechos.Proximo();
                trechos.ExigeId("Esperado o nome da variável");
                varTipo = LeiaVariavel.TipoLeitura.Segmento;
            }
            var varModulo = mod.Nome;
            var varNome = trechos.Atual.Conteudo;
            var varTrecho = trechos.Atual;
            trechos.Proximo();
            if(trechos.EhTipo(TipoTrecho.Ponto))
            {
                trechos.Proximo();
                trechos.ExigeId("Esperado o nome da variável");
                varModulo = varNome;
                varNome = trechos.Atual.Conteudo;
                trechos.Proximo();
            }
            ret = new LeiaVariavel(varTrecho, varTipo, varModulo, varNome);
        }
        return ret;
    }
    private No? processaExpressao6(Modulo mod, Rotina rot, ref Trechos trechos)
    {
        No? ret = null;
        if
        (
            trechos.EhOpMatematica("-") | 
            trechos.EhOpMatematica("+")
        )
        {
            trechos.Proximo();
            ret = new OpMatematica(trechos.Anterior, null, processaExpressao7(mod, rot, ref trechos));
        }
        else if
        (
            trechos.EhOpMatematica("~")
        )
        {
            trechos.Proximo();
            ret = new OpLogica(trechos.Anterior, null, processaExpressao7(mod, rot, ref trechos));
        }
        else
        {
            ret = processaExpressao7(mod, rot, ref trechos);
        }
        return ret;
    }
    private No? processaExpressao5(Modulo mod, Rotina rot, ref Trechos trechos)
    {
        No? ret = processaExpressao6(mod, rot, ref trechos);
        while
        (
            trechos.EhOpMatematica("*") | 
            trechos.EhOpMatematica("/") | 
            trechos.EhOpMatematica("mod") | 
            trechos.EhOpMatematica("shl") | 
            trechos.EhOpMatematica("shr") | 
            trechos.EhOpMatematica("rol") | 
            trechos.EhOpMatematica("ror")
        )
        {
            trechos.Proximo();
            ret = new OpMatematica(trechos.Anterior, ret, processaExpressao6(mod, rot, ref trechos));
        }
        return ret;
    }
    private No? processaExpressao4(Modulo mod, Rotina rot, ref Trechos trechos)
    {
        No? ret = processaExpressao5(mod, rot, ref trechos);
        while(trechos.EhOpMatematica("+") | trechos.EhOpMatematica("-"))
        {
            trechos.Proximo();
            ret = new OpMatematica(trechos.Anterior, ret, processaExpressao5(mod, rot, ref trechos));
        }
        return ret;
    }
    private No? processaExpressao3(Modulo mod, Rotina rot, ref Trechos trechos)
    {
        No? ret = processaExpressao4(mod, rot, ref trechos);
        while
        (
            trechos.EhOpLogica("==") | 
            trechos.EhOpLogica(">") |
            trechos.EhOpLogica("<") | 
            trechos.EhOpLogica(">=") |
            trechos.EhOpLogica("<=") |
            trechos.EhOpLogica("<>")
        )
        {
            trechos.Proximo();
            ret = new OpLogica(trechos.Anterior, ret, processaExpressao4(mod, rot, ref trechos));
        }
        return ret;
    }
    private No? processaExpressao2(Modulo mod, Rotina rot, ref Trechos trechos)
    {
        No? ret = processaExpressao3(mod, rot, ref trechos);
        while(trechos.EhOpLogica("or"))
        {
            trechos.Proximo();
            ret = new OpLogica(trechos.Anterior, ret, processaExpressao3(mod, rot, ref trechos));
        }
        return ret;
    }

    private No processaExpressao(Modulo mod, Rotina rot, ref Trechos trechos)
    {
        No? ret = processaExpressao2(mod, rot, ref trechos);
        while(trechos.EhOpLogica("and"))
        {
            trechos.Proximo();
            ret = new OpLogica(trechos.Anterior, ret, processaExpressao2(mod, rot, ref trechos));
        }
        return ret ?? new Nulo(trechos.Atual);
    }

    private Atribuicao processaAtribuicao(Modulo mod, Rotina rot, ref Trechos trechos)
    {
        if(trechos.EhProximoTipo(TipoTrecho.Arroba) | trechos.EhProximoTipo(TipoTrecho.Cerquilha))
        {
            trechos.Proximo();
        }
        bool segmento = trechos.EhTipo(TipoTrecho.Cerquilha);
        bool desvio = trechos.EhTipo(TipoTrecho.Arroba);
        trechos.ExigeProximo("Esperado nome da variavel");
        Trecho varTrecho = trechos.Atual;
        List<string> nomeVar = new List<string>();
        trechos.ExigeId("Esperado nome da variável");
        do
        {
            if(trechos.EhTipo(TipoTrecho.Ponto)) trechos.Proximo();
            trechos.ExigeId("Esperado continuação do nome da variável");
            nomeVar.Add(varTrecho.Conteudo);
            trechos.ExigeProximo("Esperado continuação do nome da variável");
        }
        while(trechos.EhTipo(TipoTrecho.Ponto));
        Atribuicao atrib = new Atribuicao(varTrecho, nomeVar);
        if(segmento) atrib.Tipo = Atribuicao.TipoAtribuicao.Segmento;
        if(desvio) atrib.Tipo = Atribuicao.TipoAtribuicao.Desvio;
        if(trechos.EhTipo(TipoTrecho.Atribuicao))
        {
            trechos.ExigeTipo(TipoTrecho.Atribuicao, "Esperado '=' após o nome da variável");
            trechos.ExigeProximo("Esperado um valor após o '='");
            atrib.Valor = processaExpressao(mod, rot, ref trechos);
        }
        else if(trechos.EhOpMatematica("++"))
        {
            trechos.Proximo();
            atrib.OperacaoEspecial = Atribuicao.TipoOperacaoEspecial.Incrementa;
        }
        else if(trechos.EhOpMatematica("--"))
        {
            trechos.Proximo();
            atrib.OperacaoEspecial = Atribuicao.TipoOperacaoEspecial.Decrementa;
        }
        else trechos.ExigeTipo(TipoTrecho.Atribuicao, "Esperado '=' ou '++' or '--' após o nome da variável");
        return atrib;
    }

    private Se processaSe(Modulo mod, Rotina rot, ref Trechos trechos)
    {
        bool ignoraElse = false;
        trechos.ExigeProximo("Esperado a comparação depois do 'if'");
        Se ret = new Se(trechos.Anterior, processaExpressao(mod, rot, ref trechos));
        trechos.ExigeId("then", "Esperado 'then' após a comparação");
        trechos.Proximo();
        if(trechos.FimDaLinha)
        {
            trechos.ProximaLinha();
            nivelRotina(mod, rot, ret.SeSim, false, ref trechos);
            if(trechos.EhIdentificador("end"))
            {
                trechos.Proximo();
                ignoraElse = true;
            }
        }
        else
        {
            nivelRotina(mod, rot, ret.SeSim, true, ref trechos);
        }
        if(trechos.EhIdentificador("else") & !ignoraElse)
        {
            if(trechos.Proximo())
            {
                nivelRotina(mod, rot, ret.SeNao, true, ref trechos);
            }
            else
            {
                trechos.ProximaLinha();
                nivelRotina(mod, rot, ret.SeNao, false, ref trechos);
                trechos.ExigeId("end", "Esperado 'end' ao final do 'else'");
                trechos.Proximo();
            }
        }
        return ret;
    }

    private Enquanto processaEnquanto(Modulo mod, Rotina rot, ref Trechos trechos)
    {
        trechos.ExigeProximo("Esperado a comparação depois do 'while'");
        Enquanto ret = new Enquanto(trechos.Anterior, processaExpressao(mod, rot, ref trechos));
        if(trechos.FimDaLinha)
        {
            trechos.ProximaLinha();
            nivelRotina(mod, rot, ret.Repete, false, ref trechos);
            trechos.ExigeId("end", "Esperado 'end' após o fim dos comandos do 'while'");
            trechos.Proximo();
        }
        else
        {
            nivelRotina(mod, rot, ret.Repete, true, ref trechos);
        }
        return ret;
    }

    private void nivelRotina(Modulo mod, Rotina rot, List<No> cmds, bool apenasUmComando, ref Trechos trechos)
    {
        do 
        {
            reverifica:
            if(trechos.EhIdentificador("end") | trechos.EhIdentificador("else")) break;
            

            if(trechos.EhIdentificador("dim"))
            {
                rot.Variaveis.Add(processaDim(NivelPublicidade.Local, mod, false, ref trechos));
            }
            else if(trechos.EhIdentificador("let"))
            {
                cmds.Add(processaAtribuicao(mod, rot, ref trechos));
            }
            else if(trechos.EhIdentificador("asm"))
            {
                trechos.Proximo();
                trechos.ExigeTipo(TipoTrecho.Texto, "Esperado comando nativo entre aspas duplas");
                cmds.Add(new Asm(trechos.Atual));
                trechos.Proximo();
            }
            else if(trechos.EhIdentificador("if"))
            {
                cmds.Add(processaSe(mod, rot, ref trechos));
            }
            else if(trechos.EhIdentificador("while"))
            {
                cmds.Add(processaEnquanto(mod, rot, ref trechos));
            }
            else if(trechos.EhIdentificador("return"))
            {
                trechos.Proximo();
                cmds.Add(new Retorna(trechos.Anterior, processaExpressao(mod, rot, ref trechos)));
            }
            else if(trechos.EhIdentificador("goto"))
            {
                trechos.Proximo();
                cmds.Add(new VaPara(trechos.Anterior));
            }
            else if(trechos.EhIdentificador("invoke"))
            {
                throw new NotImplementedException();
            }
            else if(trechos.EhIdentificador() & trechos.EhProximoTipo(TipoTrecho.DoisPontos))
            {
                cmds.Add(new Rotulo(trechos.Atual));
                trechos.Proximo();
                trechos.Proximo();
                goto reverifica;
            }
            else if(trechos.EhIdentificador())
            {
                Trecho chamaTrecho = trechos.Atual;
                string chamaModulo = mod.Nome;
                string chamaRotina = trechos.Atual.Conteudo;
                if(trechos.EhProximoTipo(TipoTrecho.Ponto))
                {
                    trechos.Proximo();
                    trechos.ExigeProximo("Esperado continuação do nome da rotina");
                    trechos.ExigeId("Esperado continuação do nome da rotina");
                    chamaModulo = chamaRotina;
                    chamaRotina = trechos.Atual.Conteudo;
                }
                ChamaRotina chama = new ChamaRotina(chamaTrecho, chamaModulo, chamaRotina);
                cmds.Add(chama);
                if(trechos.Proximo())
                {
                    do
                    {
                        chama.Argumentos.Add(processaExpressao(mod, rot, ref trechos));
                        if(trechos.EhTipo(TipoTrecho.Virgula)) 
                        {
                            trechos.Proximo();
                        }
                        else if(!trechos.FimDaLinha)
                        {
                            break;
                        }
                    } while(!trechos.FimDaLinha);
                }

            }
            else if(!trechos.FimDaLinha)
            {
                trechos.Erro("Comando desconhecido");
            }
            if(apenasUmComando) 
                return;
            else
                trechos.ExigeFimDaLinha("Esperado fim da linha");
        } while(trechos.ProximaLinha());
    }

    private Rotina processaSubFunction(Modulo mod, NivelPublicidade publi, bool retornaValor, ref Trechos trechos)
    {
        trechos.ExigeProximo("Esperado o nome da rotina após o 'sub'/'function'");
        trechos.ExigeId("Esperado o nome da rotina");
        Trecho subTrecho = trechos.Atual;
        Rotina rot = new Rotina(subTrecho, mod, publi, retornaValor, TipoVariavel.Int16);
        trechos.Proximo();
        if(trechos.EhTipo(TipoTrecho.AbreParenteses))
        {
            trechos.Proximo();
            do
            {
                if(trechos.EhIdentificador())
                {
                    Trecho argNome = trechos.Atual;
                    trechos.Proximo();
                    trechos.ExigeId("as", "Esperado 'as' após o nome do argumento");
                    trechos.Proximo();
                    trechos.ExigeId("Esperado o tipo de argumento");
                    rot.Argumentos.Add(new DeclaraVariavel(argNome, mod, false, NivelPublicidade.Local, processaTipo(ref trechos), false, 0){Argumento = true});
                    trechos.Proximo();
                }
                if(trechos.EhTipo(TipoTrecho.FechaParenteses)) break;
                trechos.ExigeTipo(TipoTrecho.Virgula, "Esperado ',' após uma declaração de argumento");
                trechos.Proximo();
            } while(!trechos.FimDaLinha);
            trechos.ExigeTipo(TipoTrecho.FechaParenteses, "Esperado ')' após os parâmetros");
            trechos.Proximo();
        }
        if(retornaValor)
        {
            trechos.ExigeId("as", "Esperado 'as' depois da declaração da função");
            trechos.Proximo();
            trechos.ExigeId("Esperado o tipo da função");
            rot.TipoRetorno = processaTipo(ref trechos);
            trechos.Proximo();
        }
        trechos.ExigeFimDaLinha("Esperado fim da linha depois da declaração da rotina.");
        trechos.ExigeProximaLinha(subTrecho, "Encontrado fim do arquivo com um 'sub'/'function' aberta");
        nivelRotina(mod, rot, rot.Comandos, false, ref trechos);
        trechos.ExigeId("end");
        trechos.ExigeProximoFimDaLinha("Esperado apenas o 'end', sem nenhum complemento posterior");
        return rot;
    }
    private void nivelModulo(Modulo mod, ref Trechos trechos)
    {
        NivelPublicidade publi = NivelPublicidade.Privado;
        do 
        {
            if(trechos.EhIdentificador("end")) break;
            publi = NivelPublicidade.Privado;
            if(trechos.EhIdentificador("public"))
            {
                publi = NivelPublicidade.Publico;
                trechos.Proximo();
            }
            else if(trechos.EhIdentificador("private"))
            {
                publi = NivelPublicidade.Privado;
                trechos.Proximo();
            }

            if(trechos.EhIdentificador("dim"))
            {
                mod.Variaveis.Add(processaDim(publi, mod, true, ref trechos));
            }
            else if(trechos.EhIdentificador("sub"))
            {
                mod.Rotinas.Add(processaSubFunction(mod, publi, false, ref trechos));
            }
            else if(trechos.EhIdentificador("function"))
            {
                mod.Rotinas.Add(processaSubFunction(mod, publi, true, ref trechos));
            }
            else if(!trechos.FimDaLinha)
            {
                trechos.Erro("Comando desconhecido");
            }
        } while(trechos.ProximaLinha());
    }
    private void nivelRaiz(ref Trechos trechos)
    {
        do
        {
            if(!trechos.FimDaLinha)
            {
                if(trechos.EhIdentificador("module"))
                {
                    trechos.ExigeProximo("Esperado o nome após o 'module'");
                    trechos.ExigeId("Esperado o nome do módulo");
                    Modulo mod = new Modulo(trechos.Atual);
                    Modulos.Add(mod);
                    trechos.ExigeProximoFimDaLinha("Esperado fim da linha depois da declaração do módulo.");
                    trechos.ExigeProximaLinha(mod.Trecho, "Encontrado fim do arquivo com um 'module' aberto");
                    nivelModulo(mod, ref trechos);
                    trechos.ExigeId("end");
                    trechos.ExigeProximoFimDaLinha("Esperado apenas o 'end', sem nenhum complemento posterior");
                }
                else if(trechos.EhIdentificador("imports"))
                {
                    trechos.Proximo();
                    trechos.ExigeId("Esperado o nome do módulo a ser importado");
                    Fonte fonte = new Fonte(trechos.Atual.ConteudoOriginal + ".hcb");
                    Processar(fonte);
                }
                else if(!trechos.FimDaLinha)
                {
                    trechos.ExigeFimDaLinha("Comando não suportado neste nível.");
                }
            }
        }while (trechos.ProximaLinha());
    }

    public void Processar(Fonte fonte)
    {
        Trechos atual = fonte.LeiaLinha();
        if(atual.FimDoArquivo) return;
        Fontes.Add(fonte);
        nivelRaiz(ref atual);
    }

    private void CompilaReferencias(Modulo mod, Ambiente amb)
    {
        foreach (var modref in mod.Referencias)
        {
            CompilaReferencias(modref, amb);
            modref.Compila(amb);
        }
    }
    public void Compila(Saida saida)
    {
        Ambiente? amb = null;
        foreach(var mod in Modulos)
        {
            amb = amb ?? new Ambiente(saida, Modulos, mod.Trecho, mod);
            mod.Inicializa(amb);
        }
        foreach(var mod in Modulos)
        {
            amb = amb ?? new Ambiente(saida, Modulos, mod.Trecho, mod);
            mod.Otimiza(amb);
        }
        foreach(var mod in Modulos.Where(m => m.Nome.ToLower() == "os"))
        {
            amb = amb ?? new Ambiente(saida, Modulos, mod.Trecho, mod);
            var cons = mod.Rotinas.Where(r => r.Nome.ToLower() == "start");
            if(!cons.Any()) throw new Erro(mod.Trecho, "Esperado uma rotina 'OS.Start'");
            cons.First().IgnorarCabecalhoRodape = true;
            cons.First().Compila(amb);
            mod.Compila(amb);
            CompilaReferencias(mod, amb);
        }
    }
}