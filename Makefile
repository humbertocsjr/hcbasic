
all:
	make fonts
	dotnet publish -c Release -o Distro/Atual

fonts:
	nasm -f bin -o Plataformas/8086/Font.hfn Plataformas/Font.asm


distro: distro-win distro-linux distro-mac

distro-win:
	rm -Rf Distro/Win32
	dotnet publish -c Release -r win7-x86 -o Distro/Win32
	cp -Rf Plataformas Distro/Win32/
	cp -f Distro/Exemplos/* Distro/Win32/
	cd Distro && zip -r ../../HCBasicWin32.zip Win32/
	rm -Rf Distro/Win64
	dotnet publish -c Release -r win7-x64 -o Distro/Win64
	cp -Rf Plataformas Distro/Win64/
	cp -f Distro/Exemplos/* Distro/Win64/
	cd Distro && zip -r ../../HCBasicWin64.zip Win64/
	rm -Rf Distro/WinARM32
	dotnet publish -c Release -r win-arm -o Distro/WinARM32
	cp -Rf Plataformas Distro/WinARM32/
	cp -f Distro/Exemplos/* Distro/WinARM32/
	cd Distro && zip -r ../../HCBasicWinARM32.zip WinARM32/
	rm -Rf Distro/WinARM64
	dotnet publish -c Release -r win-arm64 -o Distro/WinARM64
	cp -Rf Plataformas Distro/WinARM64/
	cp -f Distro/Exemplos/* Distro/WinARM64/
	cd Distro && zip -r ../../HCBasicWinARM64.zip WinARM64/

distro-mac:
	rm -Rf Distro/macOS
	dotnet publish -c Release -r osx.10.12-x64 -o Distro/macOS
	cp -Rf Plataformas Distro/macOS/
	cp -f Distro/Exemplos/* Distro/macOS/
	cd Distro && zip -r ../../HCBasicMacOS.zip macOS/
	rm -Rf Distro/macOS_M1
	dotnet publish -c Release -r osx.11.0-arm64 -o Distro/macOS_M1
	cp -Rf Plataformas Distro/macOS_M1/
	cp -f Distro/Exemplos/* Distro/macOS_M1/
	cd Distro && zip -r ../../HCBasicMacOSM1.zip macOS_M1/

distro-linux:
	rm -Rf Distro/Linux64
	dotnet publish -c Release -r linux-x64 -o Distro/Linux64
	cp -Rf Plataformas Distro/Linux64/
	cp -f Distro/Exemplos/* Distro/Linux64/
	cd Distro && zip -r ../../HCBasicLinux64.zip Linux64/
	rm -Rf Distro/LinuxMUSL64
	dotnet publish -c Release -r linux-musl-x64 -o Distro/LinuxMUSL64
	cp -Rf Plataformas Distro/LinuxMUSL64/
	cp -f Distro/Exemplos/* Distro/LinuxMUSL64/
	cd Distro && zip -r ../../HCBasicLinuxMUSL64.zip LinuxMUSL64/
	rm -Rf Distro/LinuxARM32
	dotnet publish -c Release -r linux-arm -o Distro/LinuxARM32
	cp -Rf Plataformas Distro/LinuxARM32/
	cp -f Distro/Exemplos/* Distro/LinuxARM32/
	cd Distro && zip -r ../../HCBasicLinuxARM32.zip LinuxARM32/
	rm -Rf Distro/LinuxARM64
	dotnet publish -c Release -r linux-arm64 -o Distro/LinuxARM64
	cp -Rf Plataformas Distro/LinuxARM64/
	cp -f Distro/Exemplos/* Distro/LinuxARM64/
	cd Distro && zip -r ../../HCBasicLinuxARM64.zip LinuxARM64/

install:
	install Distro/Atual/* /usr/bin/
	mkdir -p /usr/lib/hcbasic/8086
	install Plataformas/8086/* /usr/lib/hcbasic/8086/
	mkdir -p /usr/lib/hcbasic/8086-dos
	install Plataformas/8086-DOS/* /usr/lib/hcbasic/8086-dos/
	mkdir -p /usr/lib/hcbasic/8086-kernel
	install Plataformas/8086-KERNEL/* /usr/lib/hcbasic/8086-kernel/

teste-hcb:
	make fonts
	Distro/Atual/hcbasic teste.hcb teste.asm Plataformas/8086-DOS / Plataformas/8086/
	nasm -f bin -o teste.com teste.asm
	dosbox -C "mount c: ." -C "c:" -C "teste.com"
	
teste: all
	make teste-hcb

clean:
	-rm -Rf Distro/Atual
	-rm -Rf obj
	-rm -Rf bin
