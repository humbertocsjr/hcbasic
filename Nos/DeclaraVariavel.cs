class DeclaraVariavel : No
{
    public bool AtribuidoValor { get; set; } = false;
    public int TamanhoManual { get; set; } = 0;
    public bool UsaTamanhoManual { get; set; } = false;
    public bool EstruturaEstaticaApenasPonteiro { get; set; } = false;
    public string NomeGlobal => $"_{Modulo.Nome}_{Nome}";
    public bool EhNumerica() => Tipo == TipoVariavel.Int16 | Tipo == TipoVariavel.UInt16 | Tipo == TipoVariavel.Int8 | Tipo == TipoVariavel.UInt8;
    public bool EhPonteiro() => Tipo == TipoVariavel.PtrByteArray | Tipo == TipoVariavel.PtrWordArray | Tipo == TipoVariavel.Func | Tipo == TipoVariavel.Action | Tipo == TipoVariavel.Structure;
    public bool Argumento { get; set; } = false;
    public NivelPublicidade Publicidade { get; set; }
    public string Nome { get; set; }
    public TipoVariavel Tipo { get; set; }
    public string TipoNome { get; set; }
    public int ColecaoTamanho { get; set; }
    public bool Colecao { get; set; }
    public bool VariavelDoModulo { get; set; }
    public int Posicao { get; set; }
    public List<DeclaraVariavel>  ArgumentosFuncAction { get; set; } = new List<DeclaraVariavel>();
    public TipoVariavel RetornoFunc { get; set; } = TipoVariavel.Desconhecido;
    public string RetornoFuncNome { get; set; } = "";

    public Estrutura Modulo { get; set; }
    public DeclaraVariavel(Trecho trecho, Estrutura modulo, bool varDoModulo, NivelPublicidade publicidade, TipoVariavel tipo, string tipoNome, bool colecao, int colecaoTam, int posicao = 0) : base(trecho)
    {
        TipoNome = tipoNome;
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
        if(UsaTamanhoManual) return;
        //string rotulo;
        switch(Publicidade)
        {
            case NivelPublicidade.Local:
                if(Tipo == TipoVariavel.Structure)
                {
                    if(amb.PesquisaEstrutura(TipoNome) == null) throw Erro("Estrutura não encontrada");
                }
                break;
            case NivelPublicidade.Publico:
            case NivelPublicidade.Privado:
                //rotulo = amb.Saida.GeraRotulo();
                //amb.Saida.EmitePulaPara(rotulo);
                amb.Saida.EmiteRotulo(NomeGlobal);
                if(Tipo != TipoVariavel.Structure && EstruturaEstaticaApenasPonteiro)
                {
                    throw Erro("Marcador Pointer só é válido para estruturas");
                }
                if(Tipo == TipoVariavel.Structure && !EstruturaEstaticaApenasPonteiro)
                {
                    Estrutura? estru = amb.PesquisaEstrutura(TipoNome);
                    if(estru == null) throw Erro("Estrutura não encontrada");
                    if(TipoNome == "string")
                    {
                        amb.Saida.EmiteGerarEspaco(amb.Saida.CalculaTamanho(Tipo));
                        amb.Saida.EmiteBinario(new byte[]{amb.TamanhoStringEstatica});
                        amb.Saida.EmiteGerarEspaco(amb.TamanhoStringEstatica);
                        amb.Realocacoes.Add(new Realocacao(TipoDeRealocacao.CodeSegmentStructure, 0, NomeGlobal, (ushort)amb.Saida.CalculaTamanho(Tipo)));
                    }
                    else
                    {
                        amb.Saida.EmiteGerarEspaco(amb.Saida.CalculaTamanho(Tipo) + estru.TamanhoCampos);
                        amb.Realocacoes.Add(new Realocacao(TipoDeRealocacao.CodeSegmentStructure, 0, NomeGlobal, (ushort)amb.Saida.CalculaTamanho(Tipo)));
                    }
                }
                else amb.Saida.EmiteGerarEspaco(amb.Saida.CalculaTamanho(Tipo));
                //amb.Saida.EmiteRotulo(rotulo);
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