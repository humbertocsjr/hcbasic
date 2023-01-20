class Para : No
{
    public DeclaraVariavel Variavel {get;set;}
    public No ValorInicial { get; set; }
    public No ValorFinal {get;set;}
    public List<No> Repete { get; set; } = new List<No>();
    public Para(Trecho trecho, DeclaraVariavel variavel, No valorInicial, No valorFinal) : base(trecho)
    {
        Variavel = variavel;
        ValorInicial = valorInicial;
        ValorFinal = valorFinal;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        string repete = amb.Saida.GeraRotulo();
        string inicio = amb.Saida.GeraRotulo();
        string fim = amb.Saida.GeraRotulo();
        Acao atrib = new Acao(Trecho, new List<string>(new string[]{Variavel.Nome}), Acao.TipoDeAcao.Gravacao);
        atrib.ValorGravacao = ValorInicial;
        atrib.Inicializa(amb);
        atrib = (Acao)atrib.Otimiza(amb);
        atrib.Compila(amb);
        amb.Saida.EmiteRotulo(repete);
        amb.Tipo = TipoVariavel.UInt16;
        OpLogica op =new OpLogica(Trecho, new Acao(Trecho, new List<string>(new string[]{Variavel.Nome}), Acao.TipoDeAcao.Leitura), ValorFinal);
        op.Operacao = "<=";
        op.Inicializa(amb);
        op = (OpLogica)op.Otimiza(amb);
        amb.Tipo = TipoVariavel.UInt16;
        op.Compila(amb);
        amb.Tipo = null;
        amb.Saida.EmiteComparaAcumuladorComZero();
        amb.Saida.EmitePulaSeDiferente(inicio);
        amb.Saida.EmitePulaPara(fim);
        amb.Saida.EmiteRotulo(inicio);
        CompilaLista(Repete, amb);
        atrib = new Acao(Trecho, new List<string>(new string[]{Variavel.Nome}), Acao.TipoDeAcao.Incremento);
        atrib.Inicializa(amb);
        atrib = (Acao)atrib.Otimiza(amb);
        atrib.Compila(amb);
        amb.Saida.EmitePulaPara(repete);
        amb.Saida.EmiteRotulo(fim);
    }

    protected override void InicializaInterno(Ambiente amb)
    {

        if(amb.Rotina == null) throw Erro("Rotina não declarada");
        if(amb.Modulo == null) throw Erro("Módulo não encontrado");
        var consVar = amb.Rotina.Variaveis.Union(amb.Rotina.Argumentos).Where(i => i.Nome.ToLower() == Variavel.Nome.ToLower());
        if(!consVar.Any())
        {
            throw Erro("Variável não declarada anteriormente");
        }
        ValorInicial.Inicializa(amb);
        ValorFinal.Inicializa(amb);
        InicializaLista(Repete, amb);
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        ValorInicial.Inicializa(amb);
        ValorFinal.Inicializa(amb);
        Repete = OtimizaLista(Repete, amb);
        return this;
    }

    public override string ToString()
    {
        return $"Para {Variavel.Nome} = {ValorInicial} até {ValorFinal}";
    }
}