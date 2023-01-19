class DeclaraVariavel : No
{
    public string NomeGlobal => $"_{Modulo.Nome}_{Nome}";
    public bool EhNumerica() => Tipo == TipoVariavel.Int16 | Tipo == TipoVariavel.UInt16 | Tipo == TipoVariavel.Int8 | Tipo == TipoVariavel.UInt8;
    public bool EhPonteiro() => Tipo == TipoVariavel.PtrByteArray | Tipo == TipoVariavel.PtrWordArray;
    public bool Argumento { get; set; } = false;
    public NivelPublicidade Publicidade { get; set; }
    public string Nome { get; set; }
    public TipoVariavel Tipo { get; set; }
    public int ColecaoTamanho { get; set; }
    public bool Colecao { get; set; }
    public bool VariavelDoModulo { get; set; }
    public int Posicao { get; set; }

    public Modulo Modulo { get; set; }
    public DeclaraVariavel(Trecho trecho, Modulo modulo, bool varDoModulo, NivelPublicidade publicidade, TipoVariavel tipo, bool colecao, int colecaoTam, int posicao = 0) : base(trecho)
    {
        Modulo = modulo;
        VariavelDoModulo = varDoModulo;
        Posicao = posicao;
        Publicidade = publicidade;
        Tipo = tipo;
        Nome = trecho.Conteudo;
        Colecao = colecao;
        ColecaoTamanho = colecaoTam;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        string rotulo;
        switch(Publicidade)
        {
            case NivelPublicidade.Local:
                break;
            case NivelPublicidade.Publico:
            case NivelPublicidade.Privado:
                rotulo = amb.Saida.GeraRotulo();
                amb.Saida.EmitePulaPara(rotulo);
                amb.Saida.EmiteRotulo(NomeGlobal);
                amb.Saida.EmiteGerarEspaco(amb.Saida.CalculaTamanho(Tipo));
                amb.Saida.EmiteRotulo(rotulo);
                break;
        }
    }

    protected override void InicializaInterno(Ambiente amb)
    {
        switch (Publicidade)
        {
            case NivelPublicidade.Local:
                if(amb.Rotina == null) throw Erro("Rotina não declarada");
                if(this.Argumento)
                {
                    Posicao = amb.Rotina.PosicaoArg;
                    amb.Rotina.PosicaoArg += amb.Saida.CalculaTamanho(Tipo);
                }
                else
                {
                    amb.Rotina.PosicaoVar += amb.Saida.CalculaTamanho(Tipo);
                    Posicao = -amb.Rotina.PosicaoVar;
                }
                break;
        }
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        return this;
    }

    public override string ToString()
    {
        return $"dim {Nome} as {Tipo}";
    }
}