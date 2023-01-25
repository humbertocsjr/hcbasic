class RegistroDeErro : No
{
    public int Codigo { get; set; }
    public string Nome { get; set; }

    public RegistroDeErro(Trecho trecho, int codigo) : base(trecho)
    {
        Nome = trecho.Conteudo;
        Codigo = codigo;
    }

    protected override void CompilaInterno(Ambiente amb)
    {
    }

    protected override void InicializaInterno(Ambiente amb)
    {
    }

    protected override No OtimizaInterno(Ambiente amb)
    {
        return this;
    }
}