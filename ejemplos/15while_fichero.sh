#!/bin/bash

# Script:	15while_fichero.sh
# Autor:
# Fecha:
# Descripción:	Bucle while para recorrer un archivo de texto
#		con redirección de entrada.
#		Escribir un script que lee las líneas del archivo /etc/passwd
#		y visualiza la información de cada usuario del sistema

clear
FICHERO=/etc/passwd
declare -i NUSUARIOS=0
IFS_TEMPORAL=$IFS
IFS=":"
while read USUARIO NOCLAVE IDU IDG NOMBRE DIR_PERSONAL INTERPRETE ; do
	echo "Cuenta: $USUARIO"
	if [ $IDU == "0" ]; then
		echo "Tipo: superusuario"
	elif [ $IDU -lt 100 ]; then
		echo "Tipo: cuenta del sistema"
	elif [ $IDU -lt 1000 ]; then
		echo "Tipo: cuenta de servicio o aplicación"
	elif [ $IDU -lt 32000 ]; then
		echo "Tipo: usuario estándar"
	elif [ $IDU == "65534" ]; then
		echo "Tipo: invitado"
	fi
	echo "UID: $IDU"
	echo "GID: $IDG"
	echo "Nombre completo: $NOMBRE"
	echo "Directorio personal: ${DIR_PERSONAL}"
	echo "Shell: $INTERPRETE"

	let NUSUARIOS++
done < $FICHERO

echo "------------------------------------"
echo "Hay $NUSUARIOS usuarios en el sistema"

IFS=$IFS_TEMPORAL
exit 0
