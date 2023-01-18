all:
	dotnet restore
	dotnet publish -c Release -o Distro
install:
	install Distro/* /usr/bin/