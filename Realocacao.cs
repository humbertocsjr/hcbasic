class Realocacao
{
    public TipoDeRealocacao Tipo { get; set; } = TipoDeRealocacao.FimLista;
    public ushort ValorSoma { get; set; } = 0;
    public string Rotulo {get;set;} = "0";
    public ushort Desvio { get; set; } = 0;

    public Realocacao(TipoDeRealocacao tipo, ushort valorSoma, string rotulo, ushort desvio)
    {
        Tipo = tipo;
        ValorSoma = valorSoma;
        Rotulo = rotulo;
        Desvio = desvio;
    }
}

enum TipoDeRealocacao
{
    FimLista = 0,
    CodeSegment = 1,
    StackSegment = 2,
    CodeSegmentStructure = 3
}