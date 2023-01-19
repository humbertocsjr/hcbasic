enum TipoTrecho
{
    FimDaLinha,
    Id,
    Numero,
    NumeroHex,
    AbreParenteses,
    FechaParenteses,
    AbreIndice,
    FechaIndice,
    Virgula,
    Texto,
    OperacaoMatematica,
    OperacaoLogica,
    Atribuicao,
    Ponto,
    DoisPontos,
    Arroba,
    Cerquilha,
    Desconhecido
}

class Trecho
{
    // Aqui armazena um trecho de código fonte
    // Usado pelo Analisador para criar os nós da arvore de compilação

    public Fonte Fonte { get; set; }
    public TipoTrecho Tipo { get; set; }
    public int Linha { get; set; } = 0;
    public int Coluna { get; set; } = 0;
    // No caso de identificador sempre armazenado em minusculas
    public string Conteudo { get; set; } = "";
    // Sempre armazena a forma original de como esta no codigo fonte
    public string ConteudoOriginal { get; set; } = "";

    public Trecho(Fonte fonte, TipoTrecho tipo, int linha, int coluna, string conteudo)
    {
        Tipo = tipo;
        Fonte = fonte;
        Linha = linha;
        Coluna = coluna;
        Conteudo = conteudo;
        Conteudo = conteudo;
    }
    public Trecho(Fonte fonte, TipoTrecho tipo, int linha, int coluna, char c, char cOrig)
    {
        Tipo = tipo;
        Fonte = fonte;
        Linha = linha;
        Coluna = coluna;
        Conteudo = c + "";
        ConteudoOriginal = cOrig + "";
    }

    public override string ToString()
    {
        return $"[{Linha}:{Coluna}:{Tipo}:{Conteudo}]";
    }
}