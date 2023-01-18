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
        return $"R{Contador++}";
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
        EmiteL($"mov ax, {valor}");
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
            case TipoVariavel.Int16: return 2;
            case TipoVariavel.UInt16: return 2;
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
    }
    public override void EmiteModSinalAuxNoAcumulador()
    {
        EmiteL($"xor dx, dx");
        EmiteL($"idiv bx");
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
}