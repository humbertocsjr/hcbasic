class Erro : Exception
{
    public Trecho Trecho { get; set; }
    public Erro(Trecho trecho, string message) : base(message) 
    { 
        Trecho = trecho;
    }
    public Erro(Trecho trecho, string message, System.Exception inner) : base(message, inner)
    { 
        Trecho = trecho;
    }
}