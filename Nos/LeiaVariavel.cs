class LeiaVariavel : No
{
    public enum TipoLeitura
    {
        Comum,
        Desvio,
        Segmento
    }
    public TipoLeitura Tipo { get; set; }
    public string NomeModulo { get; set; }
    public string NomeVariavel { get; set; }
    public DeclaraVariavel? Variavel { get; set; } = null;
    public bool Local { get; set; } = false;
    public LeiaVariavel(Trecho trecho, TipoLeitura tipo, string nomeModulo, string nomeVariavel) : base(trecho)
    {
        Tipo = tipo;
        NomeModulo = nomeModulo;
        NomeVariavel = nomeVariavel;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        if(Variavel == null) throw Erro($"Variável {NomeVariavel} não localizada para leitura");
        if(Local)
        {
            switch(Variavel.Tipo)
            {
                case TipoVariavel.Int8:
                case TipoVariavel.UInt8:
                case TipoVariavel.Int16:
                case TipoVariavel.UInt16:
                    amb.Saida.EmiteCopiaVariavelLocalParaAcumulador(Variavel.Posicao);
                    break;
                case TipoVariavel.PtrByteArray:
                    switch(Tipo)
                    {
                        case TipoLeitura.Comum:
                            amb.Saida.EmiteCopiaByteArrayDaVariavelLocalParaAcumulador(Variavel.Posicao);
                            break;
                        case TipoLeitura.Segmento:
                            amb.Saida.EmiteCopiaSegDaVariavelLocalParaAcumulador(Variavel.Posicao);
                            break;
                        case TipoLeitura.Desvio:
                            amb.Saida.EmiteCopiaVariavelLocalParaAcumulador(Variavel.Posicao);
                            break;
                        default: throw Erro("Não suportado");
                    }
                    break;
                case TipoVariavel.PtrWordArray:
                    switch(Tipo)
                    {
                        case TipoLeitura.Comum:
                            amb.Saida.EmiteCopiaWordArrayDaVariavelLocalParaAcumulador(Variavel.Posicao);
                            break;
                        case TipoLeitura.Segmento:
                            amb.Saida.EmiteCopiaSegDaVariavelLocalParaAcumulador(Variavel.Posicao);
                            break;
                        case TipoLeitura.Desvio:
                            amb.Saida.EmiteCopiaVariavelLocalParaAcumulador(Variavel.Posicao);
                            break;
                        default: throw Erro("Não suportado");
                    }
                    break;
            }
        }
        else // GLOBAL
        {
            switch(Variavel.Tipo)
            {
                case TipoVariavel.Int8:
                case TipoVariavel.UInt8:
                case TipoVariavel.Int16:
                case TipoVariavel.UInt16:
                    amb.Saida.EmiteCopiaVariavelGlobalParaAcumulador(Variavel.NomeGlobal);
                    break;
                case TipoVariavel.PtrByteArray:
                    switch(Tipo)
                    {
                        case TipoLeitura.Comum:
                            amb.Saida.EmiteCopiaByteArrayDaVariavelGlobalParaAcumulador(Variavel.NomeGlobal);
                            break;
                        case TipoLeitura.Segmento:
                            amb.Saida.EmiteCopiaSegDaVariavelGlobalParaAcumulador(Variavel.NomeGlobal);
                            break;
                        case TipoLeitura.Desvio:
                            amb.Saida.EmiteCopiaVariavelGlobalParaAcumulador(Variavel.NomeGlobal);
                            break;
                        default: throw Erro("Não suportado");
                    }
                    break;
                case TipoVariavel.PtrWordArray:
                    switch(Tipo)
                    {
                        case TipoLeitura.Comum:
                            amb.Saida.EmiteCopiaWordArrayDaVariavelGlobalParaAcumulador(Variavel.NomeGlobal);
                            break;
                        case TipoLeitura.Segmento:
                            amb.Saida.EmiteCopiaSegDaVariavelGlobalParaAcumulador(Variavel.NomeGlobal);
                            break;
                        case TipoLeitura.Desvio:
                            amb.Saida.EmiteCopiaVariavelGlobalParaAcumulador(Variavel.NomeGlobal);
                            break;
                        default: throw Erro("Não suportado");
                    }
                    break;
            }
        }
    }

    protected override void InicializaInterno(Ambiente amb)
    {
        if(amb.Modulo == null) throw Erro($"Módulo não encontrado");
        if(amb.Rotina == null) throw Erro($"Rotina não encontrado");
        var consVar = amb.Rotina.Variaveis.Where(v => v.Nome.ToLower() == NomeVariavel)
            .Union(amb.Rotina.Argumentos.Where(v => v.Nome.ToLower() == NomeVariavel));
        if(consVar.Any() & amb.Modulo.Nome.ToLower() == NomeModulo.ToLower())
        {
            Local = true;
            Variavel = consVar.First();
        }
        else
        {
            var consMod = amb.Modulos.Where(m => m.Nome.ToLower() == NomeModulo);
            if(!consMod.Any()) throw Erro($"Módulo '{NomeModulo}' não encontrado");
            consVar = consMod.First().Variaveis.Where(m => m.Nome.ToLower() == NomeVariavel);
            if(!consVar.Any()) throw Erro($"Módulo '{NomeVariavel}' não encontrado");
            Variavel = consVar.First();
            Local = false;
        }
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        return this;
    }
}