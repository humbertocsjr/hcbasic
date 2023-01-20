class Acao : No
{
    public enum TipoDeAcao
    {
        Desconhecida,
        Gravacao,
        GravacaoDesvio,
        GravacaoSegmento,
        Chamada,
        Leitura,
        LeituraDesvio,
        LeituraSegmento,
        Incremento,
        IncrementoDesvio,
        IncrementoSegmento,
        Decremento,
        DecrementoDesvio,
        DecrementoSegmento
    }
    public TipoDeAcao Tipo { get; set; } = TipoDeAcao.Desconhecida;
    public bool TipoSegmento => Tipo == TipoDeAcao.GravacaoSegmento | Tipo == TipoDeAcao.LeituraSegmento | Tipo == TipoDeAcao.IncrementoSegmento | Tipo == TipoDeAcao.DecrementoSegmento;
    public bool TipoDesvio => Tipo == TipoDeAcao.GravacaoDesvio | Tipo == TipoDeAcao.LeituraDesvio | Tipo == TipoDeAcao.IncrementoDesvio | Tipo == TipoDeAcao.DecrementoDesvio;

    public List<string> Nome {get;set;} = new List<string>();

    public No ValorGravacao { get; set; }
    public List<No> ArgumentosChamada {get;set;} = new List<No>();

    public Acao(Trecho trecho, List<string> nome, TipoDeAcao tipo) : base(trecho)
    {
        ValorGravacao = new Nulo(trecho);
        Nome = nome;
        Tipo = tipo;
    }

    void acaoVariavel(Ambiente amb, DeclaraVariavel variavel)
    {
        switch(Tipo)
        {
            case TipoDeAcao.Leitura:
            case TipoDeAcao.LeituraDesvio:
                if(variavel.Publicidade == NivelPublicidade.Local)
                {
                    amb.Saida.EmiteCopiaVariavelLocalParaAcumulador(variavel.Posicao);
                }
                else
                {
                    amb.Saida.EmiteCopiaVariavelGlobalParaAcumulador(variavel.NomeGlobal);
                }
                break;
            case TipoDeAcao.LeituraSegmento:
                if(variavel.Publicidade == NivelPublicidade.Local)
                {
                    amb.Saida.EmiteCopiaSegDaVariavelLocalParaAcumulador(variavel.Posicao);
                }
                else
                {
                    amb.Saida.EmiteCopiaSegDaVariavelGlobalParaAcumulador(variavel.NomeGlobal);
                }
                break;
            case TipoDeAcao.Incremento:
            case TipoDeAcao.IncrementoDesvio:
                if(variavel.Publicidade == NivelPublicidade.Local)
                {
                    amb.Saida.EmiteIncrementaVariavelLocal(variavel.Posicao);
                }
                else
                {
                    amb.Saida.EmiteIncrementaVariavelGlobal(variavel.NomeGlobal);
                }
                break;
            case TipoDeAcao.IncrementoSegmento:
                if(variavel.Publicidade == NivelPublicidade.Local)
                {
                    amb.Saida.EmiteIncrementaSegDaVariavelLocal(variavel.Posicao);
                }
                else
                {
                    amb.Saida.EmiteIncrementaSegDaVariavelGlobal(variavel.NomeGlobal);
                }
                break;
            case TipoDeAcao.Decremento:
            case TipoDeAcao.DecrementoDesvio:
                if(variavel.Publicidade == NivelPublicidade.Local)
                {
                    amb.Saida.EmiteDecrementaVariavelLocal(variavel.Posicao);
                }
                else
                {
                    amb.Saida.EmiteDecrementaVariavelGlobal(variavel.NomeGlobal);
                }
                break;
            case TipoDeAcao.DecrementoSegmento:
                if(variavel.Publicidade == NivelPublicidade.Local)
                {
                    amb.Saida.EmiteDecrementaSegDaVariavelLocal(variavel.Posicao);
                }
                else
                {
                    amb.Saida.EmiteDecrementaSegDaVariavelGlobal(variavel.NomeGlobal);
                }
                break;
            case TipoDeAcao.Gravacao:
            case TipoDeAcao.GravacaoDesvio:
                if(variavel.Publicidade == NivelPublicidade.Local)
                {
                    if(ValorGravacao is Numero)
                    {
                        amb.Saida.EmiteGravaNumeroNaVariavelLocal(variavel.Posicao, ((Numero)ValorGravacao).Valor);
                    }
                    else
                    {
                        amb.Tipo = variavel.Tipo;
                        ValorGravacao.Compila(amb);
                        amb.Tipo = null;
                        amb.Saida.EmiteCopiaAcumuladorParaVariavelLocal(variavel.Posicao);
                    }
                }
                else
                {
                    if(ValorGravacao is Numero)
                    {
                        amb.Saida.EmiteGravaNumeroNaVariavelGlobal(variavel.NomeGlobal, ((Numero)ValorGravacao).Valor);
                    }
                    else
                    {
                        amb.Tipo = variavel.Tipo;
                        ValorGravacao.Compila(amb);
                        amb.Tipo = null;
                        amb.Saida.EmiteCopiaAcumuladorParaVariavelGlobal(variavel.NomeGlobal);
                    }
                }
                break;
            case TipoDeAcao.GravacaoSegmento:
                if(variavel.Publicidade == NivelPublicidade.Local)
                {
                    if(ValorGravacao is Numero)
                    {
                        amb.Saida.EmiteGravaNumeroNoSegDaVariavelLocal(variavel.Posicao, ((Numero)ValorGravacao).Valor);
                    }
                    else
                    {
                        amb.Tipo = variavel.Tipo;
                        ValorGravacao.Compila(amb);
                        amb.Tipo = null;
                        amb.Saida.EmiteCopiaAcumuladorParaSegDaVariavelLocal(variavel.Posicao);
                    }
                }
                else
                {
                    if(ValorGravacao is Numero)
                    {
                        amb.Saida.EmiteGravaNumeroNoSegDaVariavelGlobal(variavel.NomeGlobal, ((Numero)ValorGravacao).Valor);
                    }
                    else
                    {
                        amb.Tipo = variavel.Tipo;
                        ValorGravacao.Compila(amb);
                        amb.Tipo = null;
                        amb.Saida.EmiteCopiaAcumuladorParaSegDaVariavelGlobal(variavel.NomeGlobal);
                    }
                }
                break;
            default: throw Erro("Tipo de operação não suportada");
        }
    }

    enum TipoAcaoPonteiro
    {
        Byte,
        Word
    }

    void acaoPonteiro(Ambiente amb, DeclaraVariavel variavel, TipoAcaoPonteiro tipoPonteiro, int desvioNoPonteiro)
    {
        switch(Tipo)
        {
            case TipoDeAcao.Leitura:
                if(variavel.Publicidade == NivelPublicidade.Local)
                {
                    if(amb.TipoPonteiro)
                        amb.Saida.EmiteDefineByteArrayDaVariavelLocalComoPonteiro(variavel.Posicao);
                    else if(tipoPonteiro == TipoAcaoPonteiro.Byte)
                        amb.Saida.EmiteCopiaByteArrayDaVariavelLocalParaAcumulador(variavel.Posicao, desvioNoPonteiro);
                    else if(tipoPonteiro == TipoAcaoPonteiro.Word)
                        amb.Saida.EmiteCopiaWordArrayDaVariavelLocalParaAcumulador(variavel.Posicao, desvioNoPonteiro);
                    else throw Erro("Tipo não suportado");
                }
                else
                {
                    if(amb.TipoPonteiro)
                        amb.Saida.EmiteDefineWordArrayDaVariavelLocalComoPonteiro(variavel.Posicao);
                    if(tipoPonteiro == TipoAcaoPonteiro.Byte)
                        amb.Saida.EmiteCopiaByteArrayDaVariavelGlobalParaAcumulador(variavel.NomeGlobal, desvioNoPonteiro);
                    else if(tipoPonteiro == TipoAcaoPonteiro.Word)
                        amb.Saida.EmiteCopiaWordArrayDaVariavelGlobalParaAcumulador(variavel.NomeGlobal, desvioNoPonteiro);
                    else throw Erro("Tipo não suportado");
                }
                break;
            case TipoDeAcao.Incremento:
                if(variavel.Publicidade == NivelPublicidade.Local)
                {
                    if(tipoPonteiro == TipoAcaoPonteiro.Byte)
                        amb.Saida.EmiteIncrementaByteArrayNaVariavelLocal(variavel.Posicao, desvioNoPonteiro);
                    else if(tipoPonteiro == TipoAcaoPonteiro.Word)
                        amb.Saida.EmiteIncrementaWordArrayNaVariavelLocal(variavel.Posicao, desvioNoPonteiro);
                    else throw Erro("Tipo não suportado");
                }
                else
                {
                        if(tipoPonteiro == TipoAcaoPonteiro.Byte)
                            amb.Saida.EmiteIncrementaByteArrayNaVariavelGlobal(variavel.NomeGlobal, desvioNoPonteiro);
                        else if(tipoPonteiro == TipoAcaoPonteiro.Word)
                            amb.Saida.EmiteIncrementaWordArrayNaVariavelGlobal(variavel.NomeGlobal, desvioNoPonteiro);
                        else throw Erro("Tipo não suportado");
                }
                break;
            case TipoDeAcao.Decremento:
                if(variavel.Publicidade == NivelPublicidade.Local)
                {
                    if(tipoPonteiro == TipoAcaoPonteiro.Byte)
                        amb.Saida.EmiteDecrementaByteArrayNaVariavelLocal(variavel.Posicao, desvioNoPonteiro);
                    else if(tipoPonteiro == TipoAcaoPonteiro.Word)
                        amb.Saida.EmiteDecrementaWordArrayNaVariavelLocal(variavel.Posicao, desvioNoPonteiro);
                    else throw Erro("Tipo não suportado");
                }
                else
                {
                        if(tipoPonteiro == TipoAcaoPonteiro.Byte)
                            amb.Saida.EmiteDecrementaByteArrayNaVariavelGlobal(variavel.NomeGlobal, desvioNoPonteiro);
                        else if(tipoPonteiro == TipoAcaoPonteiro.Word)
                            amb.Saida.EmiteDecrementaWordArrayNaVariavelGlobal(variavel.NomeGlobal, desvioNoPonteiro);
                        else throw Erro("Tipo não suportado");
                }
                break;
            case TipoDeAcao.Gravacao:
                if(variavel.Publicidade == NivelPublicidade.Local)
                {
                    if(ValorGravacao is Numero)
                    {
                        if(tipoPonteiro == TipoAcaoPonteiro.Byte)
                            amb.Saida.EmiteGravaNumeroNoByteArrayDaVariavelLocal(variavel.Posicao, ((Numero)ValorGravacao).Valor, desvioNoPonteiro);
                        else if(tipoPonteiro == TipoAcaoPonteiro.Word)
                            amb.Saida.EmiteGravaNumeroNoWordArrayDaVariavelLocal(variavel.Posicao, ((Numero)ValorGravacao).Valor, desvioNoPonteiro);
                        else throw Erro("Tipo não suportado");
                    }
                    else if(ValorGravacao is Texto)
                    {
                        string txt_pula = amb.Saida.GeraRotulo();
                        string txt_ptr = amb.Saida.GeraRotulo();
                        int tam = System.Text.Encoding.UTF8.GetByteCount(((Texto)ValorGravacao).Conteudo);
                        if(tam > 255) throw Erro("Texto ultrapassa limite de 255 bytes");
                        amb.Saida.EmitePulaPara(txt_pula);
                        amb.Saida.EmiteRotulo(txt_ptr);
                        amb.Saida.EmiteBinario(new byte[1]{(byte)tam});
                        amb.Saida.EmiteBinario(System.Text.Encoding.UTF8.GetBytes(((Texto)ValorGravacao).Conteudo));
                        amb.Saida.EmiteGerarEspaco(1);
                        amb.Saida.EmiteRotulo(txt_pula);
                        amb.Saida.EmiteCopiaSegCodigoParaAcumulador();
                        amb.Saida.EmiteCopiaAcumuladorParaSegDaVariavelLocal(variavel.Posicao);
                        amb.Saida.EmiteGravaRotuloEmAcumulador(txt_ptr);
                        amb.Saida.EmiteCopiaAcumuladorParaVariavelLocal(variavel.Posicao);
                    }
                    else
                    {
                        amb.Tipo = variavel.Tipo;
                        ValorGravacao.Compila(amb);
                        amb.Tipo = null;
                        if(amb.TipoPonteiro)
                            amb.Saida.EmiteCopiaPonteiroRemotoParaVariavelLocal(variavel.Posicao);
                        else if(tipoPonteiro == TipoAcaoPonteiro.Byte)
                            amb.Saida.EmiteCopiaAcumuladorParaByteArrayDaVariavelLocal(variavel.Posicao, desvioNoPonteiro);
                        else if(tipoPonteiro == TipoAcaoPonteiro.Word)
                            amb.Saida.EmiteCopiaAcumuladorParaWordArrayDaVariavelLocal(variavel.Posicao, desvioNoPonteiro);
                        else throw Erro("Tipo não suportado");
                    }
                }
                else
                {
                    if(ValorGravacao is Numero)
                    {
                        if(tipoPonteiro == TipoAcaoPonteiro.Byte)
                            amb.Saida.EmiteGravaNumeroNoByteArrayDaVariavelGlobal(variavel.NomeGlobal, ((Numero)ValorGravacao).Valor, desvioNoPonteiro);
                        else if(tipoPonteiro == TipoAcaoPonteiro.Word)
                            amb.Saida.EmiteGravaNumeroNoWordArrayDaVariavelGlobal(variavel.NomeGlobal, ((Numero)ValorGravacao).Valor, desvioNoPonteiro);
                        else throw Erro("Tipo não suportado");
                    }
                    else if(ValorGravacao is Texto)
                    {
                        string txt_pula = amb.Saida.GeraRotulo();
                        string txt_ptr = amb.Saida.GeraRotulo();
                        int tam = System.Text.Encoding.UTF8.GetByteCount(((Texto)ValorGravacao).Conteudo);
                        if(tam > 255) throw Erro("Texto ultrapassa limite de 255 bytes");
                        amb.Saida.EmitePulaPara(txt_pula);
                        amb.Saida.EmiteRotulo(txt_ptr);
                        amb.Saida.EmiteBinario(new byte[1]{(byte)tam});
                        amb.Saida.EmiteBinario(System.Text.Encoding.UTF8.GetBytes(((Texto)ValorGravacao).Conteudo));
                        amb.Saida.EmiteGerarEspaco(1);
                        amb.Saida.EmiteRotulo(txt_pula);
                        amb.Saida.EmiteCopiaSegCodigoParaAcumulador();
                        amb.Saida.EmiteCopiaAcumuladorParaSegDaVariavelGlobal(variavel.NomeGlobal);
                        amb.Saida.EmiteGravaRotuloEmAcumulador(txt_ptr);
                        amb.Saida.EmiteCopiaAcumuladorParaVariavelGlobal(variavel.NomeGlobal);
                    }
                    else
                    {
                        amb.Tipo = variavel.Tipo;
                        ValorGravacao.Compila(amb);
                        amb.Tipo = null;
                        if(amb.TipoPonteiro)
                            amb.Saida.EmiteCopiaPonteiroRemotoParaVariavelGlobal(variavel.NomeGlobal);
                        if(tipoPonteiro == TipoAcaoPonteiro.Byte)
                            amb.Saida.EmiteCopiaAcumuladorParaByteArrayDaVariavelGlobal(variavel.NomeGlobal, desvioNoPonteiro);
                        else if(tipoPonteiro == TipoAcaoPonteiro.Word)
                            amb.Saida.EmiteCopiaAcumuladorParaWordArrayDaVariavelGlobal(variavel.NomeGlobal, desvioNoPonteiro);
                        else throw Erro("Tipo não suportado");
                    }
                }
                break;
        }
    }


    protected override void CompilaInterno(Ambiente amb)
    {
        if(amb.Modulo == null) throw Erro("Módulo não declarado");
        if(amb.Rotina == null) throw Erro("Rotina não declarado");
        Queue<string> referencia = new Queue<string>(Nome);
        Modulo? mod = amb.Modulo;
        switch (Tipo)
        {
            case TipoDeAcao.Leitura:
            case TipoDeAcao.LeituraDesvio:
            case TipoDeAcao.LeituraSegmento:
            case TipoDeAcao.Gravacao:
            case TipoDeAcao.GravacaoDesvio:
            case TipoDeAcao.GravacaoSegmento:
            case TipoDeAcao.Incremento:
            case TipoDeAcao.IncrementoDesvio:
            case TipoDeAcao.IncrementoSegmento:
                {
                    DeclaraVariavel? variavel = amb.Rotina.PesquisaVariavel(referencia.Peek());
                    if(variavel == null) variavel = amb.Modulo.PesquisaCampo(referencia.Peek());
                    if(variavel == null)
                    {
                        mod = amb.PesquisaModulo(referencia.Peek());
                        if(mod == null) throw Erro($"Referência {referencia.Peek()} não encontrada.");
                        referencia.Dequeue();
                        if(!referencia.Any()) throw Erro($"Esperada uma referência a uma variável ou rotina, porém encontrada apenas o nome do módulo");
                        variavel = mod.PesquisaCampo(referencia.Peek());
                    }
                    referencia.Dequeue();
                    if(variavel == null) throw Erro("Variável não encontrada");
                    if(variavel.Publicidade == NivelPublicidade.Privado & mod != amb.Modulo) throw Erro("Esta variável não é acessível de fora do módulo");
                    switch(variavel.Tipo)
                    {
                        case TipoVariavel.Int8:
                        case TipoVariavel.UInt8:
                        case TipoVariavel.Int16:
                        case TipoVariavel.UInt16:
                            if(referencia.Any()) throw Erro("Variavel de tipo inválido");
                            acaoVariavel(amb, variavel);
                            break;
                        case TipoVariavel.PtrByteArray:
                            if(referencia.Any()) throw Erro("Variavel de tipo inválido");
                            if(TipoSegmento | TipoDesvio)
                            {
                                acaoVariavel(amb, variavel);
                            }
                            else
                            {
                                acaoPonteiro(amb, variavel, TipoAcaoPonteiro.Byte, 0);
                            }
                            break;
                        case TipoVariavel.PtrWordArray:
                            if(referencia.Any()) throw Erro("Variavel de tipo inválido");
                            if(TipoSegmento | TipoDesvio)
                            {
                                acaoVariavel(amb, variavel);
                            }
                            else
                            {
                                acaoPonteiro(amb, variavel, TipoAcaoPonteiro.Word, 0);
                            }
                            break;
                        case TipoVariavel.Structure:
                            if(!referencia.Any())
                            {
                                if(TipoSegmento | TipoDesvio)
                                {
                                    acaoVariavel(amb, variavel);
                                }
                                else throw Erro("Operação não suportada");
                            }
                            else
                            {
                                Estrutura? estru = amb.PesquisaEstrutura(variavel.Nome);
                                if(estru == null) throw Erro("Estrutura não encontrada");
                                DeclaraVariavel? campo = estru.PesquisaCampo(referencia.Peek());
                                if(campo == null) throw Erro($"Campo '{referencia.Peek()}' não encontrado");
                                switch(Tipo)
                                {
                                    case TipoDeAcao.Leitura:
                                        if(variavel.Tipo == TipoVariavel.Int8 | variavel.Tipo == TipoVariavel.UInt8)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteCopiaByteArrayDaVariavelLocalParaAcumulador(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteCopiaByteArrayDaVariavelGlobalParaAcumulador(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else if(variavel.Tipo == TipoVariavel.Int16 | variavel.Tipo == TipoVariavel.UInt16)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteCopiaWordArrayDaVariavelLocalParaAcumulador(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteCopiaWordArrayDaVariavelGlobalParaAcumulador(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else throw Erro("Tipo dentro da estrutura não suportado para esta operação");
                                        break;
                                    case TipoDeAcao.Incremento:
                                        if(variavel.Tipo == TipoVariavel.Int8 | variavel.Tipo == TipoVariavel.UInt8)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteIncrementaByteArrayNaVariavelLocal(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteIncrementaByteArrayNaVariavelGlobal(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else if(variavel.Tipo == TipoVariavel.Int16 | variavel.Tipo == TipoVariavel.UInt16)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteIncrementaWordArrayNaVariavelLocal(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteIncrementaWordArrayNaVariavelGlobal(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else throw Erro("Tipo dentro da estrutura não suportado para esta operação");
                                        break;
                                    case TipoDeAcao.Decremento:
                                        if(variavel.Tipo == TipoVariavel.Int8 | variavel.Tipo == TipoVariavel.UInt8)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteDecrementaByteArrayNaVariavelLocal(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteDecrementaByteArrayNaVariavelGlobal(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else if(variavel.Tipo == TipoVariavel.Int16 | variavel.Tipo == TipoVariavel.UInt16)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteDecrementaWordArrayNaVariavelLocal(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteDecrementaWordArrayNaVariavelGlobal(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else throw Erro("Tipo dentro da estrutura não suportado para esta operação");
                                        break;
                                    case TipoDeAcao.Gravacao:
                                        if(variavel.Tipo == TipoVariavel.Int8 | variavel.Tipo == TipoVariavel.UInt8)
                                        {
                                            amb.Tipo = campo.Tipo;
                                            ValorGravacao.Compila(amb);
                                            amb.Tipo = null;
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteCopiaAcumuladorParaByteArrayDaVariavelLocal(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteCopiaAcumuladorParaByteArrayDaVariavelGlobal(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else if(variavel.Tipo == TipoVariavel.Int16 | variavel.Tipo == TipoVariavel.UInt16)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteCopiaAcumuladorParaWordArrayDaVariavelLocal(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteCopiaAcumuladorParaWordArrayDaVariavelGlobal(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else throw Erro("Tipo dentro da estrutura não suportado para esta operação");
                                        break;
                                    default: throw Erro("Tipo de ação não suportado dentro de uma estrutura");
                                }
                            }
                            break;
                        default: throw Erro("Ação não suportada");
                    }
                }
                break;
            case TipoDeAcao.Chamada:
                {
                    Rotina? rot = amb.Modulo.PesquisaRotina(referencia.Peek());
                    if(rot == null)
                    {
                        mod = amb.PesquisaModulo(referencia.Peek());
                        if(mod == null) throw Erro("Rotina não encontrada");
                        referencia.Dequeue();
                        rot = mod.PesquisaRotina(referencia.Peek());
                    }
                    if(rot == null) throw Erro("Rotina não encontrada");
                    referencia.Dequeue();
                    if(referencia.Any()) throw Erro("Caminho indisponível para rotina");
                    var tipoAnterior = amb.Tipo;
                    List<No> args = new List<No>();
                    args.AddRange(ArgumentosChamada);
                    args.Reverse();
                    List<DeclaraVariavel> pars = new List<DeclaraVariavel>();
                    pars.AddRange(rot.Argumentos);
                    pars.Reverse();
                    for (int i = 0; i < args.Count; i++)
                    {
                        amb.Tipo = pars[i].Tipo;
                        args[i].Compila(amb);
                        switch (amb.Tipo)
                        {
                            case TipoVariavel.Int8:
                            case TipoVariavel.UInt8:
                                amb.Saida.EmiteConverteAcumuladorEmByte();
                                amb.Saida.EmiteEmpilhaAcumulador();
                                break;
                            case TipoVariavel.Int16:
                            case TipoVariavel.UInt16:
                                amb.Saida.EmiteEmpilhaAcumulador();
                                break;
                            case TipoVariavel.PtrByteArray:
                            case TipoVariavel.PtrWordArray:
                                amb.Saida.EmiteEmpilhaPonteiroRemoto();
                                break;
                            default: throw Erro("Tipo não suportado");
                        }
                        amb.Tipo = null;
                    }
                    amb.Saida.EmiteChamaRotina(rot.Modulo.Nome, rot.Nome);
                    if(rot.PosicaoArg != 6)
                        amb.Saida.EmiteAdicionaNoPtrPilha(rot.PosicaoArg - 6);
                    amb.Tipo = tipoAnterior;
                }
                break;
            default: throw Erro("Tipo de ação desconhecida");
        }

    }

    protected override void InicializaInterno(Ambiente amb)
    {
        Modulo? mod = amb.PesquisaModulo(Nome.First());
        if(mod != null) amb.CadastraReferencia(mod);
        ValorGravacao.Inicializa(amb);
        InicializaLista(ArgumentosChamada, amb);
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        ValorGravacao = ValorGravacao.Otimiza(amb);
        ArgumentosChamada = OtimizaLista(ArgumentosChamada, amb);
        return this;
    }
}