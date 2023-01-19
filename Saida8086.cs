class Saida8086 : Saida
{
    public long Contador { get; set; } = 0;
    public string Modulo { get; set; } = "";
    public string Rotina { get; set; } = "";
    public Saida8086(string endereco) : base(endereco)
    {
    }

    public override void EmiteComentario(string comentario)
    {
        EmiteL($"; {comentario}");
    }

    public override void EmiteModulo(string nome)
    {
        Modulo = nome;
        EmiteComentario($"MODULO: {nome}");
    }

    public override void EmiteModuloFim(string nome)
    {
        Modulo = "";
        EmiteComentario($"MODULO FIM: {nome}");
    }

    public override void EmiteRotina(string nome)
    {
        EmiteL($"_{Modulo}_{nome}:");
    }

    public override void EmiteRotinaFim(string nome)
    {
        EmiteL($"FIM_{Modulo}_{nome}:");
        EmiteL("retf");
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
    }
    public override void EmiteBinario(byte[] dados)
    {
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
    public override void EmiteCopiaPonteiroRemotoParaVariavel(int posicao)
    {
        EmiteL($"mov [bp+{posicao}], di");
    }
    public override void EmiteCopiaSegDoPonteiroRemotoParaVariavel(int posicao)
    {
        EmiteL($"push es");
        EmiteL($"pop word [bp+{posicao}+2]");
    }
    public override void EmiteGravaNumeroNoPonteiroRemoto(decimal valor)
    {
        EmiteL($"mov di, {valor}");
    }
    public override void EmiteGravaNumeroNoSegDoPonteiroRemoto(decimal valor)
    {
        EmiteL($"push ax");
        EmiteL($"mov ax, {valor}");
        EmiteL($"mov es, ax");
        EmiteL($"pop ax");
    }
    public override void EmiteCopiaAcumuladorParaSegDaVariavelLocal(int posicao)
    {
        EmiteL($"mov word [bp+{posicao}+2], ax");
    }
    public override void EmiteCopiaAcumuladorParaByteArrayDaVariavelLocal(int posicao)
    {
        EmiteL($"push word [bp+{posicao}+2]");
        EmiteL($"pop es");
        EmiteL($"mov di, [bp+{posicao}]");
        EmiteL($"es mov [di], al");
    }
    public override void EmiteCopiaAcumuladorParaWordArrayDaVariavelLocal(int posicao)
    {
        EmiteL($"push word [bp+{posicao}+2]");
        EmiteL($"pop es");
        EmiteL($"mov di, [bp+{posicao}]");
        EmiteL($"es mov [di], ax");
    }
    public override void EmiteGravaNumeroNoByteArrayDaVariavelLocal(int posicao, decimal valor)
    {
        EmiteL($"mov ax, [bp+{posicao}+2]");
        EmiteL($"mov es, ax");
        EmiteL($"mov di, [bp+{posicao}]");
        EmiteL($"es mov byte [di], {valor}");
    }
    public override void EmiteGravaNumeroNoWordArrayDaVariavelLocal(int posicao, decimal valor)
    {
        EmiteL($"mov ax, [bp+{posicao}+2]");
        EmiteL($"mov es, ax");
        EmiteL($"mov di, [bp+{posicao}]");
        EmiteL($"es mov word [di], {valor}");
    }
    public override void EmiteCopiaVariavelLocalParaAcumulador(int posicao)
    {
        EmiteL($"mov ax, [bp+{posicao}]");
    }
    public override void EmiteCopiaByteArrayDaVariavelLocalParaAcumulador(int posicao)
    {
        EmiteL($"push word [bp+{posicao}+2]");
        EmiteL($"pop es");
        EmiteL($"mov di, [bp+{posicao}]");
        EmiteL($"xor ax, ax");
        EmiteL($"es mov al, [di]");
    }
    public override void EmiteCopiaSegDaVariavelLocalParaAcumulador(int posicao)
    {
        EmiteL($"mov ax, [bp+{posicao}+2]");
    }
    public override void EmiteCopiaWordArrayDaVariavelLocalParaAcumulador(int posicao)
    {
        EmiteL($"push word [bp+{posicao}+2]");
        EmiteL($"pop es");
        EmiteL($"mov di, [bp+{posicao}]");
        EmiteL($"es mov ax, [di]");
    }
    public override void EmiteDesempilhaAuxiliar()
    {
        EmiteL($"pop bx");
    }
    public override void EmiteIncrementaSegDaVariavelLocal(int posicao)
    {
        EmiteL($"inc word [bp+{posicao}+2]");
    }
    public override void EmiteIncrementaVariavelLocal(int posicao)
    {
        EmiteL($"inc word [bp+{posicao}]");
    }
    public override void EmiteDecrementaByteArrayNaVariavelLocal(int posicao)
    {
        EmiteL($"push word [bp+{posicao}+2]");
        EmiteL($"pop es");
        EmiteL($"mov di, [bp+{posicao}]");
        EmiteL($"es dec byte [di]");
    }
    public override void EmiteDecrementaSegDaVariavelLocal(int posicao)
    {
        EmiteL($"dec word [bp+{posicao}+2]");
    }
    public override void EmiteDecrementaVariavelLocal(int posicao)
    {
        EmiteL($"dec word [bp+{posicao}]");
    }
    public override void EmiteDecrementaWordArrayNaVariavelLocal(int posicao)
    {
        EmiteL($"push word [bp+{posicao}+2]");
        EmiteL($"pop es");
        EmiteL($"mov di, [bp+{posicao}]");
        EmiteL($"es dec word [di]");
    }
    public override void EmiteIncrementaByteArrayNaVariavelLocal(int posicao)
    {
        EmiteL($"push word [bp+{posicao}+2]");
        EmiteL($"pop es");
        EmiteL($"mov di, [bp+{posicao}]");
        EmiteL($"es inc byte [di]");
    }
    public override void EmiteIncrementaWordArrayNaVariavelLocal(int posicao)
    {
        EmiteL($"push word [bp+{posicao}+2]");
        EmiteL($"pop es");
        EmiteL($"mov di, [bp+{posicao}]");
        EmiteL($"es inc word [di]");
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
}