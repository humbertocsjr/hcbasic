class Nulo : No
{
    public Nulo(Trecho trecho) : base(trecho)
    {
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        amb.Saida.EmiteGravaNumeroEmAcumulador(0);
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
        return $"Nulo";
    }
}