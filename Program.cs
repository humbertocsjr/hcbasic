// Compilador HCBasic
// Copyright (c) 2023, Humberto Costa dos Santos Junior
//
// O código fonte deste projeto tem comentários para facilitar a leitura, com excessão dos Nós, mas em sua maior parte tem uma lógica simples
//

if(args.Count() < 2)
{
    Console.WriteLine("HCBasic v0.9");
    Console.WriteLine("Copyright (c) 2023, Humberto Costa dos Santos Junior");
    Console.WriteLine("Uso: hcbasic [arquivo.hcb] [arquivo.asm] [lista de diretorios include] ...");
    return 0;
}

// Importa diretorios dos argumentos
List<DirectoryInfo> listaDir = new List<DirectoryInfo>();
for(int i = 2; i < args.Count(); i++)
{
    listaDir.Add(new DirectoryInfo(args[i]));
}

try
{
    // Carrega arquivo de código fonte inicial
    Fonte fonte = new Fonte(args[0]);
    // Inicia o Analisador de código fonte 
    Analise analise = new Analise(listaDir);
    // Processa o código fonte
    analise.Processar(fonte);
    // Inicia o gerador de assembly
    Saida saida = new Saida8086(args[1]);
    // Compila todo código fonte carregado
    //
    //  A compilação é executada em 3 etapas
    //
    //  - Inicialização: Valida se a estrutura é valida, aqui onde aparecem a maioria dos erros de código fonte
    //  - Otimização: Tenta remover código desnecessário, onde normalmente se pré calcula formulas numéricas, exemplo: 1+1+2 vira um único nó 4
    //  - Compilação: Gera o código assembly usando os dados gerados pela Inicialização
    analise.Compila(saida);
    // Salva e fecha o arquivo de saida
    saida.Fecha();
}
catch (Erro erro)
{
    Console.Error.WriteLine($"Erro: {erro.Trecho.Fonte.NomeCompleto}:{erro.Trecho.Linha}:{erro.Trecho.Coluna}:");
    Console.Error.WriteLine($"      {erro.Message}");
    return -1;
}
return 0;

