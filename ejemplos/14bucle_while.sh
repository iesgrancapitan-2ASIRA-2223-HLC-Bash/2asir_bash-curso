#!/bin/bash

# Script:	14bucle_while.sh
# Autor:
# Fecha:
# Descripción:	Ejemplo de uso del bucle while y until
#		Escribir un script que recibe varios directorios como parámetro
#		y visualiza cuanto ocupa cada uno de ellos.

clear

declare -a DIRECTORIOS
declare -i INDICE=0

if [ $# -eq 0 ]; then
	echo "Error de sintaxis. No se han pasado parámetros"
	echo "Sintaxis: $0 <directorio> ..."
	exit 1
fi

echo "1.- Bucle While."
#while [ $1 ]; do
#while [ "$1" != "" ]; do
while [ -n "$1" ]; do	# -n $1 -> Si $1 no es una cadena vacía, devuelve verdadero
	if [ -e $1 ] && [ -d $1 ]; then
		DIRECTORIOS[$INDICE]=$1
		let INDICE++
		TAMANO=$(du -sh $1 2> /dev/null )
		echo "El tamaño de $1 es $TAMANO"
	else
		echo "$1 no es un directorio" 
	fi
	shift
done
echo "Se han procesado $INDICE elementos"

echo "2.- Bucle Until"
let INDICE=0
#until [ -z ${DIRECTORIOS[$INDICE]} ]; do
until [ $INDICE -eq ${#DIRECTORIOS[@]} ]; do
	TAMANO=$(du -sh ${DIRECTORIOS[$INDICE]} 2> /dev/null )
	echo "El tamaño de ${DIRECTORIOS[$INDICE]} es $TAMANO"
	let INDICE++
done

exit 0
