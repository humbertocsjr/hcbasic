class Retorna : No
{
    public No? Valor { get; set; }
    public Retorna(Trecho trecho, No? valor) : base(trecho)
    {
        Valor = valor;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        if(amb.Rotina == null) throw Erro("Rotina não declarada");
        if(Valor != null) Valor.Compila(amb);
        amb.Saida.EmitePulaPara(amb.Rotina.RotuloFim);
    }

    protected override void InicializaInterno(Ambiente amb)
    {
        if(Valor != null) Valor.Inicializa(amb);
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        if(Valor != null) Valor = Valor.Otimiza(amb);
        return this;
    }

    public override string ToString()
    {
        return $"Retorna {Valor}";
    }
}