#!/bin/bash

# Script:	10estructuraif.sh
# Autor:	Rafa Lozano
# Fecha:	20/1/2022
# Descripción:	Ejemplo de uso de la estructura condicional if

clear

# Comprobamos si se ha pasado un parámetro
# Obligatoriamente espacio entre if y [, entre [ y la expresión condicional; y entre la 
# expresión condicional y ]

if [ $# -eq 1 ]; then
	echo "1.- Se ha pasado un parámetro y es $1"
fi

if test $# -eq 1 ; then
	echo "2.- Tenemos un parámetro que es $1"
fi

if test $# = 1 ; then
	echo "3.- Si uso operador = tengo que separarlo"
fi

# Las variables de tipo cadena de caracteres tienen que
# ir entrecomilladas para evitar error de sintaxis si
# no tuvieran un valor

if [ "$USUARIO" = "pepe" ]; then			# if [ $USUARIO -eq "pepe" ]; then
	echo "4.- El usuario es pepe"
fi

# En comparación de igualdad podemos usar el doble igual == sin espacios o con espacios
USUARIO=pepe
if [ "$USUARIO" == "pepe" ]; then
	echo "5.- El usuario es pepe"
fi

# Expresiones comparativas de ficheros
if [ -e /etc/resolv.conf ]; then
	echo "6.- El fichero de resolución de nombres local es:"
	cat /etc/resolv.conf
fi

# Estructura if con dos condiciones. Usamos los operadores lógicos, que son:
# 	Con corchetes -> && AND lógico y || OR lógico
#	Con test      -> -a AND lógico y -o OR lógico

# Ejemplo, si existe un directorio
if [ -e /tmp ] && [ -d /tmp ]; then
	echo "7.- /tmp existe y es un directorio"
	echo "-----------------------------------"
	ls -l /tmp
	echo "-----------------------------------"
fi

# Igual pero con el comando test
if test -e /tmp -a -d /tmp ; then
	echo "8.- El directorio /tmp existe" 
fi

if [ -e /tmp -a -d /tmp ]; then
	echo "9.- El directorio /tmp existe"
fi

if test -e /tmp && test -d /tmp ; then
	echo "10.- El directorio /tmp existe"
fi

# Comprobación de fechas de archivo
FICHERO1="/etc/fstab"
FICHERO2="$HOME/.bashrc"
if [ $FICHERO1 -nt $FICHERO2 ]; then
	echo "11.- $FICHERO1 es más moderno que $FICHERO2"
else
	echo "12.- $FICHERO1 es más antiguo que $FICHERO2" 
fi
ls -la $FICHERO1 $FICHERO2

echo "Fin del script"
exit 0

