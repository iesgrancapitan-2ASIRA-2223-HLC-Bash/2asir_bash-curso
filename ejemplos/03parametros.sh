#!/bin/bash

# Script:	03parametros.sh
# Autor:	Rafa Lozano
# Fecha:	13/1/2022
# Descripción:	Uso de los parámetros posicionales

clear

# Los parámetros posiciones son variables de solo lectura
# y cuyo nombre corresponde al número de orden en la invocación
# del script
echo "Primer parámetro $1"
echo "Segundo parámetro $2"
echo "Tercer parámetro $3"
echo "Cuarto parámetro $4"

USUARIO=$1
echo "Nombre de usuario $USUARIO"
USUARIO=maria
echo "Nombre de usuario $USUARIO"

# El nombre del script se almacena en $0
echo "El script es $0"

# Ambigüedad en el acceso al parámetro
# Los nombres de las variables no pueden comenzar
# por número. Por tanto toma $4 como parámetro posicional
echo "El tamaño es $3 tamaño $4bytes"

# Más de 10 parámetros
echo "Parámetro 1: $1"
echo "..."
echo "Parámetro 10: ${10}"
echo "Parámetro 11: ${11}"

# Comando shift
echo "Parámetros: $1 $2 $3 $4 $5 $6"
# Con shift desplazo el valor de $2 a $1, de $3 a $2, de $4 a $3, de $5 a $4, de $6 a $5 y $6 desaparece
shift
echo "Parámetros: $1 $2 $3 $4 $5 $6"
shift
echo "Parámetros: $1 $2 $3 $4 $5 $6"
shift
echo "Parámetros: $1 $2 $3 $4 $5 $6"
shift
echo "Parámetros: $1 $2 $3 $4 $5 $6"
shift
echo "Parámetros: $1 $2 $3 $4 $5 $6"
shift
echo "Parámetros: $1 $2 $3 $4 $5 $6"



exit 0
