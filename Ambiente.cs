class Ambiente
{
    // Aqui armazena variaveis de ambiente usadas por todas as etapas da compilação

    public bool DentroDeUmTryCatch { get; set; } = false;
    public byte TamanhoStringPilha { get; set; } = 128;
    public byte TamanhoStringEstatica { get; set; } = 255;

    public List<Realocacao> Realocacoes { get; set; } = new List<Realocacao>();
    public List<DirectoryInfo> DiretoriosImportacao ;
    // Todos os modulos carregados
    public List<Modulo> Modulos { get; set; }
    // Todos as Estruturas carregados
    public List<Estrutura> Estruturas { get; set; }
    // Todos os erros possíveis
    public List<RegistroDeErro> Erros { get; set; }
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
    public bool TipoPonteiro => Tipo == TipoVariavel.PtrByteArray | Tipo == TipoVariavel.PtrWordArray | Tipo == TipoVariavel.Structure | Tipo == TipoVariavel.Func | Tipo == TipoVariavel.Action;


    public DeclaraVariavel? VariavelDestino { get; set; } = null;


    // Usado pelos nós que fazem chamada ou manipulam campos de modulos, registrando quais modulos eles referenciaram, para uso da compilação mais tarde
    public void CadastraReferencia(Modulo mod)
    {
        if(Modulo != null) Modulo.CadastraReferencia(mod);
    }

    public Modulo? PesquisaModulo(string nome)
    {
        var consMod = Modulos.Where(v => v.Nome.ToLower() == nome.ToLower());
        if(consMod.Any()) return consMod.First();
        return null;
    }

    public Estrutura? PesquisaEstrutura(string nome)
    {
        var consEstr = Estruturas.Where(v => v.Nome.ToLower() == nome.ToLower());
        if(consEstr.Any()) return consEstr.First();
        return null;
    }

    public Ambiente(Saida saida, List<DirectoryInfo> importacao, List<RegistroDeErro> erros, List<Modulo> modulos, List<Estrutura> estruturas, Trecho trecho, No no)
    {
        Erros = erros;
        Estruturas = estruturas;
        DiretoriosImportacao = importacao;
        Modulos = modulos;
        Trecho = trecho;
        No = no;
        Saida = saida;
    }

}