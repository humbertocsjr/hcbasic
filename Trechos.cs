class Trechos
{
    public Fonte Fonte { get; set; }
    public Trecho[] Conteudo { get; set; }
    public int PosAtual { get; set; }

    public bool FimDaLinha => Atual.Tipo == TipoTrecho.FimDaLinha;
    public bool FimDoArquivo { get; set; }

    public Trechos(Fonte fonte, Trecho[] trechos)
    {
        Fonte = fonte;
        Conteudo = trechos;
        PosAtual = -1;
        Proximo();
    }

    public bool ProximaLinha()
    {
        Trechos tmp = Fonte.LeiaLinha();
        PosAtual = -1;
        Conteudo = tmp.Conteudo;
        FimDoArquivo = tmp.FimDoArquivo;
        Proximo();
        return !FimDoArquivo;
    }

    public Trecho Atual => PosAtual < Conteudo.Length ? Conteudo[PosAtual] : Conteudo.Last();
    public Trecho Anterior => Conteudo[PosAtual-1];

    public bool EhProximoTipo(TipoTrecho tipo)
    {
        if((PosAtual + 1) >= Conteudo.Length) return false;
        return Conteudo[PosAtual + 1].Tipo == tipo;
    }
    public bool EhIdentificador() => Atual.Tipo == TipoTrecho.Id;
    public bool EhIdentificador(string id) => (EhIdentificador() && Atual.Conteudo.ToLower() == id.ToLower());

    public bool EhOpMatematica() => Atual.Tipo == TipoTrecho.OperacaoMatematica;
    public bool EhOpMatematica(string id) => (EhOpMatematica() && Atual.Conteudo.ToLower() == id.ToLower());
    public bool EhOpLogica() => Atual.Tipo == TipoTrecho.OperacaoLogica;
    public bool EhOpLogica(string id) => (EhOpLogica() && Atual.Conteudo.ToLower() == id.ToLower());
    public bool EhTipo(TipoTrecho tipo) => Atual.Tipo == tipo;

    public bool Proximo()
    {
        PosAtual++;
        return !FimDaLinha;
    }

    public void Erro(string erro)
    {
        throw new Erro(Atual, erro);
    }

    public void ExigeProximoFimDaLinha(string erro)
    {
        Proximo();
        if(!FimDaLinha) throw new Erro(Atual, erro);
    }

    public void ExigeFimDaLinha(string erro)
    {
        if(!FimDaLinha) throw new Erro(Atual, erro);
    }

    public void ExigeTipo(TipoTrecho tipo, string erro)
    {
        if(!EhTipo(tipo)) throw new Erro(Atual, erro);
    }

    public void ExigeProximo(string erro)
    {
        if(!Proximo())
        {
            PosAtual --;
            throw new Erro(Atual, erro);
        }
    }

    public void ExigeId(string erro)
    {
        if(!EhIdentificador())
        throw new Erro(Atual, erro);
    }

    public void ExigeId(string id, string erro)
    {
        if(!EhIdentificador(id))
        throw new Erro(Atual, erro);
    }

    public void ExigeProximaLinha(Trecho ultimo, string erro)
    {
        if(!ProximaLinha())
        throw new Erro(ultimo, erro);
    }

    public override string ToString()
    {
        return Atual.ToString();
    }

}