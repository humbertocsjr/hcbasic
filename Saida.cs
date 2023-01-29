abstract class Saida
{
    FileStream _arq;
    StreamWriter _gravador;
    public Saida(string endereco)
    {
        _arq = new FileStream(endereco, FileMode.Create);
        _gravador = new StreamWriter(_arq);
    }

    public void Emite(string comando)
    {
        _gravador.Write(comando);
    }

    public void EmiteL(string comando)
    {
        _gravador.WriteLine(comando);
    }

    public void Fecha()
    {
        _gravador.Flush();
        _gravador.Close();
    }

    // ==========================================================================
    // Rotinas que devem ser implementadas pelo arquivo especifico do processador
    // ==========================================================================
    //
    // Os nomes são o mais explicativos possíveis, mas em caso de dúvida busque nos arquivos já implantados

    public abstract void EmiteComentario(string comentario);
    public abstract void EmiteModulo(string nome, string arquivo);
    public abstract void EmiteModuloFim(string nome);
    public abstract void EmiteRotina(string nome);
    public abstract void EmiteRotinaFim(string nome);
    public abstract void EmiteEntraNaRotina();
    public abstract void EmiteSaiDaRotina();
    public abstract string GeraRotulo();
    public abstract void EmitePulaPara(string rotulo);
    public abstract void EmiteRotulo(string rotulo);
    public abstract void EmiteGravaNumeroNaVariavelLocal(int posicao, decimal valor);
    public abstract void EmiteGravaNumeroEmAcumulador(decimal valor);
    public abstract void EmiteCopiaAcumuladorParaVariavelLocal(int posicao);
    public abstract int TamanhoPonteiro{get;}
    public abstract int CalculaTamanho(TipoVariavel tipo);
    public abstract int CalculaTamanhoReal(TipoVariavel tipo);
    public abstract void EmiteSubtraiDoPtrPilha(int qtd);
    public abstract void EmiteAdicionaNoPtrPilha(int qtd);
    public abstract void EmiteEmpilhaAcumulador();
    public abstract void EmiteDesempilhaAcumulador();
    public abstract void EmiteChamaRotina(string modulo, string rotina);
    public abstract void EmiteGerarEspaco(int bytes);
    public abstract void EmiteCopiaAcumuladorParaAuxiliar();
    public abstract void EmiteCopiaAcumuladorParaContador();
    public abstract void EmiteAdicionaAuxNoAcumulador();
    public abstract void EmiteSubtraiAuxNoAcumulador();
    public abstract void EmiteDivideSinalAuxNoAcumulador();
    public abstract void EmiteDivideSemSinalAuxNoAcumulador();
    public abstract void EmiteMultiplicaSinalAuxNoAcumulador();
    public abstract void EmiteMultiplicaSemSinalAuxNoAcumulador();
    public abstract void EmiteModSinalAuxNoAcumulador();
    public abstract void EmiteModSemSinalAuxNoAcumulador();
    public abstract void EmiteShlContadorNoAcumulador();
    public abstract void EmiteShrContadorNoAcumulador();
    public abstract void EmiteRorContadorNoAcumulador();
    public abstract void EmiteRolContadorNoAcumulador();
    public abstract void EmiteComparaAcumuladorComZero();
    public abstract void EmitePulaSeIgual(string rotulo);
    public abstract void EmitePulaSeDiferente(string rotulo);
    public abstract void EmiteConverteAcumuladorEmByte();
    public abstract void EmiteDefinePonteiroRemotoParaRotuloDoCodigo(string rotulo);
    public abstract void EmiteBinario(byte[] dados);
    public abstract void EmiteEmpilhaPonteiroRemoto();
    public abstract void EmiteGravaNumeroNoSegDaVariavelLocal(int posicao, decimal valor);
    public abstract void EmiteGravaNumeroNoPonteiroRemoto(decimal valor);
    public abstract void EmiteGravaNumeroNoSegDoPonteiroRemoto(decimal valor);
    public abstract void EmiteCopiaPonteiroRemotoParaVariavelLocal(int posicao);
    public abstract void EmiteCopiaAcumuladorParaSegDaVariavelLocal(int posicao);
    public abstract void EmiteCopiaAcumuladorParaByteArrayDaVariavelLocal(int posicao, int desvio);
    public abstract void EmiteCopiaAcumuladorParaWordArrayDaVariavelLocal(int posicao, int desvio);
    public abstract void EmiteGravaNumeroNoByteArrayDaVariavelLocal(int posicao, decimal valor, int desvio);
    public abstract void EmiteGravaNumeroNoWordArrayDaVariavelLocal(int posicao, decimal valor, int desvio);
    public abstract void EmiteCopiaVariavelLocalParaAcumulador(int posicao);
    public abstract void EmiteCopiaSegDaVariavelLocalParaAcumulador(int posicao);
    public abstract void EmiteCopiaByteArrayDaVariavelLocalParaAcumulador(int posicao, int desvio);
    public abstract void EmiteCopiaWordArrayDaVariavelLocalParaAcumulador(int posicao, int desvio);
    public abstract void EmiteDesempilhaAuxiliar();
    public abstract void EmiteIncrementaVariavelLocal(int posicao);
    public abstract void EmiteIncrementaSegDaVariavelLocal(int posicao);
    public abstract void EmiteDecrementaVariavelLocal(int posicao);
    public abstract void EmiteDecrementaSegDaVariavelLocal(int posicao);
    public abstract void EmiteIncrementaByteArrayNaVariavelLocal(int posicao, int desvio);
    public abstract void EmiteDecrementaByteArrayNaVariavelLocal(int posicao, int desvio);
    public abstract void EmiteIncrementaWordArrayNaVariavelLocal(int posicao, int desvio);
    public abstract void EmiteDecrementaWordArrayNaVariavelLocal(int posicao, int desvio);
    public abstract void EmitePulaSeMaiorQue(string rotulo, bool sem_sinal);
    public abstract void EmitePulaSeMaiorOuIgual(string rotulo, bool sem_sinal);
    public abstract void EmitePulaSeMenorQue(string rotulo, bool sem_sinal);
    public abstract void EmitePulaSeMenorOuIgual(string rotulo, bool sem_sinal);
    public abstract void EmiteComparaAcumuladorComAuxiliar();
    public abstract void EmiteGravaRotuloEmAcumulador(string rotulo);
    public abstract void EmiteCopiaSegCodigoParaAcumulador();
    public abstract void EmiteAplicaAndEntreAcumuladorEAuxiliar();
    public abstract void EmiteAplicaOrEntreAcumuladorEAuxiliar();
    public abstract void EmiteAplicaXorEntreAcumuladorEAuxiliar();
    public abstract void EmiteIncrementaSegDaVariavelGlobal(string rotulo);
    public abstract void EmiteDecrementaSegDaVariavelGlobal(string rotulo);
    public abstract void EmiteIncrementaVariavelGlobal(string rotulo);
    public abstract void EmiteDecrementaVariavelGlobal(string rotulo);
    public abstract void EmiteIncrementaByteArrayNaVariavelGlobal(string rotulo, int desvio);
    public abstract void EmiteDecrementaByteArrayNaVariavelGlobal(string rotulo, int desvio);
    public abstract void EmiteIncrementaWordArrayNaVariavelGlobal(string rotulo, int desvio);
    public abstract void EmiteDecrementaWordArrayNaVariavelGlobal(string rotulo, int desvio);
    public abstract void EmiteGravaNumeroNaVariavelGlobal(string rotulo, decimal valor);
    public abstract void EmiteCopiaAcumuladorParaSegDaVariavelGlobal(string rotulo);
    public abstract void EmiteCopiaAcumuladorParaVariavelGlobal(string rotulo);
    public abstract void EmiteGravaNumeroNoSegDaVariavelGlobal(string rotulo, decimal valor);
    public abstract void EmiteGravaNumeroNoByteArrayDaVariavelGlobal(string rotulo, decimal valor, int desvio);
    public abstract void EmiteGravaNumeroNoWordArrayDaVariavelGlobal(string rotulo, decimal valor, int desvio);
    public abstract void EmiteCopiaAcumuladorParaByteArrayDaVariavelGlobal(string rotulo, int desvio);
    public abstract void EmiteCopiaAcumuladorParaWordArrayDaVariavelGlobal(string rotulo, int desvio);
    public abstract void EmiteCopiaVariavelGlobalParaAcumulador(string rotulo);
    public abstract void EmiteCopiaByteArrayDaVariavelGlobalParaAcumulador(string rotulo, int desvio);
    public abstract void EmiteCopiaSegDaVariavelGlobalParaAcumulador(string rotulo);
    public abstract void EmiteCopiaWordArrayDaVariavelGlobalParaAcumulador(string rotulo, int desvio);
    public abstract void EmiteCopiaWordArrayDaVariavelLocalParaPonteiroRemoto(int posicao);
    public abstract void EmiteCopiaByteArrayDaVariavelLocalParaPonteiroRemoto(int posicao);
    public abstract void EmiteCopiaWordArrayDaVariavelGlobalParaPonteiroRemoto(string rotulo);
    public abstract void EmiteCopiaByteArrayDaVariavelGlobalComoPonteiroRemoto(string rotulo);
    public abstract void EmiteCopiaWordArrayDaVariavelLocalParaPonteiroRemoto(int posicao, int desvio);
    public abstract void EmiteCopiaByteArrayDaVariavelLocalParaPonteiroRemoto(int posicao, int desvio);
    public abstract void EmiteCopiaWordArrayDaVariavelGlobalParaPonteiroRemoto(string rotulo, int desvio);
    public abstract void EmiteCopiaByteArrayDaVariavelGlobalComoPonteiroRemoto(string rotulo, int desvio);
    public abstract void EmiteCopiaPonteiroRemotoParaVariavelGlobal(string rotulo);
    public abstract void EmiteCopiaPonteiroPilhaParaPonteiroRemoto();
    public abstract void MarcaInicioDeRepeticao();
    public abstract void MarcaFimDeRepeticao();
    public abstract void EmiteChamaRotinaEmVariavelLocal(int posicao);
    public abstract void EmiteChamaRotinaEmVariavelGlobal(string rotulo);
    public abstract void EmiteChamaRotinaEmPonteiroNaVariavelLocal(int posicao, int desvio);
    public abstract void EmiteChamaRotinaEmPonteiroNaVariavelGlobal(string rotulo, int desvio);
    public abstract void EmiteCopiaPonteiroRemotoParaWordArrayNaVariavelLocal(int posicao, int desvio);
    public abstract void EmiteCopiaPonteiroRemotoParaWordArrayNaVariavelGlobal(string rotulo, int desvio);
    public abstract void EmiteCopiaPonteiroRemotoParaByteArrayNaVariavelLocal(int posicao, int desvio);
    public abstract void EmiteCopiaPonteiroRemotoParaByteArrayNaVariavelGlobal(string rotulo, int desvio);
    public abstract void EmiteItemRealocacao(Realocacao realoc);
    public abstract void EmiteEmpilhaVariavelGlobal(string rotulo);
    public abstract void EmiteDesempilhaVariavelGlobal(string rotulo);
    public abstract void EmiteCopiaPonteiroBaseParaAcumulador();
    public abstract void EmiteCopiaPonteiroPilhaParaAcumulador();
    public abstract void EmiteCopiaAcumuladorParaPonteiroBase();
    public abstract void EmiteCopiaAcumuladorParaPonteiroPilha();
    public abstract void EmiteGravaNumeroEmAuxiliar(decimal numero);
    public abstract void EmitePulaParaLocalEmVariavelGlobal(string rotulo);
    public abstract void EmiteCopiaAuxiliarParaAcumulador();
    public abstract void EmiteCopiaPonteiroPilhaParaAuxiliar();
    public abstract void EmiteCopiaPonteiroLocalEmVariavelLocalParaPonteiroRemoto(int posicao);
    public abstract void EmiteCopiaVariavelGlobalParaPonteiroBase(string rotulo);
    public abstract void EmiteCopiaVariavelGlobalParaPonteiroPilha(string rotulo);
    public abstract void EmiteInverteAcumulador();
    public abstract void EmiteInterrupcao(string nome);
    public abstract void EmiteInterrupcaoFim(string nome);
    public abstract void EmiteMarcaInvalidaOtimizacoes();

}