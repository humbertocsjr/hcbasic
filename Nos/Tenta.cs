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
        amb.Saida.EmiteComentario("Armazena Dados do Try Catch");
        amb.Saida.EmiteCopiaPilhaDiretoUsandoVariavelGlobalParaAcumulador("_os_minstackptr", (int)PonteiroErro.TratadorDesvio);
        amb.Saida.EmiteCopiaAcumuladorParaVariavelLocal(-2);
        amb.Saida.EmiteCopiaPilhaDiretoUsandoVariavelGlobalParaAcumulador("_os_minstackptr", (int)PonteiroErro.TratadorSegmento);
        amb.Saida.EmiteCopiaAcumuladorParaVariavelLocal(-4);
        amb.Saida.EmiteCopiaPilhaDiretoUsandoVariavelGlobalParaAcumulador("_os_minstackptr", (int)PonteiroErro.PonteiroPilha);
        amb.Saida.EmiteCopiaAcumuladorParaVariavelLocal(-6);
        amb.Saida.EmiteCopiaPilhaDiretoUsandoVariavelGlobalParaAcumulador("_os_minstackptr", (int)PonteiroErro.PonteiroBase);
        amb.Saida.EmiteCopiaAcumuladorParaVariavelLocal(-8);

        string pegaErro = amb.Saida.GeraRotulo();
        string fim = amb.Saida.GeraRotulo();
        amb.Saida.EmiteCopiaPonteiroBaseParaAcumulador();
        amb.Saida.EmiteCopiaAcumuladorParaPilhaDiretoUsandoVariavelGlobal("_os_minstackptr", (int)PonteiroErro.PonteiroBase);
        amb.Saida.EmiteCopiaPonteiroPilhaParaAcumulador();
        amb.Saida.EmiteCopiaAcumuladorParaPilhaDiretoUsandoVariavelGlobal("_os_minstackptr", (int)PonteiroErro.PonteiroPilha);
        amb.Saida.EmiteGravaRotuloPtrParaPilhaDiretoUsandoVariavelGlobal("_os_minstackptr", (int)PonteiroErro.TratadorDesvio, pegaErro);

        CompilaLista(TentaComandos, amb);
        amb.Saida.EmitePulaPara(fim);
        amb.Saida.EmiteRotulo(pegaErro);
        amb.Saida.EmiteCopiaAcumuladorParaAuxiliar();
        amb.Saida.EmiteCopiaPilhaDiretoUsandoVariavelGlobalParaPonteiroBase("_os_minstackptr", (int)PonteiroErro.PonteiroBase);
        amb.Saida.EmiteCopiaPilhaDiretoUsandoVariavelGlobalParaPonteiroPilha("_os_minstackptr", (int)PonteiroErro.PonteiroPilha);
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
        amb.Saida.EmiteChamaRotina("os", "fatalerror");
        amb.Saida.EmiteRotulo(fim);


        amb.Saida.EmiteCopiaVariavelLocalParaAcumulador(-2);
        amb.Saida.EmiteCopiaAcumuladorParaPilhaDiretoUsandoVariavelGlobal("_os_minstackptr", (int)PonteiroErro.TratadorDesvio);
        amb.Saida.EmiteCopiaVariavelLocalParaAcumulador(-4);
        amb.Saida.EmiteCopiaAcumuladorParaPilhaDiretoUsandoVariavelGlobal("_os_minstackptr", (int)PonteiroErro.TratadorSegmento);
        amb.Saida.EmiteCopiaVariavelLocalParaAcumulador(-6);
        amb.Saida.EmiteCopiaAcumuladorParaPilhaDiretoUsandoVariavelGlobal("_os_minstackptr", (int)PonteiroErro.PonteiroPilha);
        amb.Saida.EmiteCopiaVariavelLocalParaAcumulador(-8);
        amb.Saida.EmiteCopiaAcumuladorParaPilhaDiretoUsandoVariavelGlobal("_os_minstackptr", (int)PonteiroErro.PonteiroBase);

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