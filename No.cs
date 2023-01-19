abstract class No
{
    public bool Compilado { get; private set; } = false;
    public Trecho Trecho { get; set; }
    public No(Trecho trecho)
    {
        Trecho = trecho;
    }

    public Erro Erro(string msg)
    {
        return new Erro(Trecho, msg);
    }

    protected abstract void CompilaInterno(Ambiente amb);
    protected abstract No OtimizaInterno(Ambiente amb);
    protected abstract void InicializaInterno(Ambiente amb);

    public void Inicializa(Ambiente amb)
    {
        amb.Trecho = Trecho;
        InicializaInterno(amb);
    }

    protected void InicializaLista(List<No> nos, Ambiente amb)
    {
        foreach(var no in nos)
        {
            no.Inicializa(amb);
        }
    }

    public No Otimiza(Ambiente amb)
    {
        amb.Trecho = Trecho;
        return OtimizaInterno(amb);
    }

    protected List<No> OtimizaLista(List<No> nos, Ambiente amb)
    {
        List<No> ret = new List<No>();
        foreach(var no in nos)
        {
            ret.Add(no.Otimiza(amb));
        }
        return ret;
    }

    public void Compila(Ambiente amb)
    {
        amb.Trecho = Trecho;
        if(!Compilado)CompilaInterno(amb);
        Compilado = true;
    }

    protected void CompilaLista(List<No> nos, Ambiente amb)
    {
        foreach(var no in nos)
        {
            no.Compila(amb);
        }
    }

}