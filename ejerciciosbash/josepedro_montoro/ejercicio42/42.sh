#!/bin/bash

# Descripcion: Escribir un script que recibe dos parámetros: un directorio y un>

# Autor: Jose Pedro Montoro Blancas

# Mostramos el directorio y la extencion

clear

if [ $# -ne 1 ]; then
    echo "Error: debe especificar un directorio como parámetro"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: el parámetro especificado no es un directorio"
    exit 1
fi

archivogrande=""
archivogrande_size=0

for file in "$1"/*; do
    if [ -d "$file" ]; then
        echo "El subdirectorio $file tiene $(ls -l "$file") archivos"
    elif [ -f "$file" ]; then
        size=$(stat --printf="%s" "$file")
        if [ $size -ge 1024 ]; then
            echo "El archivo regular $file tiene un tamaño de $size bytes"
        else
            owner=$(stat --printf="%U" "$file")
            echo "El archivo regular $file tiene un tamaño de $size bytes y es propiedad de $owner"
        fi
        if [ $size -gt $archivogrande_size ]; then
            archivogrande=$file
            archivogrande_size=$size
        fi
    fi
done

echo "El archivo más grande es $archivogrande con un tamaño de $archivogrande_size bytes"
