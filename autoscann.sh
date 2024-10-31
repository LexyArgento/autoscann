#!/bin/bash

read -p "
1-actualizar paquetes
2-actualizar sistema
3-escaneo de vulnerabilidades (con nmap)
elije la opcion: " desicion
if [ "$desicion" = "1" ]; then
	apt update
	apt upgrade -y
	apt autoremove -y
	echo "actualizacion de paquetes completa"
elif [ "$desicion" = "2" ]; then
	apt update
	apt full-upgrade -y
	echo "actualizacion de sistema completa"
elif [ "$desicion" = "3" ]; then
	read -p "ingresa la IP: " direccion_IP
	$direccion_IP$(echo "$direccion_IP" | tr -d ' ')
	if [ "$direccion_IP" != "" ]; then
		nmap -A -sC -sV -T4 "$direccion_IP" && nmap --script='vuln' "$direccion_IP"
		echo "escaneo completo"
		read -p "¿quieres abrir metasploit en una nueva terminal? [S/N]: " metasploit_desicion
		if [ $metasploit_desicion == "S" ] || [ $metasploit_desicion == "s" ]; then
			qterminal -e "msfconsole"
		elif [ $metasploit_desicion == "N" ] || [ $metasploit_desicion == "n" ]; then
			echo "anulando inicio..."
		else
			echo "no se reconocio la instruccion"
		fi
	else
		echo "direccion IP no validad."
		exit
	fi
else
	echo "no se reconoce la instruccion"
	exit
fi
