class Texto : No
{
    public string Conteudo { get; set; }
    public Texto(Trecho trecho) : base(trecho)
    {
        Conteudo = trecho.Conteudo;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        throw new NotImplementedException();
    }

    protected override void InicializaInterno(Ambiente amb)
    {
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        return this;
    }
}