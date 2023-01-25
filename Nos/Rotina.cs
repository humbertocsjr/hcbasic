class Rotina : No
{
    public bool TemTryCatch { get; set; } = false;
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

    public DeclaraVariavel? PesquisaVariavel(string nome)
    {
        var consVar = Variaveis.Union(Argumentos).Where(v => v.Nome.ToLower() == nome.ToLower());
        if(consVar.Any()) return consVar.First();
        return null;
    }
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
        amb.DentroDeUmTryCatch = false;
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
            amb.Saida.EmiteCopiaVariavelGlobalParaAcumulador("_os_minstackptr");
            amb.Saida.EmiteCopiaPonteiroPilhaParaAuxiliar();
            amb.Saida.EmiteComparaAcumuladorComAuxiliar();
            string semErro = amb.Saida.GeraRotulo();
            amb.Saida.EmitePulaSeMenorQue(semErro, true);
            EmiteErro.GeraECompila(amb, "StackOverflowError");
            amb.Saida.EmiteRotulo(semErro);
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
        InicializaLista(Comandos, amb);
        if(TemTryCatch) PosicaoVar = 10;
        InicializaLista(new List<No>(Argumentos), amb);
        InicializaLista(new List<No>(Variaveis), amb);
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