# Compilador HCBasic para 8086

Esta linguagem de programação tem como objetivo criar uma derivação de baixo nível da linguagem BASIC moderna direcionada para maquinas 16 Bits, inspirada no VisualBasic.NET, QuickBASIC. Inicialmente está sendo implementado apenas o gerador de código para 8086, mas o compilador é flexível podendo facilmente adicionar novos processadores.

Esta linguagem não tem como objetivo ser orientada a objetos, sendo próximo de uma versão 16Bits procedural do VisualBasic.NET, onde os comandos são agrupados em módulos, com uma dinâmica de nomes próxima as bibliotecas do .NET Framework.

## Requisitos Mínimos

- DotNET 7.0 para Windows, Linux ou macOS
- DOSBox para testes dos arquivos gerados
- NASM para montagem do código assembly gerado

O uso do Makefile é opcional e voltado para Linux e macOS, existindo apenas para facilitar

## Bugs/Problemas conhecidos

- Comandos ROL, ROR, SHL e SHR aplicam sempre em 16 bits, mesmo quando a variável é de 8 bits, onde os comando ROL e ROR ficam inutilizados para sua função, por enquanto usar esses comandos apenas com variáveis 16 bits
- Algumas operações matemáticas e lógicas gera um código extremamente mal otimizado, principalmente para ponteiros, deve-se colocar uma camada de otimização no gerador do 8086 para evita definir o segmento ES a cada manipulação de ponteiros.

## Objetivos

- [x] Suporte a módulos
- [x] Suporte a variáveis globais(do módulo) e locais
- [x] Suporte a sub-rotinas e funções
- [x] Comandos IF e WHILE
- [x] Suporte a números 8 e 16 bits
- [ ] **Falta possibilidade de chamar uma função dentro de uma atribuição de variável** Este é o próximo tópico a ser implementado, devendo ficar pronto no final do dia **19/01/2023**
- [ ] Correto tratamento e diferenciação do public e private
- [ ] Comando FOR
- [ ] Suporte a rotinas externas usando ponteiro (Implementar comando INVOKE)
- [ ] Implementar tipos personalizados usando uma dinâmica próxima ao TYPE do QuickBASIC, por trás usar comandos do PtrByteArray e PtrWordArray, mas permitindo declarar Rotinas, para ser uma proto orientação a objetos para poder implementar as bibliotecas System de forma mais próxima ao .NET
- [x] Ponteiros
- [ ] String (Concatenar, substring, etc)
- [ ] Adicionar ao inicio das constantes de texto, o seu tamanho para evitar o estouro de variável pelas rotinas de manipulação de Strings
- [x] Suporte a números 32 bits na biblioteca
- [ ] Suporte a números 32 bits na linguagem
- [x] Inclui apenas módulos usados no projeto, deixando o executável mais compacto
- [ ] Permitir conversão dos ponteiros PtrByteArray em PtrWordArray de forma simples
- [ ] Implementar um tipo de Try Catch Finally / Throw Exception
- [x] Implementar forma de definir os diretórios de pesquisa do Imports

## Exemplo de código

Todo programa deve ter um Módulo chamado Program com uma rotina chamada Main para ser executável.

```vb

Imports System

Module Program

    Public Dim Teste as UInt16

    Public Sub Main (args as ptrbytearray)
        Dim a as Int16
        Let a = 1 + 2;
        If a == 3 Then
            Let a = a - 2
        End
        While a < 10
            Let a = a - 1
        End

        Console.WriteLine "Hello World!!"
    End

End

```

## Compilando e instalando no Linux ou macOS

```sh
make

sudo make install
```

## Compilando no Windows

No PowerShell execute

```powershell
dotnet publish -c Release -o Distro
```

Os executaveis devem se encontrar em Distro\

## Uso

```sh

hcbasic teste.hcb teste.asm Plataformas/8086-DOS

nasm -f bin -o teste.com teste.asm

```

# Linguagem HCBasic

*Este texto será expandido conforme a evolução do projeto*

Esta linguagem de programação tem fortes inspirações no VisualBasic.NET e na plataforma .NET Framework, porém sem recursos de orientação a objetos, por se tratar de uma linguagem procedural, com acessos de baixo nível, onde se encaixa próximo a linguagens como o C e Pascal clássico.

