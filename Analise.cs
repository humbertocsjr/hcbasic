class Analise
{
    // Variaveis de uso comum do analisador


    // Registro de erros possiveis no codigo fonte
    public List<RegistroDeErro> Erros { get; set; } = new List<RegistroDeErro>();
    // Armazena os códigos fontes analisados
    public List<Fonte> Fontes { get; set; } = new List<Fonte>();
    // Armazena os módulos carregados, usado para compilação
    public List<Modulo> Modulos { get; set; } = new List<Modulo>();
    // Armazena as estruturas carregadas, usado para compilação
    public List<Estrutura> Estruturas { get; set; } = new List<Estrutura>();
    // Armazena os diretorios para uso do comando Imports
    public List<DirectoryInfo> DiretoriosImportacao = new List<DirectoryInfo>();

    // Inicia o analisador com a lista de diretorios de pesquisa para o comando Imports
    public Analise(List<DirectoryInfo> dirs)
    {
        DiretoriosImportacao = dirs;
    }

    // ========================================
    // Rotinas de processamento de código fonte
    // ========================================
    // 
    // Usadas para conveter trechos de texto em Nós da arvore de compilação


    // Processa tipo de uma variável
    // Usado quando se declara o tipo da variável, por exemplo:
    // Dim variavel as TIPO
    public static TipoVariavel ProcessaTipo(string tipo)
    {
        switch(tipo)
        {
            case "int8":
                return TipoVariavel.Int8;
            case "uint8":
                return TipoVariavel.UInt8;
            case "int16":
                return TipoVariavel.Int16;
            case "uint16":
                return TipoVariavel.UInt16;
            case "ptrbytearray":
                return TipoVariavel.PtrByteArray;
            case "ptrwordarray":
                return TipoVariavel.PtrWordArray;
            case "func":
                return TipoVariavel.Func;
            case "action":
                return TipoVariavel.Action;
            default:
                return TipoVariavel.Structure;
        }
    }
    private TipoVariavel processaTipo(ref Trechos trechos)
    {
        return ProcessaTipo(trechos.Atual.Conteudo.ToLower());
    }

    // Processa declaração de variável ou campo do modulo
    // Exemplo:
    // dim variavel as tipo
    private DeclaraVariavel processaDim(NivelPublicidade publi, Estrutura mod, bool varDoModulo, bool apenasPonteiro, ref Trechos trechos)
    {
        trechos.ExigeProximo("Esperado o nome da variável após o 'dim'");
        trechos.ExigeId("Esperado o nome da variável");
        Trecho dimTrecho = trechos.Atual;
        TipoVariavel dimTipo = TipoVariavel.Int16;
        bool dimColecao = false;
        int dimColecaoTam = 0;
        string dimTipoNome = "int16";
        if(trechos.Proximo())
        {
            trechos.ExigeId("as", "Esperado 'as' após o nome da variável");
            trechos.ExigeProximo("Esperado o tipo após o 'as'");
            dimTipo = processaTipo(ref trechos);
            dimTipoNome = trechos.Atual.Conteudo.ToLower();
        }
        trechos.Proximo();
        List<DeclaraVariavel> argumentos = new List<DeclaraVariavel>();
        TipoVariavel tipoRetorno = TipoVariavel.UInt16;
        string tipoRetornoNome = "uint16";
        DeclaraVariavel dim = new DeclaraVariavel(dimTrecho, mod, varDoModulo, publi, dimTipo, dimTipoNome, dimColecao, dimColecaoTam);
        dim.EstruturaEstaticaApenasPonteiro = apenasPonteiro;
        if(dimTipo == TipoVariavel.Func | dimTipo == TipoVariavel.Action)
        {
            trechos.ExigeTipo(TipoTrecho.AbreParenteses, $"Esperado '(' após '{dimTipoNome}'");
            trechos.Proximo();
            if(!trechos.EhTipo(TipoTrecho.FechaParenteses))
            {
                trechos.ExigeId("of", "Esperado 'Of' após o '('");
                trechos.Proximo();
                while(!trechos.EhTipo(TipoTrecho.FechaParenteses) & !trechos.FimDaLinha)
                {
                    trechos.ExigeId("Esperado tipo de variavel");
                    TipoVariavel argTipo = processaTipo(ref trechos);
                    if(argTipo == TipoVariavel.Func | argTipo == TipoVariavel.Action) trechos.Erro("Tipo inválido de argumento");
                    argumentos.Add(new DeclaraVariavel(trechos.Atual, mod, false, NivelPublicidade.Local, argTipo, trechos.Atual.Conteudo, false, 0, 0));
                    trechos.Proximo();
                    if(!trechos.EhTipo(TipoTrecho.FechaParenteses))
                    {
                        trechos.ExigeTipo(TipoTrecho.Virgula, "Esperado ',' após o tipo de argumento");
                        trechos.Proximo();
                    }
                }
                if(dimTipo == TipoVariavel.Func)
                {
                    if(!argumentos.Any()) trechos.Erro("Espearado tipo de retorno da função declarada");
                    tipoRetorno = argumentos.Last().Tipo;
                    tipoRetornoNome =argumentos.Last().TipoNome;
                    argumentos.Remove(argumentos.Last());
                }
            }
            trechos.ExigeTipo(TipoTrecho.FechaParenteses, "Esperado ')' ao fim dos argumentos");
            trechos.Proximo();
            dim.ArgumentosFuncAction = argumentos;
            dim.RetornoFunc = tipoRetorno;
            dim.RetornoFuncNome = tipoRetornoNome;
        }
        return dim;
    }

    // ===============================================
    // Processador de Expressões matemáticas e lógicas
    // ===============================================
    //
    // Usado para converter uma sequencia de trechos em uma hierarquia de Nós para execução
    // Quanto maior o nível (indo de 1 a 7), mais localizado dentro da expressão está
    // Sendo o nivel 7 onde se interpreta os números e variáveis da expressão e os niveis baixos onde se interpreta as operações matemáticas
    // Por exemplo a multiplicação tem prioridade comparada a soma, logo ela esta em um nivel mais baixo

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
            Acao.TipoDeAcao varTipo = Acao.TipoDeAcao.Leitura;
            if(trechos.EhTipo(TipoTrecho.Arroba))
            {
                trechos.Proximo();
                trechos.ExigeId("Esperado o nome da variável");
                varTipo = Acao.TipoDeAcao.LeituraDesvio;
            }
            if(trechos.EhTipo(TipoTrecho.Cerquilha))
            {
                trechos.Proximo();
                trechos.ExigeId("Esperado o nome da variável");
                varTipo = Acao.TipoDeAcao.LeituraSegmento;
            }
            var varModulo = mod.Nome;
            var varNome = new List<string>();
            varNome.Add(trechos.Atual.Conteudo);
            var varTrecho = trechos.Atual;
            trechos.Proximo();
            while(trechos.EhTipo(TipoTrecho.Ponto))
            {
                trechos.Proximo();
                trechos.ExigeId("Esperado o nome da variável");
                varNome.Add(trechos.Atual.Conteudo);
                trechos.Proximo();
            }
            Acao acao = new Acao(varTrecho, varNome, varTipo);
            ret = acao;
            if(trechos.EhTipo(TipoTrecho.AbreParenteses))
            {
                acao.Tipo = Acao.TipoDeAcao.Chamada;
                trechos.Proximo();
                while(!trechos.EhTipo(TipoTrecho.FechaParenteses))
                {
                    acao.ArgumentosChamada.Add(processaExpressao(mod, rot, ref trechos));
                    if(trechos.EhTipo(TipoTrecho.Virgula)) 
                    {
                        trechos.Proximo();
                    }
                    else if(!trechos.EhTipo(TipoTrecho.FechaParenteses))
                    {
                        trechos.ExigeTipo(TipoTrecho.FechaParenteses, "Esperado ',' ou ')' após o último argumento");
                    }
                }
                trechos.Proximo();
            }
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
            trechos.EhOpLogica("not")
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
        while(trechos.EhOpLogica("or") | trechos.EhOpLogica("orelse"))
        {
            trechos.Proximo();
            ret = new OpLogica(trechos.Anterior, ret, processaExpressao3(mod, rot, ref trechos));
        }
        return ret;
    }

    // Processa expressões lógicas e matemáticas
    private No processaExpressao(Modulo mod, Rotina rot, ref Trechos trechos)
    {
        No? ret = processaExpressao2(mod, rot, ref trechos);
        while(trechos.EhOpLogica("and") | trechos.EhOpLogica("andalso"))
        {
            trechos.Proximo();
            ret = new OpLogica(trechos.Anterior, ret, processaExpressao2(mod, rot, ref trechos));
        }
        return ret ?? new Nulo(trechos.Atual);
    }

    // Processa uma atribuição
    // Exemplo:
    // let variavel = 123
    // let @variavel = 123
    // let #variavel = 123
    private Acao processaAtribuicao(Modulo mod, Rotina rot, ref Trechos trechos)
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
        Acao atrib = new Acao(varTrecho, nomeVar, Acao.TipoDeAcao.Gravacao);
        if(segmento) atrib.Tipo = Acao.TipoDeAcao.GravacaoSegmento;
        if(desvio) atrib.Tipo = Acao.TipoDeAcao.GravacaoDesvio;
        if(trechos.EhTipo(TipoTrecho.Atribuicao))
        {
            trechos.ExigeTipo(TipoTrecho.Atribuicao, "Esperado '=' após o nome da variável");
            trechos.ExigeProximo("Esperado um valor após o '='");
            atrib.ValorGravacao = processaExpressao(mod, rot, ref trechos);
        }
        else if(trechos.EhOpMatematica("++"))
        {
            trechos.Proximo();
            atrib.Tipo = Acao.TipoDeAcao.Incremento;
            if(segmento) atrib.Tipo = Acao.TipoDeAcao.IncrementoSegmento;
            if(desvio) atrib.Tipo = Acao.TipoDeAcao.IncrementoDesvio;
        }
        else if(trechos.EhOpMatematica("--"))
        {
            trechos.Proximo();
            atrib.Tipo = Acao.TipoDeAcao.Decremento;
            if(segmento) atrib.Tipo = Acao.TipoDeAcao.DecrementoSegmento;
            if(desvio) atrib.Tipo = Acao.TipoDeAcao.DecrementoDesvio;
        }
        else trechos.ExigeTipo(TipoTrecho.Atribuicao, "Esperado '=' ou '++' or '--' após o nome da variável");
        return atrib;
    }

    // Processa comando IF
    // Exemplo:
    // if a > 0 then return else let a ++
    private Se processaSe(Modulo mod, Rotina rot, ref Trechos trechos)
    {
        Se subSe;
        bool ignoraElse = false;
        trechos.ExigeProximo("Esperado a comparação depois do 'if'");
        Se ret = new Se(trechos.Anterior, processaExpressao(mod, rot, ref trechos));
        subSe = ret;
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
            if (trechos.FimDaLinha) 
                ignoraElse = true;
        }
        if(!ignoraElse)
        {
            while(!trechos.EhIdentificador("else"))
            {
                if(trechos.EhIdentificador("elseif"))
                {
                    trechos.ExigeProximo("Esperado a comparação depois do 'elseif'");
                    Se ant = subSe;
                    subSe = new Se(trechos.Anterior, processaExpressao(mod, rot, ref trechos));
                    ant.SeNao = new List<No>(new No[] {subSe});
                    trechos.ExigeId("then", "Esperado 'then' após a comparação");
                    if(trechos.Proximo())
                    {
                        nivelRotina(mod, rot, subSe.SeSim, true, ref trechos);
                    }
                    else
                    {
                        trechos.ProximaLinha();
                        nivelRotina(mod, rot, subSe.SeSim, false, ref trechos);
                        if(!trechos.EhIdentificador("elseif") & !trechos.EhIdentificador("else")) 
                        {
                            trechos.ExigeId("end", "Esperado 'end' ou 'elseif' ao final do 'elseif'");
                            trechos.Proximo();
                        }
                    }
                }
                else 
                    trechos.Erro("Esperado um else/elseif/end após os comandos dentro de um if/elseif");

            }
            if(trechos.EhIdentificador("else"))
            {
                if(trechos.Proximo())
                {
                    nivelRotina(mod, rot, subSe.SeNao, true, ref trechos);
                }
                else
                {
                    trechos.ProximaLinha();
                    nivelRotina(mod, rot, subSe.SeNao, false, ref trechos);
                    trechos.ExigeId("end", "Esperado 'end' ao final do 'else'");
                    trechos.Proximo();
                }
            }
        }
        return ret;
    }
    
    // Processa comando WHILE
    // Exemplo:
    // While a < 1 let a ++
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

    
    // Processa comando FOR
    // Exemplo:
    // For a = 1 to 5 let ++
    private Para processaPara(Modulo mod, Rotina rot, ref Trechos trechos)
    {
        trechos.ExigeProximo("Esperado a comparação depois do 'for'");
        trechos.ExigeId("Esperado nome da variável após o 'for'");
        DeclaraVariavel variavel = new DeclaraVariavel(trechos.Atual, mod, false, NivelPublicidade.Local, TipoVariavel.UInt16, "uint16", false, 0);
        trechos.Proximo();
        trechos.ExigeTipo(TipoTrecho.Atribuicao, "Esperado '=' após o nome da variável");
        trechos.Proximo();
        No inicial = processaExpressao(mod, rot, ref trechos);
        trechos.ExigeId("to", "Esperado 'to' após o valor inicial");
        trechos.Proximo();
        No final = processaExpressao(mod, rot, ref trechos);
        Para ret = new Para(trechos.Anterior, variavel, inicial, final);
        if(trechos.FimDaLinha)
        {
            trechos.ProximaLinha();
            nivelRotina(mod, rot, ret.Repete, false, ref trechos);
            trechos.ExigeId("end", "Esperado 'end' após o fim dos comandos do 'for'");
            trechos.Proximo();
        }
        else
        {
            nivelRotina(mod, rot, ret.Repete, true, ref trechos);
        }
        return ret;
    }

    // Processa comandos no nivel da rotina (que estão dentro de uma rotina)
    // Exemplo:
    // sub rotina
    // ' PROCESSA COMANDOS DAQUI
    // end

    private void nivelRotina(Modulo mod, Rotina rot, List<No> cmds, bool apenasUmComando, ref Trechos trechos)
    {
        do 
        {
            reverifica:
            if(trechos.EhIdentificador("end") | trechos.EhIdentificador("else") | trechos.EhIdentificador("elseif") | trechos.EhIdentificador("catch")) break;
            

            if(trechos.EhIdentificador("dim"))
            {
                rot.Variaveis.Add(processaDim(NivelPublicidade.Local, mod, false, false, ref trechos));
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
            else if(trechos.EhIdentificador("for"))
            {
                cmds.Add(processaPara(mod, rot, ref trechos));
            }
            else if(trechos.EhIdentificador("return"))
            {
                trechos.Proximo();
                cmds.Add(new Retorna(trechos.Anterior, processaExpressao(mod, rot, ref trechos)));
            }
            else if(trechos.EhIdentificador("goto"))
            {
                trechos.Proximo();
                cmds.Add(new VaPara(trechos.Atual));
                trechos.Proximo();
            }
            else if(trechos.EhIdentificador("throw"))
            {
                trechos.Proximo();
                EmiteErro emite = new EmiteErro(trechos.Atual);
                trechos.ExigeId("Esperado o tipo de erro");
                cmds.Add(emite);
                trechos.Proximo();
            }
            else if(trechos.EhIdentificador("try"))
            {
                trechos.Proximo();
                Tenta tenta = new Tenta(trechos.Atual);
                cmds.Add(tenta);
                trechos.ExigeFimDaLinha("Esperado fim da linha");
                trechos.ProximaLinha();
                nivelRotina(mod, rot, tenta.TentaComandos, false, ref trechos);
                trechos.ExigeId("catch", "Esperado um 'catch' ao final dos comandos de um 'try'");
                do
                {
                    trechos.Proximo();
                    trechos.ExigeId("Esperado um tipo de erro");
                    List<No> erroCmds = new List<No>();
                    string erroTipo = trechos.Atual.Conteudo;
                    trechos.Proximo();
                    trechos.ExigeFimDaLinha("Esperado fim da linha");
                    trechos.ProximaLinha();
                    nivelRotina(mod, rot, erroCmds, false, ref trechos);
                    tenta.PegaErros.Add(erroTipo, erroCmds);
                }while(trechos.EhIdentificador("catch"));
                trechos.ExigeId("end", "Esperado um 'end' ao final de um Try Catch");
                trechos.Proximo();
            }
            else if(trechos.EhIdentificador() & trechos.EhProximoTipo(TipoTrecho.DoisPontos))
            {
                cmds.Add(new Rotulo(trechos.Atual));
                trechos.Proximo();
                trechos.Proximo();
                goto reverifica;
            }
            else if(trechos.EhIdentificador() | trechos.EhTipo(TipoTrecho.Arroba) | trechos.EhTipo(TipoTrecho.Cerquilha))
            {
                bool cerquilha = false;
                bool arroba = false;
                if(trechos.EhTipo(TipoTrecho.Arroba))
                {
                    arroba = true;
                    trechos.Proximo();
                    trechos.ExigeId("Esperado o nome da variável");
                }
                if(trechos.EhTipo(TipoTrecho.Cerquilha))
                {
                    cerquilha = true;
                    trechos.Proximo();
                    trechos.ExigeId("Esperado o nome da variável");
                }
                Trecho acaoTrecho = trechos.Atual;
                List<string> acaoNome = new List<string>();
                acaoNome.Add(acaoTrecho.Conteudo);
                while(trechos.EhProximoTipo(TipoTrecho.Ponto))
                {
                    trechos.Proximo();
                    trechos.ExigeProximo("Esperado continuação do nome da rotina");
                    trechos.ExigeId("Esperado continuação do nome da rotina");
                    acaoNome.Add(trechos.Atual.Conteudo);
                }
                Acao acao = new Acao(acaoTrecho, acaoNome, Acao.TipoDeAcao.Desconhecida);
                cmds.Add(acao);
                trechos.Proximo();
                if(trechos.EhTipo(TipoTrecho.Atribuicao))
                {
                    trechos.Proximo();
                    if(trechos.EhIdentificador("new"))
                    {
                        acao.Tipo = Acao.TipoDeAcao.NovaEstrutura;
                        trechos.Proximo();
                    }
                    else
                    {
                        acao.Tipo = Acao.TipoDeAcao.Gravacao;
                        if(arroba) acao.Tipo = Acao.TipoDeAcao.GravacaoDesvio;
                        if(cerquilha) acao.Tipo = Acao.TipoDeAcao.GravacaoSegmento;
                        acao.ValorGravacao = processaExpressao(mod, rot, ref trechos);
                    }
                }
                else if(trechos.EhOpMatematica("++"))
                {
                    trechos.Proximo();
                    acao.Tipo = Acao.TipoDeAcao.Incremento;
                    if(arroba) acao.Tipo = Acao.TipoDeAcao.IncrementoDesvio;
                    if(cerquilha) acao.Tipo = Acao.TipoDeAcao.IncrementoSegmento;
                }
                else if(trechos.EhOpMatematica("--"))
                {
                    trechos.Proximo();
                    acao.Tipo = Acao.TipoDeAcao.Decremento;
                    if(arroba) acao.Tipo = Acao.TipoDeAcao.DecrementoDesvio;
                    if(cerquilha) acao.Tipo = Acao.TipoDeAcao.DecrementoSegmento;
                }
                else
                {
                    acao.Tipo = Acao.TipoDeAcao.Chamada;
                    if(!trechos.FimDaLinha)
                    {
                        do
                        {
                            acao.ArgumentosChamada.Add(processaExpressao(mod, rot, ref trechos));
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

            }
            else if(!trechos.FimDaLinha)
            {
                trechos.Erro($"Comando {trechos.Atual.Conteudo}({trechos.Atual.Tipo}) desconhecido");
            }
            if(apenasUmComando) 
                return;
            else
                trechos.ExigeFimDaLinha("Esperado fim da linha");
        } while(trechos.ProximaLinha());
    }

    // Processa rotinas
    // Exemplo:
    // sub rotina
    // end

    private Rotina processaSubFunction(Modulo mod, NivelPublicidade publi, bool retornaValor, ref Trechos trechos)
    {
        trechos.ExigeProximo("Esperado o nome da rotina após o 'sub'/'function'");
        trechos.ExigeId("Esperado o nome da rotina");
        Trecho subTrecho = trechos.Atual;
        Rotina rot = new Rotina(subTrecho, mod, publi, retornaValor, TipoVariavel.Desconhecido);
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
                    rot.Argumentos.Add(new DeclaraVariavel(argNome, mod, false, NivelPublicidade.Local, processaTipo(ref trechos), trechos.Atual.Conteudo.ToLower(), false, 0){Argumento = true});
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
        if(trechos.EhIdentificador("handles"))
        {
            if(mod.Externo) trechos.Erro("Manipuladores de interrupção não podem ser declarados em Módulos Externos");
            trechos.Proximo();
            if(trechos.EhIdentificador("interrupt"))
            {
                trechos.Proximo();
                rot.ManipuladorDeInterrupcao = true;
            }
            else if(trechos.EhIdentificador("rawinterrupt"))
            {
                trechos.Proximo();
                rot.ManipuladorDeInterrupcao = true;
                rot.IgnorarCabecalhoRodape = true;
            }
            else trechos.Erro("Tipo de evento não suportado");
        }
        trechos.ExigeFimDaLinha("Esperado fim da linha depois da declaração da rotina.");
        if(!mod.Externo)
        {
            trechos.ExigeProximaLinha(subTrecho, "Encontrado fim do arquivo com um 'sub'/'function' aberta");
            nivelRotina(mod, rot, rot.Comandos, false, ref trechos);
            trechos.ExigeId("end");
            trechos.ExigeProximoFimDaLinha("Esperado apenas o 'end', sem nenhum complemento posterior");
        }
        return rot;
    }

    // Processa comandos do nivel módulo (comandos que estão dentro de um módulo)
    // Exemplo:
    // module nomeDoModulo
    // ' PROCESSA COMANDOS DAQUI
    // end
    private void nivelModulo(Modulo mod, ref Trechos trechos)
    {
        do 
        {
            NivelPublicidade publi = NivelPublicidade.Privado;
            bool apenasPonteiro = false;
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
            else if(trechos.EhIdentificador("friend"))
            {
                publi = NivelPublicidade.Amigo;
                trechos.Proximo();
            }
            if(trechos.EhIdentificador("pointer"))
            {
                apenasPonteiro = true;
                trechos.Proximo();
            }

            if(trechos.EhIdentificador("dim"))
            {
                if(mod.Externo) trechos.Erro("Este comando não é suportado em módulos externos");
                mod.Campos.Add(processaDim(publi, mod, true, apenasPonteiro, ref trechos));
            }
            else if(trechos.EhIdentificador("sub"))
            {
                if(apenasPonteiro) trechos.Erro("Marcador Pointer não é compatível com rotinas");
                mod.Rotinas.Add(processaSubFunction(mod, publi, false, ref trechos));
            }
            else if(trechos.EhIdentificador("function"))
            {
                if(apenasPonteiro) trechos.Erro("Marcador Pointer não é compatível com rotinas");
                mod.Rotinas.Add(processaSubFunction(mod, publi, true, ref trechos));
            }
            else if(!trechos.FimDaLinha)
            {
                if(apenasPonteiro) trechos.Erro("Esperado alguma declaração de variável");
                trechos.Erro("Comando desconhecido");
            }
        } while(trechos.ProximaLinha());
    }

    // Processa comandos do nivel estrutura (comandos que estão dentro de uma estrutura)
    // Exemplo:
    // structure nome
    // ' PROCESSA COMANDOS DAQUI
    // end
    private void nivelEstrutura(Estrutura estrutura, ref Trechos trechos)
    {
        do 
        {
            if(trechos.EhIdentificador("end")) break;

            if(trechos.EhIdentificador("dim"))
            {
                estrutura.Campos.Add(processaDim(NivelPublicidade.Publico, estrutura, true, false, ref trechos));
            }
            else if(trechos.EhIdentificador("spacing"))
            {
                trechos.Proximo();
                trechos.ExigeTipo(TipoTrecho.Numero, "Esperado o tamanho em bytes");
                estrutura.Campos.Add(new DeclaraVariavel(trechos.Atual, estrutura, true, NivelPublicidade.Publico, TipoVariavel.UInt16, "", false, 0){UsaTamanhoManual = true, TamanhoManual = int.Parse(trechos.Atual.Conteudo)});
            }
            else if(!trechos.FimDaLinha)
            {
                trechos.Erro("Comando desconhecido");
            }
        } while(trechos.ProximaLinha());
    }

    // Processa comandos do nivel raiz do codigo fonte
    private void nivelRaiz(ref Trechos trechos)
    {
        do
        {
            if(!trechos.FimDaLinha)
            {
                bool publico = false;
                if(trechos.EhIdentificador("public"))
                {
                    publico = true;
                    trechos.Proximo();
                }
                if(trechos.EhIdentificador("module"))
                {
                    trechos.ExigeProximo("Esperado o nome após o 'module'");
                    trechos.ExigeId("Esperado o nome do módulo");
                    Modulo mod = new Modulo(trechos.Atual)
                    {
                        Publico = publico
                    };
                    Modulos.Add(mod);
                    trechos.Proximo();
                    if(trechos.EhIdentificador("from"))
                    {
                        trechos.Proximo();
                        mod.Externo = true;
                        mod.ExternoArquivo = trechos.Atual.Conteudo;
                        trechos.ExigeTipo(TipoTrecho.Texto, "Esperado o nome do arquivo externo");
                        trechos.Proximo();
                    }
                    trechos.ExigeFimDaLinha("Esperado fim da linha depois da declaração do módulo.");
                    trechos.ExigeProximaLinha(mod.Trecho, "Encontrado fim do arquivo com um 'module' aberto");
                    nivelModulo(mod, ref trechos);
                    trechos.ExigeId("end");
                    trechos.ExigeProximoFimDaLinha("Esperado apenas o 'end', sem nenhum complemento posterior");
                }
                else if(trechos.EhIdentificador("structure"))
                {
                    if(publico) trechos.Erro("Estruturas não podem ser marcadas como públicas");
                    trechos.Proximo();
                    trechos.ExigeId("Esperado o nome da estrutura após o 'structure'");
                    Estrutura estrutura = new Estrutura(trechos.Atual);
                    Estruturas.Add(estrutura);
                    trechos.ExigeProximoFimDaLinha("Esperado fim da linha depois da declaração da estrutura.");
                    trechos.ExigeProximaLinha(estrutura.Trecho, "Encontrado fim do arquivo com um 'structure' aberto");
                    nivelEstrutura(estrutura, ref trechos);
                    trechos.ExigeId("end");
                    trechos.ExigeProximoFimDaLinha("Esperado apenas o 'end', sem nenhum complemento posterior");

                }
                else if (trechos.EhIdentificador("error"))
                {
                    if(publico) trechos.Erro("Erros não podem ser marcadas como públicas");
                    trechos.Proximo();
                    trechos.ExigeId("Esperado o nome do erro");
                    var erroTrecho = trechos.Atual;
                    trechos.Proximo();
                    trechos.ExigeTipo(TipoTrecho.Atribuicao, "Esperado um '=' após o nome do erro");
                    trechos.Proximo();
                    trechos.ExigeTipo(TipoTrecho.Numero, "Esperado um numero decimal");
                    RegistroDeErro erro = new RegistroDeErro(erroTrecho, int.Parse(trechos.Atual.Conteudo));
                    Erros.Add(erro);
                    trechos.Proximo();
                }
                else if(trechos.EhIdentificador("imports"))
                {
                    if(publico) trechos.Erro("Importações não podem ser marcadas como públicas");
                    trechos.Proximo();
                    trechos.ExigeId("Esperado o nome do módulo a ser importado");
                    string nomeImport = "";
                    while(trechos.Atual.Tipo != TipoTrecho.FimDaLinha)
                    {
                        if(trechos.EhIdentificador())
                            nomeImport += trechos.Atual.ConteudoOriginal;
                        else if(trechos.EhTipo(TipoTrecho.Ponto))
                            nomeImport += ".";
                        else trechos.Erro("Esperado um nome de arquivo");
                        trechos.Proximo();
                    }
                    nomeImport += ".hcb";
                    if(File.Exists(nomeImport))
                    {
                        nomeImport = Path.GetFullPath(nomeImport);
                        if(!Fontes.Any(f => f.NomeCompleto == nomeImport))
                            Processar(new Fonte(nomeImport));
                    }
                    else
                    {
                        bool encontradoArq = false;
                        foreach (var dir in DiretoriosImportacao)
                        {
                            var arqCons = dir.GetFiles(nomeImport);
                            if(arqCons.Any())
                            {
                                encontradoArq = true;
                                nomeImport = arqCons.First().FullName;
                                if(!Fontes.Any(f => f.NomeCompleto == nomeImport))
                                    Processar(new Fonte(nomeImport));
                                break;
                            }
                        }
                        if(!encontradoArq)
                        {
                            trechos.Erro($"Arquivo {nomeImport} não encontrado.");
                        }
                    }
                }
                else if(!trechos.FimDaLinha)
                {
                    if(publico) trechos.Erro("Esperado o módulo após o 'public'");
                    trechos.ExigeFimDaLinha($"Comando {trechos.Atual.Conteudo}({trechos.Atual.Tipo}) não suportado neste nível.");
                }
            }
        }while (trechos.ProximaLinha());
    }

    // Processa um arquivo de código fonte
    public void Processar(Fonte fonte)
    {
        Trechos atual = fonte.LeiaLinha();
        if(atual.FimDoArquivo) return;
        Fontes.Add(fonte);
        nivelRaiz(ref atual);
    }

    // Pesquisa e compila apenas modulos referenciados pelos anteriores
    private void CompilaReferencias(Modulo mod, Ambiente amb)
    {
        foreach (var modref in mod.Referencias)
        {
            if(!modref.Compilado & !modref.Externo)
            {
                modref.Compila(amb);
                CompilaReferencias(modref, amb);
            }
        }
    }

    // Compila codigo fonte
    public void Compila(Saida saida)
    {
        Ambiente amb = new Ambiente(saida, DiretoriosImportacao, Erros, Modulos, Estruturas, Modulos.First().Trecho, Modulos.First());;


        foreach (var estru in Estruturas)
        {
            estru.Inicializa(amb);
            estru.Otimiza(amb);
        }


        foreach(var mod in Modulos)
        {
            mod.Inicializa(amb);
        }
        foreach(var mod in Modulos)
        {
            mod.Otimiza(amb);
        }

        // Busca e compila o módulo OS da biblioteca System, e todas suas referencias
        // Como o modulo OS chama o Program.Main, acaba compilando tudo que o Program usa direta ou indiretamente
        foreach(var mod in Modulos.Where(m => m.Nome.ToLower() == "os"))
        {
            var cons = mod.Rotinas.Where(r => r.Nome.ToLower() == "start");
            if(!cons.Any()) throw new Erro(mod.Trecho, "Esperado uma rotina 'OS.Start'");
            cons.First().IgnorarCabecalhoRodape = true;
            amb.Modulo = mod;
            amb.Rotina = cons.First();
            cons.First().Compila(amb);
            amb.Modulo = null;
            amb.Rotina = null;
            mod.Compila(amb);
            CompilaReferencias(mod, amb);
        }

        foreach (var mod in amb.Modulos.Where(m => m.Publico))
        {
            if(!mod.Compilado)
            {
                Console.WriteLine($"AVISO: Módulo '{mod.Nome}' não usado no executável porém adicionado ao binário por estar marcado como público.");
                mod.Compila(amb);
                CompilaReferencias(mod, amb);
            }
        }

        foreach (var mod in amb.Modulos.Where(m => m.Externo & !m.Compilado & m.Rotinas.Sum(r => r.ContadorReferencias) > 0))
        {
            mod.Compila(amb);
        }
        
        amb.Saida.EmiteRotulo("EXPORT_TABLE");
        foreach (var mod in amb.Modulos.Where(m => m.Publico))
        {
            amb.Saida.EmiteItemExportaModulo(mod);
            foreach(var rot in mod.Rotinas.Where(r => r.Publicidade == NivelPublicidade.Publico))
            {
                amb.Saida.EmiteItemExportaRotina(rot);
            }
        }
        amb.Saida.EmiteGerarEspaco(2);

        amb.Saida.EmiteRotulo("IMPORT_TABLE");
        foreach (var mod in amb.Modulos.Where(m => m.Externo & m.Compilado & m.Rotinas.Sum(r => r.ContadorReferencias) > 0))
        {
            amb.Saida.EmiteItemImportaModulo(mod);
            foreach(var rot in mod.Rotinas.Where(r => r.ContadorReferencias > 0))
            {
                amb.Saida.EmiteComentario($"QTD REFS: {rot.ContadorReferencias}");
                amb.Saida.EmiteItemImportaRotina(rot);
            }
        }
        amb.Saida.EmiteGerarEspaco(2);

        amb.Saida.EmiteRotulo("REALOC_TABLE");
        foreach (var realoc in amb.Realocacoes)
        {
            amb.Saida.EmiteItemRealocacao(realoc);
        }
        amb.Saida.EmiteItemRealocacao(new Realocacao(TipoDeRealocacao.FimLista, 0, "0", 0));
        
        amb.Saida.EmiteRotulo("END");
    }
}