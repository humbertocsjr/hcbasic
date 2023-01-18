class OpMatematica : No
{
    public string Operacao { get; set; }
    public No? Esquerda { get; set; }
    public No? Direita { get; set; }
    public OpMatematica(Trecho trecho, No? esquerda, No? direita) : base(trecho)
    {
        Operacao = trecho.Conteudo;
        Esquerda = esquerda;
        Direita = direita;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        No esq = Esquerda ?? new Nulo(Trecho);
        No dir = Direita ?? new Nulo(Trecho);
        if(amb.Tipo == TipoVariavel.Int16 | amb.Tipo == TipoVariavel.Int8)
        {
            switch(Operacao)
            {
                case "+":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteAdicionaAuxNoAcumulador();
                    break;
                case "-":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteSubtraiAuxNoAcumulador();
                    break;
                case "*":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteMultiplicaSinalAuxNoAcumulador();
                    break;
                case "/":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteDivideSinalAuxNoAcumulador();
                    break;
                case "mod":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteModSinalAuxNoAcumulador();
                    break;
                case "shl":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaContador();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteShlContadorNoAcumulador();
                    break;
                case "shr":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaContador();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteShrContadorNoAcumulador();
                    break;
                case "rol":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaContador();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteRolContadorNoAcumulador();
                    break;
                case "ror":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaContador();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteRorContadorNoAcumulador();
                    break;
                default: throw Erro($"Operação {Operacao} não suportada pelo tipo {amb.Tipo}");
            }
        }
        else if(amb.Tipo == TipoVariavel.UInt16 | amb.Tipo == TipoVariavel.UInt8)
        {
            switch(Operacao)
            {
                case "+":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteAdicionaAuxNoAcumulador();
                    break;
                case "-":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteSubtraiAuxNoAcumulador();
                    break;
                case "*":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteMultiplicaSemSinalAuxNoAcumulador();
                    break;
                case "/":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteDivideSemSinalAuxNoAcumulador();
                    break;
                case "mod":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteModSemSinalAuxNoAcumulador();
                    break;
                case "shl":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaContador();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteShlContadorNoAcumulador();
                    break;
                case "shr":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaContador();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteShrContadorNoAcumulador();
                    break;
                case "rol":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaContador();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteRolContadorNoAcumulador();
                    break;
                case "ror":
                    esq.Compila(amb);
                    amb.Saida.EmiteEmpilhaAcumulador();
                    dir.Compila(amb);
                    amb.Saida.EmiteCopiaAcumuladorParaContador();
                    amb.Saida.EmiteDesempilhaAcumulador();
                    amb.Saida.EmiteRorContadorNoAcumulador();
                    break;
                default: throw Erro($"Operação {Operacao} não suportada pelo tipo {amb.Tipo}");
            }
        }
        else throw Erro($"Operação {Operacao} não suportada pelo tipo {amb.Tipo}");
    }

    protected override void InicializaInterno(Ambiente amb)
    {
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        No ret = this;
        Esquerda = Esquerda == null ? null : Esquerda.Otimiza(amb);
        Direita = Direita == null ? null : Direita.Otimiza(amb);
        No esq = Esquerda ?? new Nulo(Trecho);
        No dir = Direita ?? new Nulo(Trecho);
        if(esq is Numero & dir is Numero)
        {
            switch(Operacao)
            {
                case "+":
                    ret = new Numero(Trecho, ((Numero)esq).Valor + ((Numero)dir).Valor);
                    break;
                case "-":
                    ret = new Numero(Trecho, ((Numero)esq).Valor - ((Numero)dir).Valor);
                    break;
                case "*":
                    ret = new Numero(Trecho, ((Numero)esq).Valor * ((Numero)dir).Valor);
                    break;
                case "/":
                    ret = new Numero(Trecho, ((Numero)esq).Valor / ((Numero)dir).Valor);
                    break;
                case "mod":
                    ret = new Numero(Trecho, ((Numero)esq).Valor % ((Numero)dir).Valor);
                    break;
                case "shl":
                    ret = new Numero(Trecho, (long)((Numero)esq).Valor << (int)((Numero)dir).Valor);
                    break;
                case "shr":
                    ret = new Numero(Trecho, (long)((Numero)esq).Valor >> (int)((Numero)dir).Valor);
                    break;
                // ROR e ROL nao suportados no otimizador
            }
        }
        return ret;
    }

    public override string ToString()
    {
        return $"({Direita}) {Operacao} ({Esquerda})";
    }
}