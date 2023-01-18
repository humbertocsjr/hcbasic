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

    public abstract void EmiteComentario(string comentario);
    public abstract void EmiteModulo(string nome);
    public abstract void EmiteModuloFim(string nome);
    /// Cria rotulo inicial da rotina
    public abstract void EmiteRotina(string nome);
    /// Cria rotulo final da rotina
    public abstract void EmiteRotinaFim(string nome);
    /// Prepara ponteiro para variaveis
    public abstract void EmiteEntraNaRotina();
    /// Restaura ponteiro de variaveis anterior
    public abstract void EmiteSaiDaRotina();
    public abstract string GeraRotulo();
    public abstract void EmitePulaPara(string rotulo);
    public abstract void EmiteRotulo(string rotulo);
    public abstract void EmiteGravaNumeroNaVariavelLocal(int posicao, decimal valor);
    public abstract void EmiteGravaNumeroEmAcumulador(decimal valor);
    public abstract void EmiteCopiaAcumuladorParaVariavelLocal(int posicao);
    public abstract int TamanhoPonteiro{get;}
    public abstract int CalculaTamanho(TipoVariavel tipo);
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
}