Por ser uma linguagem da família BASIC, ela herda algumas de suas características, como a indistinção entre maiúsculas e minúsculas para comandos e nomes de variáveis, onde por exemplo: teste, TESTE e TEste são tratados como o mesmo item.

E para simplificar e modernizar a linguagem foi padronizado o fechamento de blocos com apenas 'end', onde nas linguagens antigas eram utilizados por exemplo: 'end sub', 'end function', 'next', 'wend', ficando parecido com fechamento de linguagens como Ruby.

**Com isso, este código é válido:**

```vb
If i < 10 Then
End
```

**Porém este é inválido**

```vb
If i < 10 Then
End If
```

## Módulos

Para melhor organização, o código fonte é dividido em módulos, onde cada módulo pode ter seus campos e rotinas.

Cada arquivo de código fonte pode ter um ou mais módulos, não havendo limite de número de módulos, e estes são compilados conforme uso, por exemplo para que um módulo entre no executável ele tem que ser referenciado diretamente ou indiretamente pelo módulo Program, assim economizando espaço no executável que seria ocupado por módulos que no momento não são usados no projeto.

Para declarar um módulo basta usar o comando Module conforme abaixo:

```vb
Module Program
End
```

Lembrando que todo programa deve ter ao menos um Módulo Program com uma rotina pública chamada Main dentro.

## Rotinas (Sub e Function)

Os códigos dentro dos Módulos são separados em Rotinas, que podem ser chamadas umas pelas outras, para simplificar o código.

As rotinas podem ser separadas em dois tipos:

* Function - Permite retorno de valores para o chamador
* Sub - Não permite retorno de valores para o chamador

As rotinas podem ser marcadas como acessível publicamente ou privadamente, onde apenas as rotinas públicas são acessíveis de fora do módulo atual.

**Exemplo de declaração de rotinas:**

```vb
Module Program
    Public Sub Main (args as ptrbytearray)
        ' Esta rotina pode ser chamada de fora do Módulo
    End

    Public Function Retorna2 as UInt16
        ' Esta rotina é pública e pode ser chamada de dentro ou de fora deste módulo
        return 2 ' Retorna o número 2 para o chamador
    End

    Private Sub RotinaInternaDoModulo
        ' Esta rotina é invisível para outros módulos podendo apenas ser chamada por este módulo
    End
End

```

## Importar Bibliotecas/Arquivos Externos

Para facilitar e simplificar o desenvolvimento separando os módulos em arquivos para agilizar a sua localização, a linguagem aceita unir vários arquivos e referência-los usando o comando 'Imports'.

Este comando recebe como parâmetro o nome do arquivo sem sua Extensão, este nome deve ser único, e colocado na pasta do projeto ou na pasta de bibliotecas do compilador.

**Exemplo:**

Nome do arquivo: System.hcb

Comando para inclusão:

```vb
Imports System
```

Nome do arquivo: System.Text.hcb

Comando para inclusão:

```vb
Imports System.Text
```

Preferencialmente devem ser colocados no topo do arquivo para melhor legibilidade.

Deve-se sempre importar o arquivo **System** ao projeto pois ele contém a biblioteca e recursos base para uso da linguagem.

## Variáveis Locais e Campos do Módulo

Por ser uma linguagem próxima ao baixo nível, os tipos de variáveis se limitam ao que o processador suporta, e por este compilador ter como objetivo plataformas 16 bits, se limita os tipos base a 16bits, podendo manipular números tanto com ou sem sinal, mudando o range conforme o capítulo **Tipos de dados** deste manual.

### Declaração de variáveis e campos

Para declarar uma variável deve-se usar o comando Dim, informando o nome da variável seguido de seu tipo conforme abaixo:

```vb
Dim NomeDaVariavel as UInt16
```

Os campos usam o mesmo comando mas podem ter os marcadores de público e privado adicionados, sendo na ausência desse sempre considerado privado.

```vb
Public Dim NomeDoCampoPublico as UInt16
Private Dim NomeDoCampoPrivado as UInt16
Dim NomeDoCampoPrivadoAlternativo as UInt16
```

