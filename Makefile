all:
	dotnet publish -c Release -o Distro
install:
	install Distro/* /usr/bin/
teste: all
	Distro/hcbasic teste.hcb teste.asm
	nasm -f bin -o teste.com teste.asm
	dosbox -C "mount c: ." -C "c:" -C "teste.com"
clean:
	-rm -Rf Distro
	-rm -Rf obj
	-rm -Rf bin