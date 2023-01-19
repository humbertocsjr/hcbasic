// See https://aka.ms/new-console-template for more information

if(args.Count() < 2)
{
    Console.WriteLine("HCBasic v0.1");
    Console.WriteLine("Copyright (c) 2023, Humberto Costa dos Santos Junior");
    Console.WriteLine("Uso: hcbasic [arquivo.hcb] [arquivo.asm]");
    return 0;
}

try
{
    Fonte fonte = new Fonte(args[0]);
    Analise anal = new Analise();
    anal.Processar(fonte);
    Saida saida = new Saida8086(args[1]);
    anal.Compila(saida);
    saida.Fecha();
}
catch (Erro erro)
{
    Console.Error.WriteLine($"Erro: {erro.Trecho.Fonte.NomeCompleto}:{erro.Trecho.Linha}:{erro.Trecho.Coluna}:");
    Console.Error.WriteLine($"      {erro.Message}");
    return -1;
}
return 0;

