class ChamaRotina : No
{
    public string Modulo { get; set; }
    public string Rotina { get; set; }
    public List<No> Argumentos { get; set; } = new List<No>();

    public Rotina? RotinaLocalizada { get; set; } = null;

    public ChamaRotina(Trecho trecho, string modulo, string rotina) : base(trecho)
    {
        Modulo = modulo;
        Rotina = rotina;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        if(RotinaLocalizada == null) throw Erro("Rotina não declarada");
        List<No> args = new List<No>();
        args.AddRange(Argumentos);
        args.Reverse();
        List<DeclaraVariavel> pars = new List<DeclaraVariavel>();
        pars.AddRange(RotinaLocalizada.Argumentos);
        pars.Reverse();
        for (int i = 0; i < args.Count; i++)
        {
            amb.Tipo = pars[i].Tipo;
            args[i].Compila(amb);
            switch (amb.Tipo)
            {
                case TipoVariavel.Int8:
                case TipoVariavel.UInt8:
                    amb.Saida.EmiteConverteAcumuladorEmByte();
                    amb.Saida.EmiteEmpilhaAcumulador();
                    break;
                case TipoVariavel.Int16:
                case TipoVariavel.UInt16:
                    amb.Saida.EmiteEmpilhaAcumulador();
                    break;
                case TipoVariavel.PtrByteArray:
                case TipoVariavel.PtrWordArray:
                    amb.Saida.EmiteEmpilhaPonteiroRemoto();
                    break;
                default: throw Erro("Tipo não suportado");
            }
            amb.Tipo = null;
        }
        amb.Saida.EmiteChamaRotina(RotinaLocalizada.Modulo.Nome, RotinaLocalizada.Nome);
        if(RotinaLocalizada.PosicaoArg != 6)
            amb.Saida.EmiteAdicionaNoPtrPilha(RotinaLocalizada.PosicaoArg - 6);
    }

    protected override void InicializaInterno(Ambiente amb)
    {
        InicializaLista(Argumentos, amb);
        Modulo? mod = amb.Modulos.Where(m => m.Nome.ToLower() == Modulo.ToLower()).FirstOrDefault();
        if(mod == null) throw Erro($"Módulo '{Modulo}' não encontrado");
        Rotina? rot = mod.Rotinas.Where(r => r.Nome.ToLower() == Rotina.ToLower()).FirstOrDefault();
        if(rot == null) throw Erro($"Rotina '{Modulo}.{Rotina}' não encontrada");
        if(rot.Argumentos.Count() != Argumentos.Count()) throw Erro($"Quantidade de argumentos não é igual ao exigido pela função");
        amb.CadastraReferencia(mod);
        RotinaLocalizada = rot;
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        List<No> args = OtimizaLista(Argumentos, amb);
        Argumentos.Clear();
        Argumentos.AddRange(args);
        return this;
    }
}