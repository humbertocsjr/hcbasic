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
        bool ignora_comparacao = false;
        switch(Operacao)
        {
            case "not":
                dir.Compila(amb);
                amb.Saida.EmiteInverteAcumulador();
                break;
            case "andalso":
                esq.Compila(amb);
                amb.Saida.EmiteComparaAcumuladorComZero();
                amb.Saida.EmitePulaSeIgual(pulo_nao);
                dir.Compila(amb);
                amb.Saida.EmiteComparaAcumuladorComZero();
                amb.Saida.EmitePulaSeIgual(pulo_nao);
                break;
            case "orelse":
                esq.Compila(amb);
                amb.Saida.EmiteComparaAcumuladorComZero();
                amb.Saida.EmitePulaSeDiferente(pulo_sim);
                dir.Compila(amb);
                amb.Saida.EmiteComparaAcumuladorComZero();
                amb.Saida.EmitePulaSeIgual(pulo_nao);
                break;
            case "and":
                esq.Compila(amb);
                amb.Saida.EmiteEmpilhaAcumulador();
                dir.Compila(amb);
                amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                amb.Saida.EmiteDesempilhaAcumulador();
                amb.Saida.EmiteAplicaAndEntreAcumuladorEAuxiliar();
                ignora_comparacao = true;
                break;
            case "or":
                esq.Compila(amb);
                amb.Saida.EmiteEmpilhaAcumulador();
                dir.Compila(amb);
                amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                amb.Saida.EmiteDesempilhaAcumulador();
                amb.Saida.EmiteAplicaOrEntreAcumuladorEAuxiliar();
                ignora_comparacao = true;
                break;
            case "xor":
                esq.Compila(amb);
                amb.Saida.EmiteEmpilhaAcumulador();
                dir.Compila(amb);
                amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                amb.Saida.EmiteDesempilhaAcumulador();
                amb.Saida.EmiteAplicaXorEntreAcumuladorEAuxiliar();
                ignora_comparacao = true;
                break;
            case ">":
                esq.Compila(amb);
                if(esq is Acao & amb.TipoSemSinal)
                {
                    if(((Acao)esq).TipoCompilado == TipoVariavel.Int8 | ((Acao)esq).TipoCompilado == TipoVariavel.Int16)
                    {
                        if(amb.Tipo == TipoVariavel.UInt8) amb.Tipo = TipoVariavel.Int8;
                        if(amb.Tipo == TipoVariavel.UInt16) amb.Tipo = TipoVariavel.Int16;
                    }
                }
                amb.Saida.EmiteEmpilhaAcumulador();
                dir.Compila(amb);
                amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                amb.Saida.EmiteDesempilhaAcumulador();
                amb.Saida.EmiteComparaAcumuladorComAuxiliar();
                amb.Saida.EmitePulaSeMaiorQue(pulo_sim, amb.TipoSemSinal);
                amb.Saida.EmitePulaPara(pulo_nao);
                break;
            case ">=":
                esq.Compila(amb);
                if(esq is Acao & amb.TipoSemSinal)
                {
                    if(((Acao)esq).TipoCompilado == TipoVariavel.Int8 | ((Acao)esq).TipoCompilado == TipoVariavel.Int16)
                    {
                        if(amb.Tipo == TipoVariavel.UInt8) amb.Tipo = TipoVariavel.Int8;
                        if(amb.Tipo == TipoVariavel.UInt16) amb.Tipo = TipoVariavel.Int16;
                    }
                }
                amb.Saida.EmiteEmpilhaAcumulador();
                dir.Compila(amb);
                amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                amb.Saida.EmiteDesempilhaAcumulador();
                amb.Saida.EmiteComparaAcumuladorComAuxiliar();
                amb.Saida.EmitePulaSeMaiorOuIgual(pulo_sim, amb.TipoSemSinal);
                amb.Saida.EmitePulaPara(pulo_nao);
                break;
            case "<":
                esq.Compila(amb);
                if(esq is Acao & amb.TipoSemSinal)
                {
                    if(((Acao)esq).TipoCompilado == TipoVariavel.Int8 | ((Acao)esq).TipoCompilado == TipoVariavel.Int16)
                    {
                        if(amb.Tipo == TipoVariavel.UInt8) amb.Tipo = TipoVariavel.Int8;
                        if(amb.Tipo == TipoVariavel.UInt16) amb.Tipo = TipoVariavel.Int16;
                    }
                }
                amb.Saida.EmiteEmpilhaAcumulador();
                dir.Compila(amb);
                amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                amb.Saida.EmiteDesempilhaAcumulador();
                amb.Saida.EmiteComparaAcumuladorComAuxiliar();
                amb.Saida.EmitePulaSeMenorQue(pulo_sim, amb.TipoSemSinal);
                amb.Saida.EmitePulaPara(pulo_nao);
                break;
            case "<=":
                esq.Compila(amb);
                if(esq is Acao & amb.TipoSemSinal)
                {
                    if(((Acao)esq).TipoCompilado == TipoVariavel.Int8 | ((Acao)esq).TipoCompilado == TipoVariavel.Int16)
                    {
                        if(amb.Tipo == TipoVariavel.UInt8) amb.Tipo = TipoVariavel.Int8;
                        if(amb.Tipo == TipoVariavel.UInt16) amb.Tipo = TipoVariavel.Int16;
                    }
                }
                amb.Saida.EmiteEmpilhaAcumulador();
                dir.Compila(amb);
                amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                amb.Saida.EmiteDesempilhaAcumulador();
                amb.Saida.EmiteComparaAcumuladorComAuxiliar();
                amb.Saida.EmitePulaSeMenorOuIgual(pulo_sim, amb.TipoSemSinal);
                amb.Saida.EmitePulaPara(pulo_nao);
                break;
            case "==":
                esq.Compila(amb);
                amb.Saida.EmiteEmpilhaAcumulador();
                dir.Compila(amb);
                amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                amb.Saida.EmiteDesempilhaAcumulador();
                amb.Saida.EmiteComparaAcumuladorComAuxiliar();
                amb.Saida.EmitePulaSeIgual(pulo_sim);
                amb.Saida.EmitePulaPara(pulo_nao);
                break;
            case "<>":
                esq.Compila(amb);
                amb.Saida.EmiteEmpilhaAcumulador();
                dir.Compila(amb);
                amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                amb.Saida.EmiteDesempilhaAcumulador();
                amb.Saida.EmiteComparaAcumuladorComAuxiliar();
                amb.Saida.EmitePulaSeDiferente(pulo_sim);
                amb.Saida.EmitePulaPara(pulo_nao);
                break;
            default: throw Erro("Operação lógica não suportada");
        }
        if(!ignora_comparacao)
        {
            amb.Saida.EmiteRotulo(pulo_sim);
            amb.Saida.EmiteGravaNumeroEmAcumulador(0xffff);
            amb.Saida.EmitePulaPara(pulo_fim);
            amb.Saida.EmiteRotulo(pulo_nao);
            amb.Saida.EmiteGravaNumeroEmAcumulador(0);
            amb.Saida.EmiteRotulo(pulo_fim);
        }
    }

    protected override void InicializaInterno(Ambiente amb)
    {
        if(Esquerda != null)Esquerda.Inicializa(amb);
        if(Direita != null)Direita.Inicializa(amb);
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