class EmiteErro : No
{
    public string NomeErro { get; set; }
    public EmiteErro(Trecho trecho) : base(trecho)
    {
        NomeErro = trecho.Conteudo;
    }
    public EmiteErro(Trecho trecho, string nome) : base(trecho)
    {
        NomeErro = nome.ToLower();
    }

    public static void GeraECompila(Ambiente amb, string nomeErro)
    {
        EmiteErro emite = new EmiteErro(amb.Trecho, nomeErro);
        emite.Compila(amb);
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        var consErro = amb.Erros.Where(e => e.Nome.ToLower() == NomeErro.ToLower());
        if(!consErro.Any()) throw Erro("Tipo de Erro desconhecido");
        var numErro = consErro.First().Codigo;
        if(amb.Modulo == null) throw Erro("Modulo não definido");
        amb.Saida.EmiteGravaRotuloPtrParaPilhaDiretoUsandoVariavelGlobal("_os_minstackptr", (int)PonteiroErro.ArquivoDesvio, $"_{amb.Modulo.Nome}");
        amb.Saida.EmiteGravaNumeroEmAcumulador(Trecho.Linha);
        amb.Saida.EmiteCopiaAcumuladorParaPilhaDiretoUsandoVariavelGlobal("_os_minstackptr", (int)PonteiroErro.ArquivoLinha);
        amb.Saida.EmiteGravaNumeroEmAcumulador(numErro);
        amb.Saida.EmiteCopiaAcumuladorParaPilhaDiretoUsandoVariavelGlobal("_os_minstackptr", (int)PonteiroErro.CodigoErro);
        amb.Saida.EmitePulaParaPtrNaPilhaDiretoUsandoVariavelGlobal("_os_minstackptr", (int)PonteiroErro.TratadorDesvio);
    }

    protected override void InicializaInterno(Ambiente amb)
    {
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        return this;
    }
}