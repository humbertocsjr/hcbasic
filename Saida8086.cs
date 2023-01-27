class Saida8086 : Saida
{
    public long Contador { get; set; } = 0;
    public string Modulo { get; set; } = "";
    public string Rotina { get; set; } = "";

    public bool PonteiroDefinido {get;set;} = false;
    public bool PonteiroLocal {get;set;} = false;
    public int PonteiroLocalPosicao{get;set;} = 0;
    public string PonteiroGlobalNome{get;set;} = "";



    public Saida8086(string endereco) : base(endereco)
    {
    }

    public override void EmiteComentario(string comentario)
    {
        EmiteL($"; {comentario}");
    }

    public override void EmiteModulo(string nome, string arquivo)
    {
        Modulo = nome;
        EmiteComentario($"MODULO: {nome}");
        EmiteL($"_{nome}:");
        EmiteL($"db {System.Text.Encoding.UTF8.GetByteCount(Path.GetFileName(arquivo))}");
        EmiteBinario(System.Text.Encoding.UTF8.GetBytes(Path.GetFileName(arquivo)));
        EmiteL("db 0");
    }

    public override void EmiteModuloFim(string nome)
    {
        Modulo = "";
        EmiteComentario($"MODULO FIM: {nome}");
    }

    public override void EmiteRotina(string nome)
    {
        EmiteL($"_{Modulo}_{nome}:");
        PonteiroDefinido = false;
    }

    public override void EmiteRotinaFim(string nome)
    {
        PonteiroDefinido = false;
        EmiteL($"FIM_{Modulo}_{nome}:");
        EmiteL("retf");
    }

    public override void EmiteInterrupcao(string nome)
    {
        EmiteL($"_{Modulo}_{nome}:");
        PonteiroDefinido = false;
        EmiteL("push di");
        EmiteL("push es");
        EmiteL("push si");
        EmiteL("push ds");
        EmiteL("push dx");
        EmiteL("push cx");
        EmiteL("push bx");
        EmiteL("push ax");
        EmiteL("push bp");
        EmiteL("mov ax, sp");
        EmiteL("push ax");
        EmiteL("push ss");
        // DS = SS
        EmiteL("push ss");
        EmiteL("pop ds");
    }

    public override void EmiteInterrupcaoFim(string nome)
    {
        PonteiroDefinido = false;
        EmiteL("pop ax");
        EmiteL("pop bx");
        EmiteL("mov ss, ax");
        EmiteL("mov sp, bx");
        EmiteL("pop bp");
        EmiteL("pop ax");
        EmiteL("pop bx");
        EmiteL("pop cx");
        EmiteL("pop dx");
        EmiteL("pop ds");
        EmiteL("pop si");
        EmiteL("pop es");
        EmiteL("pop di");
        EmiteL($"FIM_{Modulo}_{nome}:");
        EmiteL("iret");
    }

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

    public override string GeraRotulo()
    {
        return $"ROTULO{Contador++}";
    }

    public override void EmitePulaPara(string rotulo)
    {
        EmiteL($"jmp {rotulo}");
    }

    public override void EmiteRotulo(string rotulo)
    {
        EmiteL($"{rotulo}:");
    }

    public override void EmiteGravaNumeroNaVariavelLocal(int posicao, decimal valor)
    {
        EmiteL($"mov word [bp+{posicao}], {valor}");
    }

    public override void EmiteGravaNumeroEmAcumulador(decimal valor)
    {
        if(valor == 0)
        {
            EmiteL($"xor ax, ax");
        }
        else
        {
            EmiteL($"mov ax, {valor}");
        }
    }

    public override void EmiteCopiaAcumuladorParaVariavelLocal(int posicao)
    {
        EmiteL($"mov [bp+{posicao}], ax");
    }
    public override int TamanhoPonteiro => 4;
    public override int CalculaTamanho(TipoVariavel tipo)
    {
        switch(tipo)
        {
            case TipoVariavel.Int8: return 2;
            case TipoVariavel.UInt8: return 2;
            case TipoVariavel.Int16: return 2;
            case TipoVariavel.UInt16: return 2;
            case TipoVariavel.PtrByteArray: return 4;
            case TipoVariavel.PtrWordArray: return 4;
            case TipoVariavel.Structure: return 4;
            case TipoVariavel.Func: return 4;
            case TipoVariavel.Action: return 4;
            default: throw new Exception("Tipo não suportado por essa arquitetura");
        }
    }
    public override int CalculaTamanhoReal(TipoVariavel tipo)
    {
        switch(tipo)
        {
            case TipoVariavel.Int8: return 1;
            case TipoVariavel.UInt8: return 1;
            case TipoVariavel.Int16: return 2;
            case TipoVariavel.UInt16: return 2;
            case TipoVariavel.PtrByteArray: return 4;
            case TipoVariavel.PtrWordArray: return 4;
            case TipoVariavel.Structure: return 4;
            case TipoVariavel.Func: return 4;
            case TipoVariavel.Action: return 4;
            default: throw new Exception("Tipo não suportado por essa arquitetura");
        }
    }
    public override void EmiteAdicionaAuxNoAcumulador()
    {
        EmiteL("add ax, bx");
    }
    public override void EmiteAdicionaNoPtrPilha(int qtd)
    {
        EmiteL($"add sp, {qtd}");
    }
    public override void EmiteChamaRotina(string modulo, string rotina)
    {
        PonteiroDefinido = false;
        EmiteL($"push cs");
        EmiteL($"call _{modulo}_{rotina}");
    }
    public override void EmiteCopiaAcumuladorParaAuxiliar()
    {
        EmiteL($"mov bx, ax");
    }
    public override void EmiteCopiaAcumuladorParaContador()
    {
        EmiteL($"mov cx, ax");
    }
    public override void EmiteDesempilhaAcumulador()
    {
        EmiteL($"pop ax");
    }
    public override void EmiteDivideSemSinalAuxNoAcumulador()
    {
        EmiteL($"xor dx, dx");
        EmiteL($"div bx");
    }
    public override void EmiteDivideSinalAuxNoAcumulador()
    {
        EmiteL($"xor dx, dx");
        EmiteL($"idiv bx");
    }
    public override void EmiteEmpilhaAcumulador()
    {
        EmiteL($"push ax");
    }
    public override void EmiteGerarEspaco(int bytes)
    {
        EmiteL($"times {bytes} db 0");
    }
    public override void EmiteModSemSinalAuxNoAcumulador()
    {
        EmiteL($"xor dx, dx");
        EmiteL($"div bx");
        EmiteL($"mov ax, dx");
    }
    public override void EmiteModSinalAuxNoAcumulador()
    {
        EmiteL($"xor dx, dx");
        EmiteL($"idiv bx");
        EmiteL($"mov ax, dx");
    }
    public override void EmiteMultiplicaSemSinalAuxNoAcumulador()
    {
        EmiteL($"mul bx");
    }
    public override void EmiteMultiplicaSinalAuxNoAcumulador()
    {
        EmiteL($"imul bx");
    }
    public override void EmiteRolContadorNoAcumulador()
    {
        EmiteL($"rol ax, cl");
    }
    public override void EmiteRorContadorNoAcumulador()
    {
        EmiteL($"ror ax, cl");
    }
    public override void EmiteShlContadorNoAcumulador()
    {
        EmiteL($"shl ax, cl");
    }
    public override void EmiteShrContadorNoAcumulador()
    {
        EmiteL($"shr ax, cl");
    }
    public override void EmiteSubtraiAuxNoAcumulador()
    {
        EmiteL($"sub ax, bx");
    }
    public override void EmiteSubtraiDoPtrPilha(int qtd)
    {
        EmiteL($"sub sp, {qtd}");
    }
    public override void EmiteComparaAcumuladorComZero()
    {
        EmiteL($"cmp ax, 0");
    }
    public override void EmitePulaSeIgual(string rotulo)
    {
        EmiteL($"je {rotulo}");
    }
    public override void EmitePulaSeDiferente(string rotulo)
    {
        EmiteL($"jne {rotulo}");
    }
    public override void EmiteConverteAcumuladorEmByte()
    {
        EmiteL($"xor ah, ah");
    }
    public override void EmiteDefinePonteiroRemotoParaRotuloDoCodigo(string rotulo)
    {
        EmiteL($"push cs");
        EmiteL($"pop es");
        EmiteL($"mov di, {rotulo}");
        PonteiroDefinido = true;
        PonteiroLocal = false;
        PonteiroGlobalNome = rotulo;
    }
    public override void EmiteBinario(byte[] dados)
    {
        if(dados.Any())
            EmiteL($"db {String.Join(',', dados)}");
    }
    public override void EmiteEmpilhaPonteiroRemoto()
    {
        EmiteL($"push es");
        EmiteL($"push di");
    }

    public override void EmiteGravaNumeroNoSegDaVariavelLocal(int posicao, decimal valor)
    {
        EmiteL($"mov word [bp+{posicao}+2], {valor}");
    }
    public override void EmiteCopiaPonteiroRemotoParaVariavelLocal(int posicao)
    {
        EmiteL($"push es");
        EmiteL($"pop word [bp+{posicao}+2]");
        EmiteL($"mov [bp+{posicao}], di");
        PonteiroDefinido = true;
        PonteiroLocal = true;
        PonteiroLocalPosicao = posicao;
    }
    public override void EmiteGravaNumeroNoPonteiroRemoto(decimal valor)
    {
        EmiteL($"mov di, {valor}");
        PonteiroDefinido = false; // Não rastreavel
    }
    public override void EmiteGravaNumeroNoSegDoPonteiroRemoto(decimal valor)
    {
        EmiteL($"push ax");
        EmiteL($"mov ax, {valor}");
        EmiteL($"mov es, ax");
        EmiteL($"pop ax");
        PonteiroDefinido = false; // Não é possível rastrear
    }
    public override void EmiteCopiaAcumuladorParaSegDaVariavelLocal(int posicao)
    {
        EmiteL($"mov word [bp+{posicao}+2], ax");
    }
    public override void EmiteCopiaAcumuladorParaByteArrayDaVariavelLocal(int posicao, int desvio)
    {
        if(!(PonteiroDefinido & PonteiroLocal & PonteiroLocalPosicao == posicao))
        {
            PonteiroDefinido = true;
            PonteiroLocal = true;
            PonteiroLocalPosicao = posicao;
            EmiteL($"push word [bp+{posicao}+2]");
            EmiteL($"pop es");
            EmiteL($"mov di, [bp+{posicao}]");
        }
        EmiteL($"es mov [di+{desvio}], al");
    }
    public override void EmiteCopiaAcumuladorParaWordArrayDaVariavelLocal(int posicao, int desvio)
    {
        if(!(PonteiroDefinido & PonteiroLocal & PonteiroLocalPosicao == posicao))
        {
            PonteiroDefinido = true;
            PonteiroLocal = true;
            PonteiroLocalPosicao = posicao;
            EmiteL($"push word [bp+{posicao}+2]");
            EmiteL($"pop es");
            EmiteL($"mov di, [bp+{posicao}]");
        }
        EmiteL($"es mov [di+{desvio}], ax");
    }
    public override void EmiteGravaNumeroNoByteArrayDaVariavelLocal(int posicao, decimal valor, int desvio)
    {
        if(!(PonteiroDefinido & PonteiroLocal & PonteiroLocalPosicao == posicao))
        {
            PonteiroDefinido = true;
            PonteiroLocal = true;
            PonteiroLocalPosicao = posicao;
            EmiteL($"push word [bp+{posicao}+2]");
            EmiteL($"pop es");
            EmiteL($"mov di, [bp+{posicao}]");
        }
        EmiteL($"es mov byte [di+{desvio}], {valor}");
    }
    public override void EmiteGravaNumeroNoWordArrayDaVariavelLocal(int posicao, decimal valor, int desvio)
    {
        if(!(PonteiroDefinido & PonteiroLocal & PonteiroLocalPosicao == posicao))
        {
            PonteiroDefinido = true;
            PonteiroLocal = true;
            PonteiroLocalPosicao = posicao;
            EmiteL($"push word [bp+{posicao}+2]");
            EmiteL($"pop es");
            EmiteL($"mov di, [bp+{posicao}]");
        }
        EmiteL($"es mov word [di+{desvio}], {valor}");
    }
    public override void EmiteCopiaVariavelLocalParaAcumulador(int posicao)
    {
        EmiteL($"mov ax, [bp+{posicao}]");
    }
    public override void EmiteCopiaByteArrayDaVariavelLocalParaAcumulador(int posicao, int desvio)
    {
        if(!(PonteiroDefinido & PonteiroLocal & PonteiroLocalPosicao == posicao))
        {
            PonteiroDefinido = true;
            PonteiroLocal = true;
            PonteiroLocalPosicao = posicao;
            EmiteL($"push word [bp+{posicao}+2]");
            EmiteL($"pop es");
            EmiteL($"mov di, [bp+{posicao}]");
        }
        EmiteL($"xor ax, ax");
        EmiteL($"es mov al, [di+{desvio}]");
    }
    public override void EmiteCopiaSegDaVariavelLocalParaAcumulador(int posicao)
    {
        EmiteL($"mov ax, [bp+{posicao}+2]");
    }
    public override void EmiteCopiaWordArrayDaVariavelLocalParaAcumulador(int posicao, int desvio)
    {
        if(!(PonteiroDefinido & PonteiroLocal & PonteiroLocalPosicao == posicao))
        {
            PonteiroDefinido = true;
            PonteiroLocal = true;
            PonteiroLocalPosicao = posicao;
            EmiteL($"push word [bp+{posicao}+2]");
            EmiteL($"pop es");
            EmiteL($"mov di, [bp+{posicao}]");
        }
        EmiteL($"es mov ax, [di+{desvio}]");
    }
    public override void EmiteDesempilhaAuxiliar()
    {
        EmiteL($"pop bx");
    }
    public override void EmiteIncrementaSegDaVariavelLocal(int posicao)
    {
        EmiteL($"inc word [bp+{posicao}+2]");
        PonteiroDefinido = false;
    }
    public override void EmiteIncrementaVariavelLocal(int posicao)
    {
        EmiteL($"inc word [bp+{posicao}]");
        if(PonteiroDefinido & PonteiroLocal & PonteiroLocalPosicao == posicao)
        {
            EmiteL("inc di");
        }
    }
    public override void EmiteDecrementaByteArrayNaVariavelLocal(int posicao, int desvio)
    {
        if(!(PonteiroDefinido & PonteiroLocal & PonteiroLocalPosicao == posicao))
        {
            PonteiroDefinido = true;
            PonteiroLocal = true;
            PonteiroLocalPosicao = posicao;
            EmiteL($"push word [bp+{posicao}+2]");
            EmiteL($"pop es");
            EmiteL($"mov di, [bp+{posicao}]");
        }
        EmiteL($"es dec byte [di+{desvio}]");
    }
    public override void EmiteDecrementaSegDaVariavelLocal(int posicao)
    {
        EmiteL($"dec word [bp+{posicao}+2]");
        PonteiroDefinido = false;
    }
    public override void EmiteDecrementaVariavelLocal(int posicao)
    {
        EmiteL($"dec word [bp+{posicao}]");
        if(PonteiroDefinido & PonteiroLocal & PonteiroLocalPosicao == posicao)
        {
            EmiteL("dec di");
        }
    }
    public override void EmiteDecrementaWordArrayNaVariavelLocal(int posicao, int desvio)
    {
        if(!(PonteiroDefinido & PonteiroLocal & PonteiroLocalPosicao == posicao))
        {
            PonteiroDefinido = true;
            PonteiroLocal = true;
            PonteiroLocalPosicao = posicao;
            EmiteL($"push word [bp+{posicao}+2]");
            EmiteL($"pop es");
            EmiteL($"mov di, [bp+{posicao}]");
        }
        EmiteL($"es dec word [di+{desvio}]");
    }
    public override void EmiteIncrementaByteArrayNaVariavelLocal(int posicao, int desvio)
    {
        if(!(PonteiroDefinido & PonteiroLocal & PonteiroLocalPosicao == posicao))
        {
            PonteiroDefinido = true;
            PonteiroLocal = true;
            PonteiroLocalPosicao = posicao;
            EmiteL($"push word [bp+{posicao}+2]");
            EmiteL($"pop es");
            EmiteL($"mov di, [bp+{posicao}]");
        }
        EmiteL($"es inc byte [di+{desvio}]");
    }
    public override void EmiteIncrementaWordArrayNaVariavelLocal(int posicao, int desvio)
    {
        if(!(PonteiroDefinido & PonteiroLocal & PonteiroLocalPosicao == posicao))
        {
            PonteiroDefinido = true;
            PonteiroLocal = true;
            PonteiroLocalPosicao = posicao;
            EmiteL($"push word [bp+{posicao}+2]");
            EmiteL($"pop es");
            EmiteL($"mov di, [bp+{posicao}]");
        }
        EmiteL($"es inc word [di+{desvio}]");
    }
    public override void EmiteComparaAcumuladorComAuxiliar()
    {
        EmiteL($"cmp ax, bx");
    }
    public override void EmitePulaSeMaiorOuIgual(string rotulo, bool sem_sinal)
    {
        EmiteL((sem_sinal ? "jae " : "jge ") + rotulo);
    }
    public override void EmitePulaSeMaiorQue(string rotulo, bool sem_sinal)
    {
        EmiteL((sem_sinal ? "ja " : "jg ") + rotulo);
    }
    public override void EmitePulaSeMenorOuIgual(string rotulo, bool sem_sinal)
    {
        EmiteL((sem_sinal ? "jbe " : "jle ") + rotulo);
    }
    public override void EmitePulaSeMenorQue(string rotulo, bool sem_sinal)
    {
        EmiteL((sem_sinal ? "jb " : "jl ") + rotulo);
    }
    public override void EmiteGravaRotuloEmAcumulador(string rotulo)
    {
        EmiteL($"mov ax, {rotulo}");
    }
    public override void EmiteCopiaSegCodigoParaAcumulador()
    {
        EmiteL($"mov ax, cs");
    }
    public override void EmiteAplicaAndEntreAcumuladorEAuxiliar()
    {
        EmiteL($"and ax, bx");
    }
    public override void EmiteAplicaOrEntreAcumuladorEAuxiliar()
    {
        EmiteL($"or ax, bx");
    }
    public override void EmiteAplicaXorEntreAcumuladorEAuxiliar()
    {
        EmiteL($"xor ax, bx");
    }
    public override void EmiteCopiaAcumuladorParaByteArrayDaVariavelGlobal(string rotulo, int desvio)
    {
        if(!(PonteiroDefinido & !PonteiroLocal & PonteiroGlobalNome == rotulo))
        {
            PonteiroDefinido = true;
            PonteiroLocal = false;
            PonteiroGlobalNome = rotulo;
            EmiteL($"cs push word [{rotulo}+2]");
            EmiteL($"pop es");
            EmiteL($"cs mov di, [{rotulo}]");
        }
        EmiteL($"es mov [di+{desvio}], al");
    }
    public override void EmiteCopiaAcumuladorParaSegDaVariavelGlobal(string rotulo)
    {
        EmiteL($"cs mov [{rotulo}+2], ax");
        PonteiroDefinido = false;
    }
    public override void EmiteCopiaAcumuladorParaVariavelGlobal(string rotulo)
    {
        EmiteL($"cs mov [{rotulo}], ax");
        PonteiroDefinido = false;
    }
    public override void EmiteCopiaAcumuladorParaWordArrayDaVariavelGlobal(string rotulo, int desvio)
    {
        if(!(PonteiroDefinido & !PonteiroLocal & PonteiroGlobalNome == rotulo))
        {
            PonteiroDefinido = true;
            PonteiroLocal = false;
            PonteiroGlobalNome = rotulo;
            EmiteL($"cs push word [{rotulo}+2]");
            EmiteL($"pop es");
            EmiteL($"cs mov di, [{rotulo}]");
        }
        EmiteL($"es mov [di+{desvio}], ax");
    }
    public override void EmiteDecrementaVariavelGlobal(string rotulo)
    {
        EmiteL($"cs dec word [{rotulo}]");
        if((PonteiroDefinido & !PonteiroLocal & PonteiroGlobalNome == rotulo))
        {
            EmiteL("dec di");
        }
    }
    public override void EmiteDecrementaByteArrayNaVariavelGlobal(string rotulo, int desvio)
    {
        if(!(PonteiroDefinido & !PonteiroLocal & PonteiroGlobalNome == rotulo))
        {
            PonteiroDefinido = true;
            PonteiroLocal = false;
            PonteiroGlobalNome = rotulo;
            EmiteL($"cs push word [{rotulo}+2]");
            EmiteL($"pop es");
            EmiteL($"cs mov di, [{rotulo}]");
        }
        EmiteL($"es dec byte [di+{desvio}]");
    }
    public override void EmiteDecrementaSegDaVariavelGlobal(string rotulo)
    {
        EmiteL($"cs dec word [{rotulo}+2]");
    }
    public override void EmiteDecrementaWordArrayNaVariavelGlobal(string rotulo, int desvio)
    {
        if(!(PonteiroDefinido & !PonteiroLocal & PonteiroGlobalNome == rotulo))
        {
            PonteiroDefinido = true;
            PonteiroLocal = false;
            PonteiroGlobalNome = rotulo;
            EmiteL($"cs push word [{rotulo}+2]");
            EmiteL($"pop es");
            EmiteL($"cs mov di, [{rotulo}]");
        }
        EmiteL($"es dec word [di+{desvio}]");
    }
    public override void EmiteGravaNumeroNaVariavelGlobal(string rotulo, decimal valor)
    {
        EmiteL($"cs mov word [{rotulo}], {valor}");
        PonteiroDefinido = false;
    }
    public override void EmiteGravaNumeroNoByteArrayDaVariavelGlobal(string rotulo, decimal valor, int desvio)
    {
        if(!(PonteiroDefinido & !PonteiroLocal & PonteiroGlobalNome == rotulo))
        {
            PonteiroDefinido = true;
            PonteiroLocal = false;
            PonteiroGlobalNome = rotulo;
            EmiteL($"cs push word [{rotulo}+2]");
            EmiteL($"pop es");
            EmiteL($"cs mov di, [{rotulo}]");
        }
        EmiteL($"es mov byte [di+{desvio}], {valor}");
    }
    public override void EmiteIncrementaVariavelGlobal(string rotulo)
    {
        EmiteL($"cs inc word [{rotulo}]");
        if(PonteiroDefinido & !PonteiroLocal & PonteiroGlobalNome == rotulo)
        {
            EmiteL("inc di");
        }
    }
    public override void EmiteGravaNumeroNoSegDaVariavelGlobal(string rotulo, decimal valor)
    {
        EmiteL($"cs mov word [{rotulo}+2], {valor}");
        PonteiroDefinido = false;
    }
    public override void EmiteIncrementaSegDaVariavelGlobal(string rotulo)
    {
        EmiteL($"cs inc word [{rotulo}+2]");
        PonteiroDefinido = false;
    }
    public override void EmiteIncrementaByteArrayNaVariavelGlobal(string rotulo, int desvio)
    {
        if(!(PonteiroDefinido & !PonteiroLocal & PonteiroGlobalNome == rotulo))
        {
            PonteiroDefinido = true;
            PonteiroLocal = false;
            PonteiroGlobalNome = rotulo;
            EmiteL($"cs push word [{rotulo}+2]");
            EmiteL($"pop es");
            EmiteL($"cs mov di, [{rotulo}]");
        }
        EmiteL($"es inc byte [di+{desvio}]");
    }
    public override void EmiteGravaNumeroNoWordArrayDaVariavelGlobal(string rotulo, decimal valor, int desvio)
    {
        if(!(PonteiroDefinido & !PonteiroLocal & PonteiroGlobalNome == rotulo))
        {
            PonteiroDefinido = true;
            PonteiroLocal = false;
            PonteiroGlobalNome = rotulo;
            EmiteL($"cs push word [{rotulo}+2]");
            EmiteL($"pop es");
            EmiteL($"cs mov di, [{rotulo}]");
        }
        EmiteL($"es mov word [di+{desvio}], {valor}");
    }
    public override void EmiteIncrementaWordArrayNaVariavelGlobal(string rotulo, int desvio)
    {
        if(!(PonteiroDefinido & !PonteiroLocal & PonteiroGlobalNome == rotulo))
        {
            PonteiroDefinido = true;
            PonteiroLocal = false;
            PonteiroGlobalNome = rotulo;
            EmiteL($"cs push word [{rotulo}+2]");
            EmiteL($"pop es");
            EmiteL($"cs mov di, [{rotulo}]");
        }
        EmiteL($"es inc word [di+{desvio}]");
    }
    public override void EmiteCopiaByteArrayDaVariavelGlobalParaAcumulador(string rotulo, int desvio)
    {
        if(!(PonteiroDefinido & !PonteiroLocal & PonteiroGlobalNome == rotulo))
        {
            PonteiroDefinido = true;
            PonteiroLocal = false;
            PonteiroGlobalNome = rotulo;
            EmiteL($"cs push word [{rotulo}+2]");
            EmiteL($"pop es");
            EmiteL($"cs mov di, [{rotulo}]");
        }
        EmiteL($"xor ax, ax");
        EmiteL($"es mov al, [di+{desvio}]");
    }
    public override void EmiteCopiaSegDaVariavelGlobalParaAcumulador(string rotulo)
    {
        EmiteL($"cs mov ax, [{rotulo}+2]");
    }
    public override void EmiteCopiaVariavelGlobalParaAcumulador(string rotulo)
    {
        EmiteL($"cs mov ax, [{rotulo}]");
    }
    public override void EmiteCopiaWordArrayDaVariavelGlobalParaAcumulador(string rotulo, int desvio)
    {
        if(!(PonteiroDefinido & !PonteiroLocal & PonteiroGlobalNome == rotulo))
        {
            PonteiroDefinido = true;
            PonteiroLocal = false;
            PonteiroGlobalNome = rotulo;
            EmiteL($"cs push word [{rotulo}+2]");
            EmiteL($"pop es");
            EmiteL($"cs mov di, [{rotulo}]");
        }
        EmiteL($"es mov ax, [di+{desvio}]");
    }
    public override void EmiteCopiaByteArrayDaVariavelGlobalComoPonteiroRemoto(string rotulo)
    {
        if(!(PonteiroDefinido & !PonteiroLocal & PonteiroGlobalNome == rotulo))
        {
            PonteiroDefinido = true;
            PonteiroLocal = false;
            PonteiroGlobalNome = rotulo;
            EmiteL($"cs push word [{rotulo}+2]");
            EmiteL($"pop es");
            EmiteL($"cs mov di, [{rotulo}]");
        }
    }
    public override void EmiteCopiaByteArrayDaVariavelLocalParaPonteiroRemoto(int posicao)
    {
        if(!(PonteiroDefinido & PonteiroLocal & PonteiroLocalPosicao == posicao))
        {
            PonteiroDefinido = true;
            PonteiroLocal = true;
            PonteiroLocalPosicao = posicao;
            EmiteL($"push word [bp+{posicao}+2]");
            EmiteL($"pop es");
            EmiteL($"mov di, [bp+{posicao}]");
        }
    }
    public override void EmiteCopiaWordArrayDaVariavelGlobalParaPonteiroRemoto(string rotulo)
    {
        if(!(PonteiroDefinido & !PonteiroLocal & PonteiroGlobalNome == rotulo))
        {
            PonteiroDefinido = true;
            PonteiroLocal = false;
            PonteiroGlobalNome = rotulo;
            EmiteL($"cs push word [{rotulo}+2]");
            EmiteL($"pop es");
            EmiteL($"cs mov di, [{rotulo}]");
        }
    }
    public override void EmiteCopiaWordArrayDaVariavelLocalParaPonteiroRemoto(int posicao)
    {
        if(!(PonteiroDefinido & PonteiroLocal & PonteiroLocalPosicao == posicao))
        {
            PonteiroDefinido = true;
            PonteiroLocal = true;
            PonteiroLocalPosicao = posicao;
            EmiteL($"push word [bp+{posicao}+2]");
            EmiteL($"pop es");
            EmiteL($"mov di, [bp+{posicao}]");
        }
    }
    public override void EmiteCopiaPonteiroRemotoParaVariavelGlobal(string rotulo)
    {
        EmiteL($"push es");
        EmiteL($"cs pop word [{rotulo}+2]");
        EmiteL($"cs mov [{rotulo}], di");
        PonteiroDefinido = true;
        PonteiroLocal = false;
        PonteiroGlobalNome = rotulo;
    }

    public override void EmiteCopiaPonteiroPilhaParaPonteiroRemoto()
    {
        EmiteL($"push ss");
        EmiteL($"pop es");
        EmiteL($"mov di, sp");
        PonteiroDefinido = false;
    }

    public override void MarcaFimDeRepeticao()
    {
        PonteiroDefinido = false;
    }
    public override void MarcaInicioDeRepeticao()
    {
        PonteiroDefinido = false;
    }

    public override void EmiteChamaRotinaEmVariavelGlobal(string rotulo)
    {
        EmiteCopiaWordArrayDaVariavelGlobalParaPonteiroRemoto(rotulo);
        EmiteL($"cs call far [{rotulo}]");
    }
    public override void EmiteChamaRotinaEmVariavelLocal(int posicao)
    {
        EmiteCopiaWordArrayDaVariavelLocalParaPonteiroRemoto(posicao);
        EmiteL($"call far [bp+{posicao}]");
    }

    public override void EmiteCopiaPonteiroRemotoParaByteArrayNaVariavelGlobal(string rotulo, int desvio)
    {
        EmiteL("push es");
        EmiteL("push di");
        EmiteCopiaWordArrayDaVariavelGlobalParaPonteiroRemoto(rotulo);
        EmiteL($"es pop word [di+{desvio}]");
        EmiteL($"es pop word [di+{desvio}+2]");
    }
    public override void EmiteCopiaPonteiroRemotoParaByteArrayNaVariavelLocal(int posicao, int desvio)
    {
        EmiteL("push es");
        EmiteL("push di");
        EmiteCopiaWordArrayDaVariavelLocalParaPonteiroRemoto(posicao);
        EmiteL($"es pop word [di+{desvio}]");
        EmiteL($"es pop word [di+{desvio}+2]");
    }
    public override void EmiteCopiaPonteiroRemotoParaWordArrayNaVariavelGlobal(string rotulo, int desvio)
    {
        EmiteL("push es");
        EmiteL("push di");
        EmiteCopiaWordArrayDaVariavelGlobalParaPonteiroRemoto(rotulo);
        EmiteL($"es pop word [di+{desvio}]");
        EmiteL($"es pop word [di+{desvio}+2]");
    }
    public override void EmiteCopiaPonteiroRemotoParaWordArrayNaVariavelLocal(int posicao, int desvio)
    {
        EmiteL("push es");
        EmiteL("push di");
        EmiteCopiaWordArrayDaVariavelLocalParaPonteiroRemoto(posicao);
        EmiteL($"es pop word [di+{desvio}]");
        EmiteL($"es pop word [di+{desvio}+2]");
    }
    public override void EmiteChamaRotinaEmPonteiroNaVariavelGlobal(string rotulo, int desvio)
    {
        EmiteCopiaWordArrayDaVariavelGlobalParaPonteiroRemoto(rotulo);
        EmiteL($"es call far [di+{desvio}]");
    }
    public override void EmiteChamaRotinaEmPonteiroNaVariavelLocal(int posicao, int desvio)
    {
        EmiteCopiaWordArrayDaVariavelLocalParaPonteiroRemoto(posicao);
        EmiteL($"es call far [di+{desvio}]");
    }
    public override void EmiteItemRealocacao(Realocacao realoc)
    {
        EmiteL($"dw {(ushort)realoc.Tipo}");
        EmiteL($"dw {realoc.Rotulo}");
        EmiteL($"dw {realoc.Desvio}");
        EmiteL($"dw {realoc.ValorSoma}");
    }
    public override void EmiteCopiaPonteiroBaseParaAcumulador()
    {
        EmiteL($"mov ax, bp");
    }
    public override void EmiteCopiaPonteiroPilhaParaAcumulador()
    {
        EmiteL($"mov ax, sp");
    }
    public override void EmiteDesempilhaVariavelGlobal(string rotulo)
    {
        EmiteL($"cs pop word [{rotulo}]");
    }
    public override void EmiteEmpilhaVariavelGlobal(string rotulo)
    {
        EmiteL($"cs push word [{rotulo}]");
    }
    public override void EmiteCopiaAcumuladorParaPonteiroBase()
    {
        EmiteL($"mov bp, ax");
    }
    public override void EmiteCopiaAcumuladorParaPonteiroPilha()
    {
        EmiteL($"mov sp, ax");
    }
    public override void EmiteGravaNumeroEmAuxiliar(decimal numero)
    {
        EmiteL($"mov bx, {numero}");
    }
    public override void EmitePulaParaLocalEmVariavelGlobal(string rotulo)
    {
        EmiteL($"cs jmp word [{rotulo}]");
    }
    public override void EmiteCopiaAuxiliarParaAcumulador()
    {
        EmiteL($"mov ax, bx");
    }
    public override void EmiteCopiaPonteiroPilhaParaAuxiliar()
    {
        EmiteL($"mov bx, sp");
    }
    public override void EmiteCopiaPonteiroLocalEmVariavelLocalParaPonteiroRemoto(int posicao)
    {
        PonteiroDefinido = false;
        EmiteL($"mov di, [bp+{posicao}]");
        EmiteL("push cs");
        EmiteL("pop es");
    }
    public override void EmiteCopiaVariavelGlobalParaPonteiroBase(string rotulo)
    {
        EmiteL($"cs mov bp, [{rotulo}]");
    }
    public override void EmiteCopiaVariavelGlobalParaPonteiroPilha(string rotulo)
    {
        EmiteL($"cs mov sp, [{rotulo}]");
    }
    public override void EmiteInverteAcumulador()
    {
        EmiteL("not ax");
    }
    public override void EmiteCopiaByteArrayDaVariavelGlobalComoPonteiroRemoto(string rotulo, int desvio)
    {
        EmiteCopiaByteArrayDaVariavelGlobalComoPonteiroRemoto(rotulo);
        PonteiroDefinido = false;
        EmiteL($"es push word [di+{desvio}+2]");
        EmiteL($"es push word [di+{desvio}]");
        EmiteL($"pop di");
        EmiteL($"pop es");
    }
    public override void EmiteCopiaByteArrayDaVariavelLocalParaPonteiroRemoto(int posicao, int desvio)
    {
        EmiteCopiaByteArrayDaVariavelLocalParaPonteiroRemoto(posicao);
        PonteiroDefinido = false;
        EmiteL($"es push word [di+{desvio}+2]");
        EmiteL($"es push word [di+{desvio}]");
        EmiteL($"pop di");
        EmiteL($"pop es");
    }
    public override void EmiteCopiaWordArrayDaVariavelGlobalParaPonteiroRemoto(string rotulo, int desvio)
    {
        EmiteCopiaWordArrayDaVariavelGlobalParaPonteiroRemoto(rotulo);
        PonteiroDefinido = false;
        EmiteL($"es push word [di+{desvio}+2]");
        EmiteL($"es push word [di+{desvio}]");
        EmiteL($"pop di");
        EmiteL($"pop es");
    }
    public override void EmiteCopiaWordArrayDaVariavelLocalParaPonteiroRemoto(int posicao, int desvio)
    {
        EmiteCopiaWordArrayDaVariavelLocalParaPonteiroRemoto(posicao);
        PonteiroDefinido = false;
        EmiteL($"es push word [di+{desvio}+2]");
        EmiteL($"es push word [di+{desvio}]");
        EmiteL($"pop di");
        EmiteL($"pop es");
    }
}