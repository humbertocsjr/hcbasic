class VaPara : No
{
    public string Rotulo { get; set; }
    public VaPara(Trecho trecho) : base(trecho)
    {
        Rotulo = trecho.Conteudo;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        amb.Saida.EmitePulaPara(Rotulo);
    }

    protected override void InicializaInterno(Ambiente amb)
    {
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        return this;
    }

    public override string ToString()
    {
        return $"VaPara {Rotulo}";
    }
}