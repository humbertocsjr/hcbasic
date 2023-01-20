all:
	dotnet publish -c Release -o Distro/Atual

distro: distro-win distro-linux distro-mac

distro-win:
	dotnet publish -c Release -r win7-x86 -o Distro/Win32
	cp -Rf Plataformas Distro/Win32/
	cp -f Distro/Exemplos/* Distro/Win32/
	cd Distro && zip -r ../../HCBasicWin32.zip Win32/
	dotnet publish -c Release -r win7-x64 -o Distro/Win64
	cp -Rf Plataformas Distro/Win64/
	cp -f Distro/Exemplos/* Distro/Win64/
	cd Distro && zip -r ../../HCBasicWin64.zip Win64/
	dotnet publish -c Release -r win-arm -o Distro/WinARM32
	cp -Rf Plataformas Distro/WinARM32/
	cp -f Distro/Exemplos/* Distro/WinARM32/
	cd Distro && zip -r ../../HCBasicWinARM32.zip WinARM32/
	dotnet publish -c Release -r win-arm64 -o Distro/WinARM64
	cp -Rf Plataformas Distro/WinARM64/
	cp -f Distro/Exemplos/* Distro/WinARM64/
	cd Distro && zip -r ../../HCBasicWinARM64.zip WinARM64/

distro-mac:
	dotnet publish -c Release -r osx.10.12-x64 -o Distro/macOS
	cp -Rf Plataformas Distro/macOS/
	cp -f Distro/Exemplos/* Distro/macOS/
	cd Distro && zip -r ../../HCBasicMacOS.zip macOS/
	dotnet publish -c Release -r osx.11.0-arm64 -o Distro/macOS_M1
	cp -Rf Plataformas Distro/macOS_M1/
	cp -f Distro/Exemplos/* Distro/macOS_M1/
	cd Distro && zip -r ../../HCBasicMacOSM1.zip macOS_M1/

distro-linux:
	dotnet publish -c Release -r linux-x64 -o Distro/Linux64
	cp -Rf Plataformas Distro/Linux64/
	cp -f Distro/Exemplos/* Distro/Linux64/
	cd Distro && zip -r ../../HCBasicLinux64.zip Linux64/
	dotnet publish -c Release -r linux-musl-x64 -o Distro/LinuxMUSL64
	cp -Rf Plataformas Distro/LinuxMUSL64/
	cp -f Distro/Exemplos/* Distro/LinuxMUSL64/
	cd Distro && zip -r ../../HCBasicLinuxMUSL64.zip LinuxMUSL64/
	dotnet publish -c Release -r linux-arm -o Distro/LinuxARM32
	cp -Rf Plataformas Distro/LinuxARM32/
	cp -f Distro/Exemplos/* Distro/LinuxARM32/
	cd Distro && zip -r ../../HCBasicLinuxARM32.zip LinuxARM32/
	dotnet publish -c Release -r linux-arm64 -o Distro/LinuxARM64
	cp -Rf Plataformas Distro/LinuxARM64/
	cp -f Distro/Exemplos/* Distro/LinuxARM64/
	cd Distro && zip -r ../../HCBasicLinuxARM64.zip LinuxARM64/

install:
	install Distro/Atual/* /usr/bin/

teste: all
	Distro/Atual/hcbasic teste.hcb teste.asm Plataformas/8086-DOS
	nasm -f bin -o teste.com teste.asm
	dosbox -C "mount c: ." -C "c:" -C "teste.com"
clean:
	-rm -Rf Distro/Atual
	-rm -Rf obj
	-rm -Rf bin