### Números e Formatos

Inicialmente aceita os formatos de número abaixo:

| Formato | Descrição | Exemplo |
|---------|-----------|---------|
| 00000 | Número decimal de 16 bits | 12345 |
| 0x0000 | Número hexadecimal de 16 bits | 0x1234 |

### Tipos de dados

As variáveis e campos usam tipos rigidamente especificados, não havendo tipos genéricos. Abaixo segue a lista de tipos aceitos:

| Tipo | Descrição| Alcance |
|------|----------|---------|
| UInt8 | Inteiro sem sinal de 8 bits | 0...255 |
| Int8 | Inteiro com sinal de 8 bits | -128...127 |
| UInt16 | Inteiro sem sinal de 16 bits | 0...65535 |
| Int16 | Inteiro com sinal de 16 bits | -32768...32767 |
| PtrByteArray | Ponteiro para Array de UInt8 | 0...255 |
| PtrWordArray | Ponteiro Array de UInt16 | 0...65535 |

* Os tipos PtrByteArray e PtrWordArray tem uma propriedade especial de definir seu destino/origem de dados usando caracteres especiais como '@' para definir o desvio(Offset) e '#' para definir o segmento(Seg) da memória, para acesso a qualquer ponto da memória RAM mesmo em arquiteturas que não permitem acesso facilitado a trechos externos ao aplicativo.
* O Tipo PtrByteArray pode receber um texto como valor diretamente, alterando o ponteiro para o texto informado, não precisando alterar o Segmento e Desvio do ponteiro manualmente.

## Manipulação de variáveis e campos

Para manipular e definir valores de variáveis, é usado sempre o comando 'Let', não havendo manipulação direta de variáveis.

**Exemplo de uso:**

```vb
Imports System

Module Program
    Public Sub Main (args as ptrbytearray)
        ' Declara as variáveis
        Dim varUI8 as UInt8
        Dim varUI16 as UInt16
        Dim ptrTexto as PtrByteArray
        Dim ptrVideo as PtrByteArray
        ' Define os valores das variáveis
        Let varUI8 = 1+35
        Let varUI16 = varUI8 + 55
        ' Define um ponteiro para uma string
        Let ptrTexto = "Teste"
        ' Define um ponteiro manualmente
        '   Formato usada para HEXADECIMAL 0x0000
        '   Define o segmento
        Let #ptrVideo = 0xB800 
        '   Define o desvio
        Let @ptrVideo = 0
        ' Altera o conteudo do ponteiro
        ' Escreve um A (65 em UInt8) na tela
        Let ptrVideo = 65
        ' Pula para a próxima posicao da memoria de video (+2)
        Let @ptrVideo ++
        Let @ptrVideo ++
        ' Escreve um B (66) na tela ao lado do A
        Let ptrVideo = 66
        ' Escreve o conteúdo da variável ptrTexto
        Console.Write ptrTexto
    End
End
```

## Lógica e matemática

Com excessão do AND, OR e XOR, as demais comparações lógicas retornam valores fixos para sim e não, porém os comandos que utilizam expressões lógicas aceitam quaisquer valor diferente de 0(Zero) como Verdadeiro/Sim e o 0(Zero) como Falso/Não.

**Retornos das comparações lógicas**
| Comparação | Descrição | Retorno |
|------------|-----------|---------|
| And | Aplica E entre os bits dos parametros | Retorna o valor usando a lógica AND do processador |
| Or  | Aplica Ou entre os bits dos parametros| Retorna o valor usando a lógica OR do processador |
| Xor | Aplica Ou Exclusivo entre os bits dos parametros | Retorna o valor usando a lógica XOR do processador |
| AndAlso | Caso o primeiro parâmetro seja falso, não avalia o segundo, retornando falso diretamente | Retorna 0xffff para Verdadeiro e 0 para Falso |
| OrElse  | Caso o primerio parâmetro seja verdadeiro não avalia o segundo retornando verdadeiro diretamente | Retorna 0xffff para Verdadeiro e 0 para Falso |
| < | Menor que | Retorna 0xffff para Verdadeiro e 0 para Falso |
| <= | Menor ou igual | Retorna 0xffff para Verdadeiro e 0 para Falso |
| > | Maior que | Retorna 0xffff para Verdadeiro e 0 para Falso |
| >= | Maior ou igual | Retorna 0xffff para Verdadeiro e 0 para Falso |
| == | Igual | Retorna 0xffff para Verdadeiro e 0 para Falso |
| <> | Diferente | Retorna 0xffff para Verdadeiro e 0 para Falso |

