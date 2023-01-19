class Atribuicao : No
{
    public enum TipoAtribuicao
    {
        Comum,
        Desvio,
        Segmento
    }
    public enum TipoOperacaoEspecial
    {
        Atribuicao,
        Incrementa,
        Decrementa
    }
    public TipoOperacaoEspecial OperacaoEspecial { get; set; } = TipoOperacaoEspecial.Atribuicao;
    public TipoAtribuicao Tipo { get; set; } = TipoAtribuicao.Comum;
    public List<string> VariavelDestino { get; set; }
    public No Valor { get; set; }
    public DeclaraVariavel? Variavel { get; set; } = null;
    public bool Local { get; set; } = false;

    public Atribuicao(Trecho trecho, List<string> variavel) : base(trecho)
    {
        VariavelDestino = variavel;
        Valor = new Nulo(trecho);
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        if(Variavel == null) throw Erro($"Variável {VariavelDestino.Last()} não localizada para gravação");
        if(Local)
        {
            if(OperacaoEspecial != TipoOperacaoEspecial.Atribuicao)
            {
                if(Tipo == TipoAtribuicao.Segmento)
                {
                    if(OperacaoEspecial == TipoOperacaoEspecial.Incrementa)
                        amb.Saida.EmiteIncrementaSegDaVariavelLocal(Variavel.Posicao);
                    else if(OperacaoEspecial == TipoOperacaoEspecial.Decrementa)
                        amb.Saida.EmiteDecrementaSegDaVariavelLocal(Variavel.Posicao);
                    else  throw Erro("Operação não suportada na atribuição");
                }
                else if(Tipo == TipoAtribuicao.Desvio)
                {
                    if(OperacaoEspecial == TipoOperacaoEspecial.Incrementa)
                        amb.Saida.EmiteIncrementaVariavelLocal(Variavel.Posicao);
                    else if(OperacaoEspecial == TipoOperacaoEspecial.Decrementa)
                        amb.Saida.EmiteDecrementaVariavelLocal(Variavel.Posicao);
                    else  throw Erro("Operação não suportada na atribuição");
                }
                else if(Tipo == TipoAtribuicao.Comum)
                {
                    if(Variavel.EhPonteiro())
                    {
                        if(Variavel.Tipo == TipoVariavel.PtrByteArray)
                            if(OperacaoEspecial == TipoOperacaoEspecial.Incrementa)
                                amb.Saida.EmiteIncrementaByteArrayNaVariavelLocal(Variavel.Posicao);
                            else if(OperacaoEspecial == TipoOperacaoEspecial.Decrementa)
                                amb.Saida.EmiteDecrementaByteArrayNaVariavelLocal(Variavel.Posicao);
                            else  throw Erro("Operação não suportada na atribuição");
                        else if(Variavel.Tipo == TipoVariavel.PtrWordArray)
                            if(OperacaoEspecial == TipoOperacaoEspecial.Incrementa)
                                amb.Saida.EmiteIncrementaWordArrayNaVariavelLocal(Variavel.Posicao);
                            else if(OperacaoEspecial == TipoOperacaoEspecial.Decrementa)
                                amb.Saida.EmiteDecrementaWordArrayNaVariavelLocal(Variavel.Posicao);
                            else  throw Erro("Operação não suportada na atribuição");
                        else throw Erro("Tipo não suportado na atribuição");
                    }
                    else
                    {
                        if(OperacaoEspecial == TipoOperacaoEspecial.Incrementa)
                            amb.Saida.EmiteIncrementaVariavelLocal(Variavel.Posicao);
                        else if(OperacaoEspecial == TipoOperacaoEspecial.Decrementa)
                            amb.Saida.EmiteDecrementaVariavelLocal(Variavel.Posicao);
                        else  throw Erro("Operação não suportada na atribuição");
                    }
                }
                else throw Erro("Tipo não suportado na atribuição");
            }
            else if(Variavel.EhNumerica() & Valor is Numero)
            {
                amb.Saida.EmiteGravaNumeroNaVariavelLocal(Variavel.Posicao, ((Numero)Valor).Valor);
            }
            else if(Variavel.EhPonteiro() & Valor is Texto)
            {
                string txt_pula = amb.Saida.GeraRotulo();
                string txt_ptr = amb.Saida.GeraRotulo();
                amb.Saida.EmitePulaPara(txt_pula);
                amb.Saida.EmiteRotulo(txt_ptr);
                amb.Saida.EmiteBinario(System.Text.Encoding.UTF8.GetBytes(((Texto)Valor).Conteudo));
                amb.Saida.EmiteGerarEspaco(1);
                amb.Saida.EmiteRotulo(txt_pula);
                amb.Saida.EmiteCopiaSegCodigoParaAcumulador();
                amb.Saida.EmiteCopiaAcumuladorParaSegDaVariavelLocal(Variavel.Posicao);
                amb.Saida.EmiteGravaRotuloEmAcumulador(txt_ptr);
                amb.Saida.EmiteCopiaAcumuladorParaVariavelLocal(Variavel.Posicao);
            }
            else if(Variavel.EhPonteiro() & Valor is Numero)
            {
                if(Tipo == TipoAtribuicao.Segmento)
                {
                    amb.Saida.EmiteGravaNumeroNoSegDaVariavelLocal(Variavel.Posicao, ((Numero)Valor).Valor);
                }
                else if(Tipo == TipoAtribuicao.Desvio)
                {
                    amb.Saida.EmiteGravaNumeroNaVariavelLocal(Variavel.Posicao, ((Numero)Valor).Valor);
                }
                else if(Tipo == TipoAtribuicao.Comum)
                {
                    if(Variavel.Tipo == TipoVariavel.PtrByteArray)
                        amb.Saida.EmiteGravaNumeroNoByteArrayDaVariavelLocal(Variavel.Posicao, ((Numero)Valor).Valor);
                    else if(Variavel.Tipo == TipoVariavel.PtrWordArray)
                        amb.Saida.EmiteGravaNumeroNoWordArrayDaVariavelLocal(Variavel.Posicao, ((Numero)Valor).Valor);
                    else throw Erro("Tipo não suportado na atribuição");
                }
                else throw Erro("Tipo não suportado na atribuição");
            }
            else
            {
                amb.Tipo = Variavel.Tipo;
                Valor.Compila(amb);
                if(Variavel.EhPonteiro())
                {
                    if(Tipo == TipoAtribuicao.Comum)
                    {
                        if(Variavel.Tipo == TipoVariavel.PtrByteArray)
                            amb.Saida.EmiteCopiaAcumuladorParaByteArrayDaVariavelLocal(Variavel.Posicao);
                        else if(Variavel.Tipo == TipoVariavel.PtrWordArray)
                            amb.Saida.EmiteCopiaAcumuladorParaWordArrayDaVariavelLocal(Variavel.Posicao);
                        else throw Erro("Tipo não suportado na atribuição");
                    }
                    else if(Tipo == TipoAtribuicao.Desvio)
                    {
                        amb.Saida.EmiteCopiaAcumuladorParaVariavelLocal(Variavel.Posicao);
                    }
                    else if(Tipo == TipoAtribuicao.Segmento)
                    {
                        amb.Saida.EmiteCopiaAcumuladorParaSegDaVariavelLocal(Variavel.Posicao);
                    }
                    else throw Erro("Tipo não suportado na atribuição");
                }
                else if(Variavel.EhNumerica())
                {
                    amb.Saida.EmiteCopiaAcumuladorParaVariavelLocal(Variavel.Posicao);
                }
                amb.Tipo = null;
            }
        }
        else throw Erro("Variavel global nao suportada");
    }

    protected override void InicializaInterno(Ambiente amb)
    {
        if(VariavelDestino.Count == 1)
        {
            if(amb.Rotina == null) throw Erro("Rotina não definido");
            var consLocal = amb.Rotina.Variaveis.Where(v =>v.Nome.ToLower() == VariavelDestino[0].ToLower())
                .Union(amb.Rotina.Argumentos.Where(v =>v.Nome.ToLower() == VariavelDestino[0].ToLower()));
            if(consLocal.Any())
            {
                Local = true;
                Variavel = consLocal.First();
            }
            else
            {
                if(amb.Modulo == null) throw Erro("Módulo não definido");
                var consMod = amb.Modulo.Variaveis.Where(v => v.Nome.ToLower() == VariavelDestino[0].ToLower());
                if(!consMod.Any()) throw Erro("Variável não encontrada");
                Variavel = consMod.First();
            }
        }
        else
        {
            var consMod = amb.Modulos.Where(v => v.Nome.ToLower() == VariavelDestino[0].ToLower());
            if(!consMod.Any()) throw Erro("Módulo não encontrada");
            var consModVar = consMod.First().Variaveis.Where(v => v.Nome.ToLower() == VariavelDestino[0].ToLower());
            if(!consModVar.Any()) throw Erro("Variável não encontrada");
            Variavel = consModVar.First();
        }
        amb.CadastraReferencia(Variavel.Modulo);
        Valor.Inicializa(amb);
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        Valor = Valor.Otimiza(amb);
        return this;
    }
}