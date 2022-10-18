#!/bin/bash

# Script:	05variables_especiales.sh
# Autor:	Rafa Lozano
# Fecha:	14/1/2022
# Descripción:	Ejemplo de uso de las variables especiales

clear
echo "Ejemplo de uso de las variables"

echo "Identificador de proceso que ejecuta el script: $$"
echo "Número de parámetros que se han pasado: $#"
echo "Los parámetros que se han pasado *: $*"
echo "Los parámetros que se han pasado @: $@"

IFS=,
echo "Los parámetros que se han pasado *: $*"
echo "Los parámetros que se han pasado @: $@"

ls -l 
echo "Código de salida del último comando ejecutado: $?"

ls --no-existe 2> /dev/null
echo "Código de salida del último comando ejecutado: $?"

exit 0