**Operações matemáticas/lógicas não comparativas**

| Operação | Descrição |
|----------|-----------|
| ++ | Incrementa um valor |
| -- | Decrementa um valor |
| + | Soma dois valores |
| - | Subtrai dois valores |
| * | Multiplica dois valores |
| / | Divide dois valores |
| Mod | Divide dois valores, retornando o resto da divisão |
| Shl | Move os bits do primeiro valor a esqueda pela quantidade no segundo valor, adicionando zero na lacuna, usando normalmente para multiplicações binárias |
| Shr | Move os bits do primeiro valor a direita pela quantidade no segundo valor, adicionando zero na lacuna, usando normalmente para divisões binárias |
| Rol | Rotaciona os bits do primeiro valor a esquerda pela quantidade no segundo valor |
| Ror | Rotaciona os bits do primeiro valor a direita pela quantidade no segundo valor |

**Dúvidas comuns:**

Qual a diferença do Shl com o Rol e do Shr com o Ror?

    Quando se aplica o SHL ele descarta o bit mais a esquerda e adiciona um 0 no bit mais a direita enquanto move os demais, enquando no ROL ele pega o bit mais a esquerda e posiciona no lugar no bit mais a direita enquanto move os demais, no caso dos SHR e ROR, usam a mesma lógica porém para o outro sentido.

    Exemplo usando Inteiro sem sinal de 8 bits (0-255):

    Formula: 128 SHL 1 => 0
    Em binarios: 10000000 SHL 1 => 00000000 (1 é descartado)

    Enquanto

    Formula: 128 ROL 1 => 0
    Em binarios: 10000000 ROL 1 => 00000001 (1 é movido)

    Outro exemplo:

    Formula: 131 SHL 1 => 6
    Em binarios: 10000011 SHL 1 => 00000110 (1 é descartado)

    Enquanto

    Formula: 131 ROL 1 => 7
    Em binarios: 10000011 ROL 1 => 00000111 (1 é movido)


## Comandos da linguagem

Lembrando que a linguagem HCBasic não diferencia maiúsculas com minúsculas, os comandos estão escritos com a primeira letra maiúscula apenas por questão estética.

### If Then Else

O If executa seu conteúdo conforme o resultado de uma comparação.

```vb
If A > 0 Then
    ' Executa apenas se o conteúdo de A for maior que 0
Else
    ' Executa apenas se o conteúdo de A for menor ou igual a 0
    ' Lembrando que o ELSE é opcional, podendo não ser colocado, ai o código apenas ignorará o IF caso a comparação seja falsa
End

' Variação de uma linha
If A > 0 Then Return 0 Else Return 1
```

### While

Repete seu conteúdo enquanto o resultado de uma comparação for verdadeiro.

```vb
While A < 10
    ' Executa apenas se o valor inicial de A for menor que 10, e continua executando enquanto A for menor que 10

    ' Adiciona 1 ao A, sem este comando ou alguma alteração em A, esta repetição seria infinita
    Let A ++
End

' Variação de uma linha
While A < 10 Let A ++
```

### Return

Interrompe a execução da **Rotina** atual, e retorna um valor caso seja uma Function.

```vb

Sub RotinaExemplo
    ' Executa tudo antes deste comando
    Return 
    ' Nada abaixo daqui é executado
End

Fuction FuncaoExemplo(a as integer) as UInt16
    ' Executa tudo antes deste comando
    If a > 10 Then Return 0
    ' Executa apenas se a < 10
    Return a ' Retorna o valor em 'a' para o chamador
    ' Nada abaixo daqui é executado
End

```

### Let

Atribui um valor a uma variável.

```vb

Dim a as UInt16
Let a  = 10

```

### GoTo

