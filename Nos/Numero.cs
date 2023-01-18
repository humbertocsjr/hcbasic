class Numero : No
{
    public decimal Valor { get; set; }
    public Numero(Trecho trecho, decimal valor) : base(trecho)
    {
        Valor = valor;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        amb.Saida.EmiteGravaNumeroEmAcumulador(Valor);
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
        return $"{Valor}";
    }
}