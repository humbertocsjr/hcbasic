class Numero : No
{
    public decimal Valor { get; set; }
    public Numero(Trecho trecho, decimal valor) : base(trecho)
    {
        Valor = valor;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        switch(amb.Tipo)
        {
            case TipoVariavel.Int8:
            case TipoVariavel.UInt8:
            case TipoVariavel.Int16:
            case TipoVariavel.UInt16:
            case TipoVariavel.PtrByteArray:
            case TipoVariavel.PtrWordArray:
                amb.Saida.EmiteGravaNumeroEmAcumulador(Valor);
                break;
            default:
                throw Erro("Tipo não suportado");
        }
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