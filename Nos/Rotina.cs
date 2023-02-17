class Rotina : No
{
    public int ContadorReferencias { get; set; } = 0;
    public bool ManipuladorDeInterrupcao { get; set; } = false;
    public bool TemTryCatch { get; set; } = false;
    public Modulo Modulo { get; set; }
    public bool IgnorarCabecalhoRodape { get; set; } = false;
    public NivelPublicidade Publicidade { get; set; }
    public string Nome { get; set; }
    public bool RetornaValor { get; set; }
    public TipoVariavel TipoRetorno { get; set; }
    public List<No> Comandos { get; set; } = new List<No>();

    public List<DeclaraVariavel> Argumentos { get; set; } = new List<DeclaraVariavel>();

    public List<DeclaraVariavel> Variaveis { get; set; } = new List<DeclaraVariavel>();
    public string RotuloFim { get; set; } = "";
    public int PosicaoArg { get; set; } = 6;
    public int PosicaoVar { get; set; } = 0;

    public DeclaraVariavel? PesquisaVariavel(string nome)
    {
        var consVar = Variaveis.Union(Argumentos).Where(v => v.Nome.ToLower() == nome.ToLower());
        if(consVar.Any()) return consVar.First();
        return null;
    }
    public Rotina(Trecho trecho, Modulo modulo, NivelPublicidade publi, bool retornaValor, TipoVariavel tipoRetorno) : base(trecho)
    {
        Modulo = modulo;
        Publicidade = publi;
        Nome = trecho.Conteudo;
        RetornaValor = retornaValor;
        TipoRetorno = tipoRetorno;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        if(Modulo.Externo)
        {
            if(ContadorReferencias > 0)
            {
                amb.Saida.EmiteRotulo($"_{Modulo.Nome}_{Nome}");
                amb.Saida.EmiteGerarEspaco(amb.Saida.TamanhoPonteiro);
                amb.Saida.EmiteBinario(new byte[]{(byte)System.Text.Encoding.UTF8.GetByteCount(Nome)});
                amb.Saida.EmiteBinario(System.Text.Encoding.UTF8.GetBytes(Nome));
                amb.Saida.EmiteGerarEspaco(1);
            }
            return;
        }
        if(Publicidade == NivelPublicidade.Publico & Modulo.Publico)
        {
            amb.Saida.EmiteRotulo($"NAME_{Modulo.Nome}_{Nome}");
            amb.Saida.EmitePulaPara($"_{Modulo.Nome}_{Nome}");
            amb.Saida.EmiteBinario(new byte[]{(byte)System.Text.Encoding.UTF8.GetByteCount(Nome)});
            amb.Saida.EmiteBinario(System.Text.Encoding.UTF8.GetBytes(Nome));
            amb.Saida.EmiteGerarEspaco(1);
        }
        amb.DentroDeUmTryCatch = false;
        amb.Rotina = this;
        if(ManipuladorDeInterrupcao & RetornaValor)
            throw Erro("Manipuladores de interrupção não podem ser funções, devendo retornar valores via os registradores.");
        if(!IgnorarCabecalhoRodape)
        {
            if(ManipuladorDeInterrupcao)
                amb.Saida.EmiteInterrupcao(Nome);
            else
                amb.Saida.EmiteRotina(Nome);
        }
        else
        {
            amb.Saida.EmiteRotulo($"_{Modulo.Nome}_{Nome}");
        }
        if(Argumentos.Any() | Variaveis.Any())
        {
            amb.Saida.EmiteEntraNaRotina();
            if(PosicaoVar != 0)
            {
                amb.Saida.EmiteSubtraiDoPtrPilha(PosicaoVar);
                if(!ManipuladorDeInterrupcao)
                {
                    if(Modulo.Nome == "os" && Nome == "stackcheck")
                    {
                        amb.Saida.EmiteComentario("Chamada ao OS.StackCheck ignorada.");
                    }
                    else
                    {
                        amb.Saida.EmiteChamaRotina("os", "stackcheck");
                    }
                }
            }
            foreach (var variavel in Argumentos)
            {
                amb.Saida.EmiteComentario($"ARG: {variavel.Nome} TAM: {amb.Saida.CalculaTamanho(variavel.Tipo)} POS: BP+{variavel.Posicao} ");
            }
            foreach (var variavel in Variaveis)
            {
                amb.Saida.EmiteComentario($"ARG: {variavel.Nome} TAM: {amb.Saida.CalculaTamanho(variavel.Tipo)} POS: BP-{variavel.Posicao} ");
            }
        }
        RotuloFim = amb.Saida.GeraRotulo();
        CompilaLista(new List<No>(Argumentos), amb);
        CompilaLista(new List<No>(Variaveis), amb);
        CompilaLista(Comandos, amb);
        amb.Saida.EmiteRotulo(RotuloFim);
        if(Argumentos.Any() | Variaveis.Any())
        {
            amb.Saida.EmiteSaiDaRotina();
        }
        if(!IgnorarCabecalhoRodape)
        {
            if(ManipuladorDeInterrupcao)
                amb.Saida.EmiteInterrupcaoFim(Nome);
            else
                amb.Saida.EmiteRotinaFim(Nome);
        }
        else if(ManipuladorDeInterrupcao)
            amb.Saida.EmiteInterrupcaoFim(Nome, true);
        amb.Rotina = null;
    }

    protected override void InicializaInterno(Ambiente amb)
    {
        if(ManipuladorDeInterrupcao) PosicaoArg = 2;
        amb.Rotina = this;
        InicializaLista(Comandos, amb);
        if(TemTryCatch) PosicaoVar = 10;
        InicializaLista(new List<No>(Argumentos), amb);
        foreach (var item in Argumentos)
        {
            item.AtribuidoValor = true;
        }
        InicializaLista(new List<No>(Variaveis), amb);
        amb.Rotina = null;
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        amb.Rotina = this;
        List<No> tmp = OtimizaLista(Comandos, amb);
        Comandos.Clear();
        Comandos.AddRange(tmp);
        return this;
    }

    public override string ToString()
    {
        return $"Rotina: {Nome}";
    }
}