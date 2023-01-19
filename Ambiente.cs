class Ambiente
{
    public List<DirectoryInfo> DiretoriosImportacao ;
    public List<Modulo> Modulos { get; set; }
    public Modulo? Modulo { get; set; } = null;
    public Rotina? Rotina { get; set; } = null;
    public Trecho Trecho { get; set; }
    public TipoVariavel? Tipo { get; set; } = null;
    public No No { get; set; }
    public Saida Saida { get; set; }

    public bool TipoSemSinal => Tipo == TipoVariavel.UInt8 | Tipo == TipoVariavel.UInt16 | Tipo == TipoVariavel.PtrByteArray | Tipo == TipoVariavel.PtrWordArray;
    public bool TipoComSinal => Tipo == TipoVariavel.Int8 | Tipo == TipoVariavel.Int16;

    public void CadastraReferencia(Modulo mod)
    {
        if(Modulo != null) Modulo.CadastraReferencia(mod);
    }

    public Ambiente(Saida saida, List<DirectoryInfo> importacao, List<Modulo> modulos, Trecho trecho, No no)
    {
        DiretoriosImportacao = importacao;
        Modulos = modulos;
        Trecho = trecho;
        No = no;
        Saida = saida;
    }

}