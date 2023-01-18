class Rotina : No
{
    public Modulo Modulo { get; set; }
    public bool IgnorarCabecalhoRodape { get; set; } = false;
    public NivelPublicidade Publicidade { get; set; }
    public string Nome { get; set; }
    public bool RetornaValor { get; set; }
    public TipoVariavel TipoRetorno { get; set; }
    public List<No> Comandos { get; set; } = new List<No>();

    public List<DeclaraVariavel> Argumentos { get; set; } = new List<DeclaraVariavel>();

    public List<DeclaraVariavel> Variaveis { get; set; } = new List<DeclaraVariavel>();
    public string RotuloFim { get; set; } = "";
    public int PosicaoArg { get; set; } = 6;
    public int PosicaoVar { get; set; } = 0;
    public Rotina(Trecho trecho, Modulo modulo, NivelPublicidade publi, bool retornaValor, TipoVariavel tipoRetorno) : base(trecho)
    {
        Modulo = modulo;
        Publicidade = publi;
        Nome = trecho.Conteudo;
        RetornaValor = retornaValor;
        TipoRetorno = tipoRetorno;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        amb.Rotina = this;
        if(!IgnorarCabecalhoRodape)
        {
            amb.Saida.EmiteRotina(Nome);
        }
        if(Argumentos.Any() | Variaveis.Any())
        {
            amb.Saida.EmiteEntraNaRotina();
            if(PosicaoVar != 0)
                amb.Saida.EmiteSubtraiDoPtrPilha(PosicaoVar);
        }
        RotuloFim = amb.Saida.GeraRotulo();
        CompilaLista(new List<No>(Argumentos), amb);
        CompilaLista(new List<No>(Variaveis), amb);
        CompilaLista(Comandos, amb);
        amb.Saida.EmiteRotulo(RotuloFim);
        if(Argumentos.Any() | Variaveis.Any())
        {
            amb.Saida.EmiteSaiDaRotina();
        }
        if(!IgnorarCabecalhoRodape)
        {
            amb.Saida.EmiteRotinaFim(Nome);
        }
        amb.Rotina = null;
    }

    protected override void InicializaInterno(Ambiente amb)
    {
        amb.Rotina = this;
        InicializaLista(new List<No>(Argumentos), amb);
        InicializaLista(new List<No>(Variaveis), amb);
        InicializaLista(Comandos, amb);
        amb.Rotina = null;
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        amb.Rotina = this;
        List<No> tmp = OtimizaLista(Comandos, amb);
        Comandos.Clear();
        Comandos.AddRange(tmp);
        return this;
    }

    public override string ToString()
    {
        return $"Rotina: {Nome}";
    }
}