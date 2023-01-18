class Ambiente
{
    public List<Modulo> Modulos { get; set; }
    public Modulo? Modulo { get; set; } = null;
    public Rotina? Rotina { get; set; } = null;
    public Trecho Trecho { get; set; }
    public TipoVariavel? Tipo { get; set; } = null;
    public No No { get; set; }
    public Saida Saida { get; set; }

    public Ambiente(Saida saida, List<Modulo> modulos, Trecho trecho, No no)
    {
        Modulos = modulos;
        Trecho = trecho;
        No = no;
        Saida = saida;
    }

}