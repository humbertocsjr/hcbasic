class Ambiente
{
    // Aqui armazena variaveis de ambiente usadas por todas as etapas da compilação

    public List<DirectoryInfo> DiretoriosImportacao ;
    // Todos os modulos carregados
    public List<Modulo> Modulos { get; set; }
    // Modulo atual durante o processamento
    public Modulo? Modulo { get; set; } = null;
    // Rotina atual durante o processamento
    public Rotina? Rotina { get; set; } = null;
    // Trecho atual durante o processamento
    // Usado em caso de erro para saber onde está no código fonte
    public Trecho Trecho { get; set; }
    // Tipo de variavel atual, usado em expressoes matematicas para que cada comando individualmente saiba qual tipo de variavel ele esta manipulando
    public TipoVariavel? Tipo { get; set; } = null;
    // No atual
    public No No { get; set; }
    // Arquivo de saida, usado pela compilacao para emitir codigo assembly
    public Saida Saida { get; set; }

    // Verifica se os tipos atuais são com ou sem sinal

    public bool TipoSemSinal => Tipo == TipoVariavel.UInt8 | Tipo == TipoVariavel.UInt16 | Tipo == TipoVariavel.PtrByteArray | Tipo == TipoVariavel.PtrWordArray;
    public bool TipoComSinal => Tipo == TipoVariavel.Int8 | Tipo == TipoVariavel.Int16;


    // Usado pelos nós que fazem chamada ou manipulam campos de modulos, registrando quais modulos eles referenciaram, para uso da compilação mais tarde
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