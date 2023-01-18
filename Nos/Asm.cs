class Asm : No
{
    public string Codigo { get; set; }
    public Asm(Trecho trecho) : base(trecho)
    {
        Codigo = trecho.Conteudo;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        amb.Saida.EmiteL(Codigo);
    }

    protected override void InicializaInterno(Ambiente amb)
    {
        
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        return this;
    }
}