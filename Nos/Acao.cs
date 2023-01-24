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
        DecrementoSegmento,
        NovaEstrutura
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
                        amb.VariavelDestino = variavel;
                        ValorGravacao.Compila(amb);
                        amb.VariavelDestino = null;
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
                        amb.VariavelDestino = variavel;
                        ValorGravacao.Compila(amb);
                        amb.VariavelDestino = null;
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
                        amb.VariavelDestino = variavel;
                        ValorGravacao.Compila(amb);
                        amb.VariavelDestino = null;
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
                        amb.VariavelDestino = variavel;
                        ValorGravacao.Compila(amb);
                        amb.VariavelDestino = null;
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
                        amb.Saida.EmiteCopiaByteArrayDaVariavelLocalParaPonteiroRemoto(variavel.Posicao);
                    else if(tipoPonteiro == TipoAcaoPonteiro.Byte)
                        amb.Saida.EmiteCopiaByteArrayDaVariavelLocalParaAcumulador(variavel.Posicao, desvioNoPonteiro);
                    else if(tipoPonteiro == TipoAcaoPonteiro.Word)
                        amb.Saida.EmiteCopiaWordArrayDaVariavelLocalParaAcumulador(variavel.Posicao, desvioNoPonteiro);
                    else throw Erro("Tipo não suportado");
                }
                else
                {
                    if(amb.TipoPonteiro)
                        amb.Saida.EmiteCopiaWordArrayDaVariavelLocalParaPonteiroRemoto(variavel.Posicao);
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
                        amb.VariavelDestino = variavel;
                        ValorGravacao.Compila(amb);
                        if(amb.TipoPonteiro)
                            amb.Saida.EmiteCopiaPonteiroRemotoParaVariavelLocal(variavel.Posicao);
                        else if(tipoPonteiro == TipoAcaoPonteiro.Byte)
                            amb.Saida.EmiteCopiaAcumuladorParaByteArrayDaVariavelLocal(variavel.Posicao, desvioNoPonteiro);
                        else if(tipoPonteiro == TipoAcaoPonteiro.Word)
                            amb.Saida.EmiteCopiaAcumuladorParaWordArrayDaVariavelLocal(variavel.Posicao, desvioNoPonteiro);
                        else throw Erro("Tipo não suportado");
                        amb.VariavelDestino = null;
                        amb.Tipo = null;
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
                        amb.VariavelDestino = variavel;
                        ValorGravacao.Compila(amb);
                        if(amb.TipoPonteiro)
                            amb.Saida.EmiteCopiaPonteiroRemotoParaVariavelGlobal(variavel.NomeGlobal);
                        if(tipoPonteiro == TipoAcaoPonteiro.Byte)
                            amb.Saida.EmiteCopiaAcumuladorParaByteArrayDaVariavelGlobal(variavel.NomeGlobal, desvioNoPonteiro);
                        else if(tipoPonteiro == TipoAcaoPonteiro.Word)
                            amb.Saida.EmiteCopiaAcumuladorParaWordArrayDaVariavelGlobal(variavel.NomeGlobal, desvioNoPonteiro);
                        else throw Erro("Tipo não suportado");
                        amb.VariavelDestino = null;
                        amb.Tipo = null;
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
            case TipoDeAcao.Decremento:
            case TipoDeAcao.DecrementoDesvio:
            case TipoDeAcao.DecrementoSegmento:
            case TipoDeAcao.NovaEstrutura:
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
                        case TipoVariavel.Func:
                        case TipoVariavel.Action:
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
                                else if(Tipo == TipoDeAcao.Gravacao & ValorGravacao is Texto)
                                {
                                    acaoPonteiro(amb, variavel, TipoAcaoPonteiro.Byte, 0);
                                }
                                else if(Tipo == TipoDeAcao.NovaEstrutura)
                                {
                                    Estrutura? estru = amb.PesquisaEstrutura(variavel.TipoNome);
                                    if(variavel.Publicidade != NivelPublicidade.Local) throw Erro("Este tipo de ação só é suportada em variáveis locais internas");
                                    if(amb.Rotina.Argumentos.Any(a => a.Nome.ToLower() == variavel.Nome.ToLower()))  throw Erro("Este tipo de ação só é suportada em variáveis locais internas");
                                    if(estru == null) throw Erro("Estrutura não encontrada");
                                    if(estru.Nome.ToLower() == "string")
                                        amb.Saida.EmiteSubtraiDoPtrPilha(129);
                                    else 
                                        amb.Saida.EmiteSubtraiDoPtrPilha(estru.TamanhoCampos);
                                    amb.Saida.EmiteCopiaPonteiroPilhaParaPonteiroRemoto();
                                    amb.Saida.EmiteCopiaPonteiroRemotoParaVariavelLocal(variavel.Posicao);
                                    if(estru.Nome.ToLower() == "string")
                                    {
                                        amb.Saida.EmiteGravaNumeroNoByteArrayDaVariavelLocal(variavel.Posicao, 128, 0);
                                        amb.Saida.EmiteGravaNumeroNoByteArrayDaVariavelLocal(variavel.Posicao, 0, 1);
                                    }
                                }
                                else if(amb.TipoPonteiro)
                                {
                                    acaoPonteiro(amb, variavel, TipoAcaoPonteiro.Byte, 0);
                                }
                                else throw Erro("Operação não suportada");
                            }
                            else
                            {
                                Estrutura? estru = amb.PesquisaEstrutura(variavel.TipoNome);
                                if(estru == null) throw Erro("Estrutura não encontrada");
                                DeclaraVariavel? campo = estru.PesquisaCampo(referencia.Peek());
                                if(campo == null) throw Erro($"Campo '{referencia.Peek()}' não encontrado");
                                switch(Tipo)
                                {
                                    case TipoDeAcao.LeituraSegmento:
                                        if(variavel.Publicidade == NivelPublicidade.Local)
                                            amb.Saida.EmiteCopiaWordArrayDaVariavelLocalParaAcumulador(variavel.Posicao, campo.Posicao + 2);
                                        else
                                            amb.Saida.EmiteCopiaWordArrayDaVariavelGlobalParaAcumulador(variavel.NomeGlobal, campo.Posicao + 2);
                                        break;
                                    case TipoDeAcao.LeituraDesvio:
                                        if(variavel.Publicidade == NivelPublicidade.Local)
                                            amb.Saida.EmiteCopiaWordArrayDaVariavelLocalParaAcumulador(variavel.Posicao, campo.Posicao);
                                        else
                                            amb.Saida.EmiteCopiaWordArrayDaVariavelGlobalParaAcumulador(variavel.NomeGlobal, campo.Posicao);
                                        break;
                                    case TipoDeAcao.Leitura:
                                        if(campo.Tipo == TipoVariavel.Int8 | campo.Tipo == TipoVariavel.UInt8)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteCopiaByteArrayDaVariavelLocalParaAcumulador(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteCopiaByteArrayDaVariavelGlobalParaAcumulador(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else if(campo.Tipo == TipoVariavel.Int16 | campo.Tipo == TipoVariavel.UInt16)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteCopiaWordArrayDaVariavelLocalParaAcumulador(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteCopiaWordArrayDaVariavelGlobalParaAcumulador(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else if(campo.Tipo == TipoVariavel.PtrByteArray | campo.Tipo == TipoVariavel.Structure | campo.Tipo == TipoVariavel.Func | campo.Tipo == TipoVariavel.Action)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteCopiaByteArrayDaVariavelLocalParaPonteiroRemoto(variavel.Posicao);
                                            else
                                                amb.Saida.EmiteCopiaByteArrayDaVariavelGlobalComoPonteiroRemoto(variavel.NomeGlobal);
                                        }
                                        else if(campo.Tipo == TipoVariavel.PtrWordArray)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteCopiaWordArrayDaVariavelLocalParaPonteiroRemoto(variavel.Posicao);
                                            else
                                                amb.Saida.EmiteCopiaWordArrayDaVariavelGlobalParaPonteiroRemoto(variavel.NomeGlobal);
                                        }
                                        else throw Erro("Tipo dentro da estrutura não suportado para esta operação");
                                        break;
                                    case TipoDeAcao.Incremento:
                                        if(campo.Tipo == TipoVariavel.Int8 | campo.Tipo == TipoVariavel.UInt8)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteIncrementaByteArrayNaVariavelLocal(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteIncrementaByteArrayNaVariavelGlobal(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else if(campo.Tipo == TipoVariavel.Int16 | campo.Tipo == TipoVariavel.UInt16)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteIncrementaWordArrayNaVariavelLocal(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteIncrementaWordArrayNaVariavelGlobal(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else throw Erro("Tipo dentro da estrutura não suportado para esta operação");
                                        break;
                                    case TipoDeAcao.Decremento:
                                        if(campo.Tipo == TipoVariavel.Int8 | campo.Tipo == TipoVariavel.UInt8)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteDecrementaByteArrayNaVariavelLocal(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteDecrementaByteArrayNaVariavelGlobal(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else if(campo.Tipo == TipoVariavel.Int16 | campo.Tipo == TipoVariavel.UInt16)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteDecrementaWordArrayNaVariavelLocal(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteDecrementaWordArrayNaVariavelGlobal(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else throw Erro("Tipo dentro da estrutura não suportado para esta operação");
                                        break;
                                    case TipoDeAcao.Gravacao:
                                        amb.Tipo = campo.Tipo;
                                        amb.VariavelDestino = campo;
                                        ValorGravacao.Compila(amb);
                                        amb.VariavelDestino = null;
                                        amb.Tipo = null;
                                        if(campo.Tipo == TipoVariavel.Int8 | campo.Tipo == TipoVariavel.UInt8)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteCopiaAcumuladorParaByteArrayDaVariavelLocal(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteCopiaAcumuladorParaByteArrayDaVariavelGlobal(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else if(campo.Tipo == TipoVariavel.Int16 | campo.Tipo == TipoVariavel.UInt16)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteCopiaAcumuladorParaWordArrayDaVariavelLocal(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteCopiaAcumuladorParaWordArrayDaVariavelGlobal(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else if(campo.Tipo == TipoVariavel.PtrByteArray | campo.Tipo == TipoVariavel.Structure | campo.Tipo == TipoVariavel.Func | campo.Tipo == TipoVariavel.Action)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteCopiaPonteiroRemotoParaByteArrayNaVariavelLocal(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteCopiaPonteiroRemotoParaByteArrayNaVariavelGlobal(variavel.NomeGlobal, campo.Posicao);
                                        }
                                        else if(campo.Tipo == TipoVariavel.PtrWordArray)
                                        {
                                            if(variavel.Publicidade == NivelPublicidade.Local)
                                                amb.Saida.EmiteCopiaPonteiroRemotoParaWordArrayNaVariavelLocal(variavel.Posicao, campo.Posicao);
                                            else
                                                amb.Saida.EmiteCopiaPonteiroRemotoParaWordArrayNaVariavelGlobal(variavel.NomeGlobal, campo.Posicao);
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
                    if(referencia.Count() == 1 & referencia.First() == "addressof")
                    {
                        referencia.Clear();
                        foreach(No no in ArgumentosChamada)
                        {
                            if(no is not Acao)
                            {
                                throw Erro("");
                            }
                            referencia = new Queue<string>((((Acao)no).Nome));
                        }
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
                        amb.Saida.EmiteDefinePonteiroRemotoParaRotuloDoCodigo($"_{rot.Modulo.Nome}_{rot.Nome}");
                        if(!amb.TipoPonteiro) throw Erro("Retorno do comando AddressOf deve ser um tipo de ponteiro");
                        if(amb.Tipo == TipoVariavel.Func | amb.Tipo == TipoVariavel.Action)
                        {
                            if(amb.Tipo == TipoVariavel.Func & !rot.RetornaValor) throw Erro("Esperada função, porém fornecido uma sub-rotina");
                            if(amb.Tipo == TipoVariavel.Action & rot.RetornaValor) throw Erro("Esperada sub-rotina, porém fornecido uma função");
                            if(amb.VariavelDestino == null) throw Erro("Erro de compilador: não informado variável destino");
                            DeclaraVariavel destino = amb.VariavelDestino;
                            for (int i = 0; i < destino.ArgumentosFuncAction.Count(); i++)
                            {
                                if(destino.ArgumentosFuncAction[i].Tipo == rot.Argumentos[i].Tipo)
                                {
                                    if(destino.ArgumentosFuncAction[i].Tipo == TipoVariavel.Structure)
                                    {
                                        if(destino.ArgumentosFuncAction[i].TipoNome != rot.Argumentos[i].TipoNome)
                                            throw Erro("Os tipos declarados na variavel não são compatíveis com os tipos da rotina referênciada");
                                    }
                                }
                                else throw Erro("Os tipos declarados na variavel não são compatíveis com os tipos da rotina referênciada");
                            }
                        }
                    }
                    else if(referencia.Last().ToLower() == "invoke")
                    {
                        DeclaraVariavel? variavel = amb.Rotina.PesquisaVariavel(referencia.Peek());
                        List<string> nomeVariavel = new List<string>();
                        nomeVariavel.Add(referencia.Peek());
                        if(variavel == null) variavel = amb.Modulo.PesquisaCampo(referencia.Peek());
                        if(variavel == null)
                        {
                            mod = amb.PesquisaModulo(referencia.Peek());
                            if(mod == null) throw Erro($"Referência {referencia.Peek()} não encontrada.");
                            referencia.Dequeue();
                            if(!referencia.Any()) throw Erro($"Esperada uma referência a uma variável ou rotina, porém encontrada apenas o nome do módulo");
                            variavel = mod.PesquisaCampo(referencia.Peek());
                            nomeVariavel.Add(referencia.Peek());
                        }
                        if(variavel == null) throw Erro("Variável não encontrada");
                        TipoVariavel tipoVariavel = variavel.Tipo;
                        int desvio = 0;
                        referencia.Dequeue();
                        List<No> args = new List<No>();
                        List<DeclaraVariavel> pars = new List<DeclaraVariavel>();
                        bool parteDeEstrutura = false;
                        if(tipoVariavel == TipoVariavel.Structure)
                        {
                            parteDeEstrutura = true;
                            Estrutura? subEstrutura = amb.PesquisaEstrutura(variavel.TipoNome);
                            if(subEstrutura == null) throw Erro($"Estrutura {variavel.TipoNome} não encontrada");
                            DeclaraVariavel? subVariavel = subEstrutura.PesquisaCampo(referencia.Peek());
                            if(subVariavel == null)throw Erro($"Campo {referencia.Peek()} não encontrada na estrutura {variavel.TipoNome} não encontrada");
                            desvio = subVariavel.Posicao;
                            tipoVariavel = subVariavel.Tipo;
                            referencia.Dequeue();
                            if(subVariavel.ArgumentosFuncAction.Any() && subEstrutura.Nome == subVariavel.ArgumentosFuncAction.First().TipoNome)
                            {
                                args.Add(new Acao(Trecho, new List<string>(nomeVariavel), TipoDeAcao.Leitura));
                            }
                            pars.AddRange(subVariavel.ArgumentosFuncAction);
                            pars.Reverse();
                        }
                        else
                        {
                            pars.AddRange(variavel.ArgumentosFuncAction);
                            pars.Reverse();
                        }
                        if(referencia.Count() != 1 & referencia.Peek().ToLower() != "invoke") 
                            throw Erro("Esperado 'Invoke' para chamada da rotina");
                        if(variavel.Publicidade == NivelPublicidade.Privado & mod != amb.Modulo) throw Erro("Esta variável não é acessível de fora do módulo");
                        var tipoAnterior = amb.Tipo;
                        var variavelAnterior = amb.VariavelDestino;
                        args.AddRange(ArgumentosChamada);
                        args.Reverse();
                        int tamArgumentos = 0;
                        for (int i = 0; i < args.Count; i++)
                        {
                            amb.Tipo = pars[i].Tipo;
                            if(amb.Tipo != null) tamArgumentos += amb.Saida.CalculaTamanho((TipoVariavel)amb.Tipo);
                            amb.VariavelDestino = pars[i];
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
                                case TipoVariavel.Structure:
                                    amb.Saida.EmiteEmpilhaPonteiroRemoto();
                                    break;
                                default: throw Erro("Tipo não suportado");
                            }
                            amb.VariavelDestino = null;
                            amb.Tipo = null;
                        }
                        if(parteDeEstrutura)
                        {
                            if(variavel.Publicidade == NivelPublicidade.Local)
                            {
                                amb.Saida.EmiteChamaRotinaEmPonteiroNaVariavelLocal(variavel.Posicao, desvio);
                            }
                            else
                            {
                                amb.Saida.EmiteChamaRotinaEmPonteiroNaVariavelGlobal(variavel.NomeGlobal, desvio);
                            }
                        }
                        else if(variavel.Publicidade == NivelPublicidade.Local)
                        {
                            amb.Saida.EmiteChamaRotinaEmVariavelLocal(variavel.Posicao);
                        }
                        else
                        {
                            amb.Saida.EmiteChamaRotinaEmVariavelGlobal(variavel.NomeGlobal);
                        }
                        if(tamArgumentos != 0)
                            amb.Saida.EmiteAdicionaNoPtrPilha(tamArgumentos);
                        amb.VariavelDestino = variavelAnterior;
                        amb.Tipo = tipoAnterior;
                    }
                    else
                    {                    
                        Rotina? rot = amb.Modulo.PesquisaRotina(referencia.Peek());
                        if(rot == null)
                        {
                            mod = amb.PesquisaModulo(referencia.Peek());
                            if(mod == null) 
                                throw Erro("Rotina não encontrada");
                            referencia.Dequeue();
                            rot = mod.PesquisaRotina(referencia.Peek());
                        }
                        if(rot == null) 
                            throw Erro("Rotina não encontrada");
                        referencia.Dequeue();
                        if(referencia.Any()) throw Erro("Caminho indisponível para rotina");
                        var tipoAnterior = amb.Tipo;
                        var variavelAnterior = amb.VariavelDestino;
                        List<No> args = new List<No>();
                        args.AddRange(ArgumentosChamada);
                        args.Reverse();
                        List<DeclaraVariavel> pars = new List<DeclaraVariavel>();
                        pars.AddRange(rot.Argumentos);
                        pars.Reverse();
                        for (int i = 0; i < args.Count; i++)
                        {
                            amb.Tipo = pars[i].Tipo;
                            amb.VariavelDestino = pars[i];
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
                                case TipoVariavel.Structure:
                                    amb.Saida.EmiteEmpilhaPonteiroRemoto();
                                    break;
                                default: throw Erro("Tipo não suportado");
                            }
                            amb.VariavelDestino = null;
                            amb.Tipo = null;
                        }
                        amb.Saida.EmiteChamaRotina(rot.Modulo.Nome, rot.Nome);
                        if(rot.PosicaoArg != 6)
                            amb.Saida.EmiteAdicionaNoPtrPilha(rot.PosicaoArg - 6);
                        amb.VariavelDestino = variavelAnterior;
                        amb.Tipo = tipoAnterior;
                    }
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