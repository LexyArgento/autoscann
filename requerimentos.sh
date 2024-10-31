#!/bin/bash

#Verificar si Qterminal esta instalado / Check if Qterminal is installed
if dpkg -s qterminal > /dev/null 2>&1; then
	echo "qterminal esta instalado"
else
	echo "qterminal no esta instalado, instalando..."
	sudo apt install -y qterminal
fi

#Verificar si Metasploit-Framework esta instalado / Check if Metasploit-Framework is installed
if dpkg -s metasploit-framework > /dev/null 2>&1; then
	echo "Metasploit esta instalado"
else
	echo "Metasploit no esta instalado, instalando..."
	sudo apt install -y metasploit-framework
fi

#Verificar si Nmap esta instalado / Check if Nmap is installed
if dpkg -s nmap > /dev/null 2>&1; then
	echo "Nmap esta instalado"
else
	echo "Nmap no esta instalado, instalando..."
	sudo apt install -y nmap
fi
