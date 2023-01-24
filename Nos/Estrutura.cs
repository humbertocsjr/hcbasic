class Estrutura : No
{
    public string Nome { get; set; }
    public int TamanhoCampos { get; set; } = 0;

    public List<DeclaraVariavel> Campos { get; set; } = new List<DeclaraVariavel>();
    public Estrutura(Trecho trecho) : base(trecho)
    {
        Nome = trecho.Conteudo;
    }


    public DeclaraVariavel? PesquisaCampo(string nome)
    {
        var consVar = Campos.Where(v => v.Nome.ToLower() == nome.ToLower());
        if(consVar.Any()) return consVar.First();
        return null;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
    }

    protected override void InicializaInterno(Ambiente amb)
    {
        InicializaLista(new List<No>(Campos), amb);
        Estrutura? cons = amb.PesquisaEstrutura(Nome);
        if(cons != null && cons != this) throw Erro($"Estrutura {Nome} já existe.");
        cons = amb.PesquisaModulo(Nome);
        //if(cons != null) throw Erro($"Já existe um módulo com o nome {Nome}.");
        int posicao = 0;
        foreach (var item in Campos)
        {
            item.Posicao = posicao;
            if(item.Tipo == TipoVariavel.Structure) throw Erro("Estrutura dentro de outra não é suportada");
            posicao += amb.Saida.CalculaTamanhoReal(item.Tipo);
        }
        TamanhoCampos = posicao;
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        List<DeclaraVariavel> campos = new List<DeclaraVariavel>();
        foreach(var item in Campos)
        {
            campos.Add((DeclaraVariavel)item.Otimiza(amb));
        }
        Campos = campos;
        return this;
    }
}