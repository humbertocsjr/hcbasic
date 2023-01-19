class Texto : No
{
    public string Conteudo { get; set; }
    public Texto(Trecho trecho) : base(trecho)
    {
        Conteudo = trecho.Conteudo;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
        string rotulo_pulo = amb.Saida.GeraRotulo();
        string rotulo_ptr = amb.Saida.GeraRotulo();
        amb.Saida.EmiteDefinePonteiroRemotoParaRotuloDoCodigo(rotulo_ptr);
        if(amb.Tipo == TipoVariavel.UInt8 | amb.Tipo == TipoVariavel.UInt16)
        {
            amb.Saida.EmiteGravaRotuloEmAcumulador(rotulo_ptr);
        }
        amb.Saida.EmitePulaPara(rotulo_pulo);
        amb.Saida.EmiteRotulo(rotulo_ptr);
        amb.Saida.EmiteBinario(System.Text.Encoding.UTF8.GetBytes(Conteudo));
        amb.Saida.EmiteGerarEspaco(1);
        amb.Saida.EmiteRotulo(rotulo_pulo);
    }

    protected override void InicializaInterno(Ambiente amb)
    {
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        return this;
    }
}