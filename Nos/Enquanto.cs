class Enquanto : No
{
    public No Comparacao { get; set; }
    public List<No> Repete { get; set; } = new List<No>();
    public Enquanto(Trecho trecho, No comparacao) : base(trecho)
    {
        Comparacao = comparacao;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        string repete = amb.Saida.GeraRotulo();
        string inicio = amb.Saida.GeraRotulo();
        string fim = amb.Saida.GeraRotulo();
        amb.Saida.EmiteRotulo(repete);
        Comparacao.Compila(amb);
        amb.Saida.EmiteComparaAcumuladorComZero();
        amb.Saida.EmitePulaSeDiferente(inicio);
        amb.Saida.EmitePulaPara(fim);
        amb.Saida.EmiteRotulo(inicio);
        CompilaLista(Repete, amb);
        amb.Saida.EmiteRotulo(fim);
    }

    protected override void InicializaInterno(Ambiente amb)
    {
        Comparacao.Inicializa(amb);
        InicializaLista(Repete, amb);
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        Comparacao = Comparacao.Otimiza(amb);
        Repete = OtimizaLista(Repete, amb);
        return this;
    }

    public override string ToString()
    {
        return $"Enquanto {Comparacao}";
    }
}