Pula diretamente para um rótulo.

Pode ser usado para lógicas complexas.

```vb
' Todos os comandos acima disso são executados
GoTo RotuloExemplo
' Nenhum comando aqui é executado
RotuloExemplo:
' Todos os comandos abaixo disso são executados
```

### Asm

Gera um código em Assembly diretamente, podendo executar funções que não são possíveis pela linguagem padrão.

Este comando é aceito apenas dentro de rotinas.

```vb
'Chama a BIOS e escreve a letra A na tela
Asm "mov al, 'A'"
Asm "mov ah, 0xe"
Asm "int 0x10"
```

# Como portar para outro processador

**AVISO:** A implementação mínima ainda está em desenvolvimento, podendo sofrer alterações em ritmo mais acelerado nas classes do projeto citadas neste documento.

Para se portar o compilador para outro processador basta implementar uma Classe Saida do projeto, esta classe é responsável pela geração do código em assembly do processador desejado, usando comandos genéricos, não precisando entender a fundo o restante do compilador, porém é desejável para uma geração de código mais otimizada.

Após portar o compilador deve-se implementar a Biblioteca System que contém os módulos base para uso dos programas, com essas duas etapas feitas, a implementação está concluída.

## Exemplo de como criar seu próprio Saida[CPU].cs

Pode e se recomenda se basear na implementação principal para processador 8086 (Saida8086.cs), pois tem várias dicas de como implementar de forma fácil e rápida.

**Exemplo do código do Saida8086.cs para um suposto Saida386.cs e Saida68k.cs:**

Trecho do Saida8086.cs:
```csharp
    public override void EmiteEntraNaRotina()
    {
        EmiteL("push bp");
        EmiteL("mov bp, sp");
    }

    public override void EmiteSaiDaRotina()
    {
        EmiteL("mov sp, bp");
        EmiteL("pop bp");
    }
```

Trecho equivalente em para **386**:
```csharp
    public override void EmiteEntraNaRotina()
    {
        EmiteL("push ebp");
        EmiteL("mov ebp, esp");
    }

    public override void EmiteSaiDaRotina()
    {
        EmiteL("mov esp, ebp");
        EmiteL("pop ebp");
    }
```

Trecho equivalente em para **68000** (Inspirado no tutorial do [LET'S BUILD A COMPILER! por Jack W. Crenshaw, Ph.D.](https://compilers.iecc.com/crenshaw/tutor13.txt)):
```csharp
    public override void EmiteEntraNaRotina()
    {
        EmiteL("link a6, #0");
    }

    public override void EmiteSaiDaRotina()
    {
        EmiteL("unlk a6");
    }
```

# Biblioteca System

Para simplificar a utilização da linguagem, os principais módulos são incluídos na biblioteca System.

Sendo o mais importante o módulo **OS**, que é responsável pela inicialização do executável (Na função OS.Start) e chamada da função Program.Main a partir desta.

## Rotina Especial OS.Start

Esta rotina é tratada diferentemente das demais, ela é ligada ao Módulo OS porém é compilada a parte, sendo adicionada no início do executável, sem o envólucro padrão das rotinas que permitem argumentos, sendo normalmente escrita em assembly usando o comando Asm.

**Exemplo de OS.Start cru para Sistema Operacional DOS**

```vb
Module OS
    Sub Start
        ' Inicializa o compilador
        asm "cpu 8086"
        asm "bits 16"
        asm "org 0x100"
        ' Declara ponteiro para os argumentos
        dim args as ptrbytearray
        ' Define ponteiro
        asm "mov ax, cs"
        asm "mov [bp-2], ax"
        asm "mov word [bp-4], 0x80"
        ' Adiciona um zero ao final da variavel para ser ASCIZ
        asm "mov al, [0x80]"
        asm "xor ah, ah"
        asm "mov si, ax"
        asm "add si, 0x80"
        asm "mov byte [si+1], 0"
        ' Chama o Main
        Program.Main args
        ' Encerra programa quando retornar do main
        asm "int 0x20"
    End
End
```
Código gerado:

```nasm
cpu 8086
bits 16
org 0x100
push cs
call _Program_Main
int 0x20
```