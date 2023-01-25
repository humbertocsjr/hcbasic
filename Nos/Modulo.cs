class Modulo : Estrutura
{
    public List<Rotina> Rotinas { get; set; } = new List<Rotina>();
    public List<Modulo> Referencias { get; set; } = new List<Modulo>();
    public Modulo(Trecho trecho) : base(trecho)
    {
        Nome = trecho.Conteudo;
    }

    public Rotina? PesquisaRotina(string nome)
    {
        var consRot = Rotinas.Where(v => v.Nome.ToLower() == nome.ToLower());
        if(consRot.Any()) return consRot.First();
        return null;
    }
    


    public void CadastraReferencia(Modulo mod)
    {
        if(mod != this)
        {
            if(!Referencias.Contains(mod))
            {
                Referencias.Add(mod);
            }
        }
    }
    protected override void CompilaInterno(Ambiente amb)
    {
        amb.Modulo = this;
        amb.Saida.EmiteModulo(Nome, Trecho.Fonte.NomeCompleto);
        foreach (var campo in Campos)
        {
            campo.Compila(amb);
        }
        foreach (var rot in Rotinas)
        {
            rot.Compila(amb);
        }
        amb.Saida.EmiteModuloFim(Nome);
        amb.Modulo = null;
    }

    protected override void InicializaInterno(Ambiente amb)
    {
        amb.Modulo = this;
        foreach(var rot in Rotinas)
        {
            rot.Inicializa(amb);
        }
        amb.Modulo = null;
        Estrutura? cons = amb.PesquisaModulo(Nome);
        if(cons != null && cons != this) throw Erro($"Módulo {Nome} já existe.");
        cons = amb.PesquisaEstrutura(Nome);
        //if(cons != null) throw Erro($"Já existe uma estrutura com o nome {Nome}.");
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        amb.Modulo = this;
        List<Rotina> rots = new List<Rotina>();
        foreach(var rot in Rotinas)
        {
            rots.Add((Rotina)rot.Otimiza(amb));
        }
        Rotinas.Clear();
        Rotinas.AddRange(rots);
        amb.Modulo = null;
        return this;
    }

    public override string ToString()
    {
        return $"Modulo: {Nome} ({Rotinas.Count} Rotinas)";
    }
}