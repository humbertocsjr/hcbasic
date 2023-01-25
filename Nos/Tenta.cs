class Tenta : No
{
    public List<No> TentaComandos { get; set; } = new List<No>();
    public Dictionary<string, List<No>> PegaErros { get; set; } = new Dictionary<string, List<No>>();
    public Tenta(Trecho trecho) : base(trecho)
    {
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        if(amb.DentroDeUmTryCatch) throw Erro("Não há suporte para um Try Catch dentro de outro");
        amb.DentroDeUmTryCatch = true;
        amb.Saida.EmiteCopiaVariavelGlobalParaAcumulador("_os_trycode");
        amb.Saida.EmiteCopiaAcumuladorParaVariavelLocal(-2);
        amb.Saida.EmiteCopiaVariavelGlobalParaAcumulador("_os_trystack");
        amb.Saida.EmiteCopiaAcumuladorParaVariavelLocal(-4);
        amb.Saida.EmiteCopiaVariavelGlobalParaAcumulador("_os_trybase");
        amb.Saida.EmiteCopiaAcumuladorParaVariavelLocal(-6);

        string pegaErro = amb.Saida.GeraRotulo();
        string fim = amb.Saida.GeraRotulo();
        amb.Saida.EmiteCopiaPonteiroBaseParaAcumulador();
        amb.Saida.EmiteCopiaAcumuladorParaVariavelGlobal("_os_trybase");
        amb.Saida.EmiteCopiaPonteiroPilhaParaAcumulador();
        amb.Saida.EmiteCopiaAcumuladorParaVariavelGlobal("_os_trystack");
        amb.Saida.EmiteGravaRotuloEmAcumulador(pegaErro);
        amb.Saida.EmiteCopiaAcumuladorParaVariavelGlobal("_os_trycode");

        CompilaLista(TentaComandos, amb);
        amb.Saida.EmitePulaPara(fim);
        amb.Saida.EmiteRotulo(pegaErro);
        amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
        amb.Saida.EmiteCopiaVariavelLocalParaAcumulador(-10);
        amb.Saida.EmiteCopiaByteArrayDaVariavelLocalParaPonteiroRemoto(-8);
        amb.Saida.EmiteCopiaVariavelGlobalParaPonteiroBase("_os_trybase");
        amb.Saida.EmiteCopiaVariavelGlobalParaPonteiroPilha("_os_trystack");
        amb.Saida.EmiteCopiaPonteiroRemotoParaVariavelLocal(-8);
        amb.Saida.EmiteCopiaAcumuladorParaVariavelLocal(-10);
        amb.Saida.EmiteCopiaAuxiliarParaAcumulador();
        if(!PegaErros.Any()) throw Erro("Esperado ao menos um 'Catch' dentro de um Try");
        foreach (var erro in PegaErros)
        {
            var consErro = amb.Erros.Where(e => e.Nome.ToLower() == erro.Key.ToLower());
            if(!consErro.Any()) throw Erro("Tipo de Erro desconhecido");
            var numErro = consErro.First().Codigo;
            var rotuloErro = amb.Saida.GeraRotulo();
            var rotuloProxErro = amb.Saida.GeraRotulo();
            if(numErro != 0)
            {
                amb.Saida.EmiteGravaNumeroEmAuxiliar(numErro);
                amb.Saida.EmiteComparaAcumuladorComAuxiliar();
                amb.Saida.EmitePulaSeIgual(rotuloErro);
                amb.Saida.EmitePulaPara(rotuloProxErro);
                amb.Saida.EmiteRotulo(rotuloErro);
            }
            CompilaLista(erro.Value, amb);
            amb.Saida.EmitePulaPara(fim);
            amb.Saida.EmiteRotulo(rotuloProxErro);
        }
        amb.Saida.EmitePulaParaLocalEmVariavelGlobal("_os_tryfatal");
        amb.Saida.EmiteRotulo(fim);

        amb.Saida.EmiteCopiaVariavelLocalParaAcumulador(-6);
        amb.Saida.EmiteCopiaAcumuladorParaVariavelGlobal("_os_trybase");
        amb.Saida.EmiteCopiaVariavelLocalParaAcumulador(-4);
        amb.Saida.EmiteCopiaAcumuladorParaVariavelGlobal("_os_trystack");
        amb.Saida.EmiteCopiaVariavelLocalParaAcumulador(-2);
        amb.Saida.EmiteCopiaAcumuladorParaVariavelGlobal("_os_trycode");
        amb.DentroDeUmTryCatch = false;
    }

    protected override void InicializaInterno(Ambiente amb)
    {
        if(amb.Rotina!= null) amb.Rotina.TemTryCatch = true;
        InicializaLista(TentaComandos, amb);
        foreach (var erro in PegaErros)
        {
            InicializaLista(erro.Value, amb);
        }
    }

    protected override No OtimizaInterno(Ambiente amb)
    {

        TentaComandos = OtimizaLista(TentaComandos, amb);
        foreach (var erro in PegaErros.ToList())
        {
            PegaErros[erro.Key] = OtimizaLista(erro.Value, amb);
        }
        return this;
    }
}