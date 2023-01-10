#!/bin/bash

# Script:	13bucle_for.sh
# Autor:	Rafa Lozano
# Fecha:	28/1/2022
# Descripción:	Ejemplo de uso del bucle for

clear

# 1ª Forma del bucle for. Sintaxis de C
for (( I=0; I<10; I++ )); do
	echo "El valor de I es $I"
done
echo "El valor de I al terminar el bucle: $I"
echo "---------------------------------------"

# El valor de inicio de la variable y el número
# de iteraciones pueden obtenerse desde variables.
read -p "Introduce el valor inicial: " INICIO
read -p "Introduce el número de iteraciones: " ITERACIONES
for (( I=$INICIO; I<$INICIO+$ITERACIONES; I++ )); do
	echo "El valor de I es $I"
done
echo "El valor de I al terminar el bucle: $I"
echo "---------------------------------------"

# For para recorrer un array
USUARIOS=(usuario root administrador operador backup ayudante becario prácticas)
LONGITUD=${#USUARIOS[@]}
echo "La longitud del array es $LONGITUD"
for (( I=0; I<$LONGITUD; I++ )); do
	echo "El usuario es ${USUARIOS[$I]}"
done

# 2ª Forma del bucle for. Con secuencia
echo "Bucle FOR con una secuencia"
for NUMERO in {1..10} ; do
	echo "El número es $NUMERO"
done

echo "Bucle FOR con una secuencia del comando seq"
for NUMERO in `seq 1 7` ; do
	echo "Valor del índice de la secuencia es $NUMERO"
done

echo "Bucle FOR usando una secuencia con el comando seq y variables"
INDICE=0
let ULTIMO=$LONGITUD-1
for INDICE in `seq $INDICE $ULTIMO` ; do
	echo "Elemento $INDICE es ${USUARIOS[$INDICE]}"
done

# 3ª Forma del bucle for. Con expansión de fichero
if [ ! -e ~/Documentos/configuracion ]; then
	mkdir ~/Documentos/configuracion
fi
for ARCHIVO in /etc/*.conf ; do
	echo "Inspeccionando el archivo $ARCHIVO"
	cp -v $ARCHIVO ~/Documentos/configuracion
	if [ $? -ne 0 ]; then
		echo "Error copiando $ARCHIVO"
	fi
done

echo "Vemos los tamaños de los archivos"
for ARCHIVO in ~/Documentos/bash/* ; do
	echo "Archivo: $ARCHIVO"
	TAMANO=`stat -c "%s" $ARCHIVO`
	echo "Tamaño: $TAMANO bytes"
done

# 4ª forma del bucle for. Con los parámetros posicionales
echo "Visualizar cuanto ocupa cada directorio pasado como parámetro"
for PARAMETRO ; do
	if [ -e $PARAMETRO ] && [ -d $PARAMETRO ]; then
		TAMANO=$(du -sh $PARAMETRO)
		TAMANO=`du -sh $PARAMETRO`
		echo "Directorio $PARAMETRO con tamaño $TAMANO"
	fi
done
exit 0
