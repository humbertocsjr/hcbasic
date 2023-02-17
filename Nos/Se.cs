class Se : No
{
    public No Comparacao { get; set; }
    public List<No> SeSim { get; set; } = new List<No>();
    public List<No> SeNao { get; set; } = new List<No>();
    public Se(Trecho trecho, No comparacao) : base(trecho)
    {
        Comparacao = comparacao;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        string sim = amb.Saida.GeraRotulo();
        string nao = amb.Saida.GeraRotulo();
        amb.Tipo = TipoVariavel.UInt16;
        amb.Saida.EmiteMarcaInvalidaOtimizacoes();
        Comparacao.Compila(amb);
        amb.Tipo = null;
        amb.Saida.EmiteComparaAcumuladorComZero();
        amb.Saida.EmitePulaSeDiferente(sim);
        amb.Saida.EmitePulaPara(nao);
        amb.Saida.EmiteRotulo(sim);
        amb.Saida.EmiteMarcaInvalidaOtimizacoes();
        CompilaLista(SeSim, amb);
        if(SeNao.Count > 0)
        {
            amb.Saida.EmiteMarcaInvalidaOtimizacoes();
            string fim = amb.Saida.GeraRotulo();
            amb.Saida.EmitePulaPara(fim);
            amb.Saida.EmiteRotulo(nao);
            CompilaLista(SeNao, amb);
            amb.Saida.EmiteRotulo(fim);
            amb.Saida.MarcaFimDeRepeticao();
        }
        else amb.Saida.EmiteRotulo(nao);
        amb.Saida.EmiteMarcaInvalidaOtimizacoes();

    }

    protected override void InicializaInterno(Ambiente amb)
    {
        Comparacao.Inicializa(amb);
        InicializaLista(SeSim, amb);
        InicializaLista(SeNao, amb);
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        Comparacao = Comparacao.Otimiza(amb);
        SeSim = OtimizaLista(SeSim, amb);
        SeNao = OtimizaLista(SeNao, amb);
        return this;
    }

    public override string ToString()
    {
        return $"Se {Comparacao}";
    }
}