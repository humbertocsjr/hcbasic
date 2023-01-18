class Atribuicao : No
{
    public List<string> VariavelDestino { get; set; }
    public No Valor { get; set; }

    public Atribuicao(Trecho trecho, List<string> variavel) : base(trecho)
    {
        VariavelDestino = variavel;
        Valor = new Nulo(trecho);
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        DeclaraVariavel variavel;
        bool local = false;
        if(VariavelDestino.Count == 1)
        {
            if(amb.Rotina == null) throw Erro("Rotina não definido");
            var consLocal = amb.Rotina.Variaveis.Where(v =>v.Nome.ToLower() == VariavelDestino[0].ToLower());
            if(consLocal.Any())
            {
                local = true;
                variavel = consLocal.First();
            }
            else
            {
                if(amb.Modulo == null) throw Erro("Módulo não definido");
                var consMod = amb.Modulo.Variaveis.Where(v => v.Nome.ToLower() == VariavelDestino[0].ToLower());
                if(!consMod.Any()) throw Erro("Variável não encontrada");
                variavel = consMod.First();
            }
        }
        else
        {
            var consMod = amb.Modulos.Where(v => v.Nome.ToLower() == VariavelDestino[0].ToLower());
            if(!consMod.Any()) throw Erro("Módulo não encontrada");
            var consModVar = consMod.First().Variaveis.Where(v => v.Nome.ToLower() == VariavelDestino[0].ToLower());
            if(!consModVar.Any()) throw Erro("Variável não encontrada");
            variavel = consModVar.First();
        }
        if(local)
        {
            if(variavel.EhNumerica() & Valor is Numero)
            {
                amb.Saida.EmiteGravaNumeroNaVariavelLocal(variavel.Posicao, ((Numero)Valor).Valor);
            }
            else
            {
                amb.Tipo = variavel.Tipo;
                Valor.Compila(amb);
                if(variavel.EhNumerica())
                {
                    amb.Saida.EmiteCopiaAcumuladorParaVariavelLocal(variavel.Posicao);
                }
                amb.Tipo = null;
            }
        }
    }

    protected override void InicializaInterno(Ambiente amb)
    {
        Valor.Inicializa(amb);
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        Valor = Valor.Otimiza(amb);
        return this;
    }
}