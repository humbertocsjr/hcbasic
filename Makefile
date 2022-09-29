all:
	@fbc -lang qb -x bin/hcb hcb.bas

teste: all
	@bin/hcb teste/teste.bas teste/teste osasm biblio/
	@bin/hcb teste/teste.bas teste/teste nasm biblio/
	@nasm -f bin -o teste/testen.com teste/teste.asm

testedos: all
	@dosbox -C "mount C: ./" -C "mount D: ../FreeBASIC-1.09.0-dos" -C "c:" -C "set PATH=$$PATH$$;d:\\" -C "fbc -arch 386 -lang qb -x bin\hcb.exe hcb.bas" -C "cd teste" -C "make"