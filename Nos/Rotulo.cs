class Rotulo : No
{
    public string Nome { get; set; }
    public Rotulo(Trecho trecho) : base(trecho)
    {
        Nome = trecho.Conteudo;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        amb.Saida.MarcaInicioDeRepeticao();
        amb.Saida.EmiteRotulo(Nome);
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
        return $"Rotulo: {Nome}";
    }
}