all:
	@fbc -lang qb -x bin/hcb hcb.bas

teste: all
	@bin/hcb teste/teste.bas teste/teste osasm
	@bin/hcb teste/teste.bas teste/teste nasm

testedos: teste
	@dosbox -C "mount C: ./" -C "c:" -C "cd teste" -C "make"