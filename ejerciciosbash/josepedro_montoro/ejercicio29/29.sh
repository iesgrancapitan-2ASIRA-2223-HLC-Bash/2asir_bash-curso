#!/bin/bash

# Descripcion: Escribir un script que recibe dos parámetros: un directorio y una extensión de archivo. Para todos los archivos del directorio que tienen la extensión visualizar los que tienen un tamaño igual o superior a 512 bytes. Pista: bucle for, estructura if, expansión de comando con ls y tubería con cut.

# Autor: Jose Pedro Montoro Blancas

# Mostramos el directorio y la extencion
clear
echo "El directorio es $1";
echo "La extencion es $2";
find $1/*$2 -size +511c -print
