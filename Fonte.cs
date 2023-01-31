
class Fonte
{
    public string NomeCompleto { get; set; }
    FileStream _arq;
    StreamReader _leitor;
    int _linha = 0;
    public Fonte(string endereco)
    {
        _arq = new FileStream(endereco, FileMode.Open, FileAccess.Read);
        NomeCompleto = endereco;
        _leitor = new StreamReader(_arq);
    }

    // Le uma linha, caso chegue no fim do arquivo retorna nulo
    // Processa cada caractere de uma linha de código retornando Trechos de código
    public Trechos LeiaLinha()
    {
        List<Trecho> ret = new List<Trecho>();
        Trecho? atual = null;
        string? txt = _leitor.ReadLine();
        if(txt == null) return new Trechos(this, new Trecho[]{new Trecho(this, TipoTrecho.FimDaLinha, _linha, 0, "")}){ FimDoArquivo = true};
        _linha++;
        int coluna = 0;
        bool escape = false;
        foreach(char c in txt)
        {
            coluna++;
            reavalia:
            if(atual == null)
            {
                escape = false;
                if(c == '"')
                {
                    atual = new Trecho(this, TipoTrecho.Texto, _linha, coluna, "");
                    ret.Add(atual);
                }
                else if(c == '\'')
                {
                    // Ignora comentarios
                    break;
                }
                else if(char.IsAsciiLetter(c) | c == '_')
                {
                    atual = new Trecho(this, TipoTrecho.Id, _linha, coluna, char.ToLower(c), c);
                    ret.Add(atual);
                }
                else if(char.IsAsciiDigit(c))
                {
                    atual = new Trecho(this, TipoTrecho.Numero, _linha, coluna, c, c);
                    ret.Add(atual);
                }
                else if(c == '.')
                {
                    atual = new Trecho(this, TipoTrecho.Ponto, _linha, coluna, "");
                    ret.Add(atual);
                    atual = null;
                }
                else if(c == '(')
                {
                    atual = new Trecho(this, TipoTrecho.AbreParenteses, _linha, coluna, "");
                    ret.Add(atual);
                    atual = null;
                }
                else if(c == ')')
                {
                    atual = new Trecho(this, TipoTrecho.FechaParenteses, _linha, coluna, "");
                    ret.Add(atual);
                    atual = null;
                }
                else if(c == '[')
                {
                    atual = new Trecho(this, TipoTrecho.AbreIndice, _linha, coluna, "");
                    ret.Add(atual);
                    atual = null;
                }
                else if(c == ']')
                {
                    atual = new Trecho(this, TipoTrecho.FechaIndice, _linha, coluna, "");
                    ret.Add(atual);
                    atual = null;
                }
                else if(c == '@')
                {
                    atual = new Trecho(this, TipoTrecho.Arroba, _linha, coluna, "");
                    ret.Add(atual);
                    atual = null;
                }
                else if(c == '#')
                {
                    atual = new Trecho(this, TipoTrecho.Cerquilha, _linha, coluna, "");
                    ret.Add(atual);
                    atual = null;
                }
                else if(c == '+' | c == '-' | c == '/' | c == '*')
                {
                    atual = new Trecho(this, TipoTrecho.OperacaoMatematica, _linha, coluna, c, c);
                    ret.Add(atual);
                }
                else if(c == '=' | c == '>' | c == '<' | c == '~')
                {
                    atual = new Trecho(this, TipoTrecho.OperacaoLogica, _linha, coluna, c, c);
                    ret.Add(atual);
                }
                else if(c == ',')
                {
                    atual = new Trecho(this, TipoTrecho.Virgula, _linha, coluna, c, c);
                    ret.Add(atual);
                    atual = null;
                }
                else if(c == ':')
                {
                    atual = new Trecho(this, TipoTrecho.DoisPontos, _linha, coluna, c, c);
                    ret.Add(atual);
                    atual = null;
                }
                else if(c != ' ' & c != '\t')
                {
                    throw new Erro(new Trecho(this, TipoTrecho.Desconhecido, _linha, coluna, c, c), "Caractere não reconhecido: " + c);
                }
            }
            else if(atual.Tipo == TipoTrecho.Id)
            {
                if(char.IsAsciiLetterOrDigit(c) | c == '_')
                {
                    atual.Conteudo += char.ToLower(c);
                    atual.ConteudoOriginal += c;
                }
                else
                {
                    switch(atual.Conteudo)
                    {
                        case "or":
                        case "and":
                        case "orelse":
                        case "andalso":
                        case "xor":
                        case "not":
                            atual.Tipo = TipoTrecho.OperacaoLogica;
                            break;
                        case "mod":
                        case "shl":
                        case "shr":
                        case "rol":
                        case "ror":
                            atual.Tipo = TipoTrecho.OperacaoMatematica;
                            break;
                    }
                    atual = null;
                    goto reavalia;
                }
            }
            else if(atual.Tipo == TipoTrecho.OperacaoLogica)
            {
                if(c == atual.Conteudo[0] | c == '=' | (atual.Conteudo[0] == '<' & c == '>'))
                {
                    atual.Conteudo += char.ToLower(c);
                    atual.ConteudoOriginal += c;
                }
                else
                {
                    switch(atual.Conteudo)
                    {
                        case "=":
                            atual.Tipo = TipoTrecho.Atribuicao;
                            break;
                    }
                    atual = null;
                    goto reavalia;
                }
            }
            else if(atual.Tipo == TipoTrecho.OperacaoMatematica)
            {
                if(c == atual.Conteudo[0])
                {
                    atual.Conteudo += char.ToLower(c);
                    atual.ConteudoOriginal += c;
                }
                else
                {
                    atual = null;
                    goto reavalia;
                }
            }
            else if(atual.Tipo == TipoTrecho.Numero)
            {
                if(char.IsAsciiDigit(c))
                {
                    atual.Conteudo += c;
                    atual.ConteudoOriginal += c;
                }
                else if((c == 'x' | c == 'X') & atual.Conteudo == "0")
                {
                    atual.Tipo = TipoTrecho.NumeroHex;
                    atual.Conteudo = "";
                    atual.ConteudoOriginal += c;
                }
                else
                {
                    atual = null;
                    goto reavalia;
                }
            }
            else if(atual.Tipo == TipoTrecho.NumeroHex)
            {
                if(char.IsAsciiHexDigit(c))
                {
                    atual.Conteudo += c;
                    atual.ConteudoOriginal += c;
                }
                else
                {
                    atual = null;
                    goto reavalia;
                }
            }
            else if(atual.Tipo == TipoTrecho.Texto)
            {
                if(escape)
                {
                    escape = false;
                    switch(c)
                    {
                        case 'n':
                            atual.Conteudo += '\n';
                            atual.ConteudoOriginal += '\n';
                            break;
                        case 'r':
                            atual.Conteudo += '\r';
                            atual.ConteudoOriginal += '\r';
                            break;
                        case 't':
                            atual.Conteudo += '\t';
                            atual.ConteudoOriginal += '\t';
                            break;
                        case 'b':
                            atual.Conteudo += '\b';
                            atual.ConteudoOriginal += '\b';
                            break;
                        default:
                            atual.Conteudo += c;
                            atual.ConteudoOriginal += c;
                            break;
                    }
                }
                else if(c == '\\')
                {
                    escape = true;
                }
                else if(c != '"')
                {
                    atual.Conteudo += c;
                    atual.ConteudoOriginal += c;
                }
                else
                {
                    atual = null;
                }
            }
            else throw new NotFiniteNumberException($"Tipo {atual.Tipo} não implementado.");
        }
        ret.Add(new Trecho(this, TipoTrecho.FimDaLinha, _linha, coluna, ""));
        return new Trechos(this, ret.ToArray()){ FimDoArquivo = false};
    }

}