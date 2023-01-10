#!/bin/bash

# Script:	16bucle_select.sh
# Autor:
# Fecha:
# Descripción:	Ejemplo de uso del bucle select.
#		Escribir un script que pide por teclado una opción de entre las siguientes:
#		- Tamaño
#		- Permisos en octal
#		- Tipo de fichero
#		- Propietario
#		- Fecha de modificación
#		- Fin
#		Según la opción elegida tiene que mostrar la información
#		correspondiente a un fichero que se ha pasado como parámetro

clear

if [ $# -ne 1 ]; then
	echo "Error de sintaxis. No se ha pasado el parámetro"
	echo "Sintaxis: $0 <fichero>"
	exit 1
fi

if [ ! -e $1 ]; then
	echo "Error. $1 no es un archivo o directorio"
	echo "Sintaxis: $0 <fichero>"
	exit 2
fi

PS3="Elige una opción -> "
select OPCION in Tamaño Permisos Tipo Propietario "Fecha Modificación" Fin ; do

	echo "La opción elegido es: $OPCION"
	
	case $OPCION in
		"Tamaño" )
			TAMANO=`stat -c "%s" $1`
			echo "El tamaño de $1 es $TAMANO bytes"
			;;
		"Permisos" )
			PERMISOS=`stat -c "%a" $1`
			echo "La máscara de permisos de $1 es $PERMISOS"
			;;
		"Tipo" )
			if [ -d $1 ]; then
				echo "$1 es un directorio"
			elif [ -f $1 ]; then
				echo "$1 es un archivo regular"
			elif [ -s $1 ]; then
				echo "$1 es un enlace simbólico"
			elif [ -b $1 ]; then
				echo "$1 es un dispositivo por bloques"
			elif [ -c $1 ]; then
				echo "$1 es un dispositivo por carácter"
			fi
			;;
		"Propietario" )
			PROPIETARIO=`stat -c "%U" $1`
			echo "El propietario de $1 es $PROPIETARIO"
			;;
		"Fecha Modificación" )
			FECHA=`stat -c "%y" $1`
			echo "La fecha de modificación de $1 es $FECHA"
			;;
		"Fin" )
			echo "Terminando..."
			break
			;;
	esac
done

exit 0
