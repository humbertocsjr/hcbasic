class OpLogica : No
{
    public string Operacao { get; set; }
    public No? Esquerda { get; set; }
    public No? Direita { get; set; }
    public OpLogica(Trecho trecho, No? esquerda, No? direita) : base(trecho)
    {
        Operacao = trecho.Conteudo;
        Esquerda = esquerda;
        Direita = direita;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        No esq = Esquerda ?? new Nulo(Trecho);
        No dir = Direita ?? new Nulo(Trecho);
        string pulo_sim = amb.Saida.GeraRotulo();
        string pulo_nao = amb.Saida.GeraRotulo();
        string pulo_fim = amb.Saida.GeraRotulo();
        switch(Operacao)
        {
            case "and":
                esq.Compila(amb);
                amb.Saida.EmiteComparaAcumuladorComZero();
                amb.Saida.EmitePulaSeIgual(pulo_nao);
                dir.Compila(amb);
                amb.Saida.EmiteComparaAcumuladorComZero();
                amb.Saida.EmitePulaSeIgual(pulo_nao);
                break;
            case "or":
                esq.Compila(amb);
                amb.Saida.EmiteComparaAcumuladorComZero();
                amb.Saida.EmitePulaSeDiferente(pulo_sim);
                dir.Compila(amb);
                amb.Saida.EmiteComparaAcumuladorComZero();
                amb.Saida.EmitePulaSeIgual(pulo_nao);
                break;
        }
        amb.Saida.EmiteRotulo(pulo_sim);
        amb.Saida.EmiteGravaNumeroEmAcumulador(0xffff);
        amb.Saida.EmitePulaPara(pulo_fim);
        amb.Saida.EmiteRotulo(pulo_nao);
        amb.Saida.EmiteGravaNumeroEmAcumulador(0);
        amb.Saida.EmiteRotulo(pulo_fim);
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
        return $"({Direita}) {Operacao} ({Esquerda})";
    }
}