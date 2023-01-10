#!/bin/bash

# Descripcion: Escribir un script que recibe dos parámetros: un directorio y un>

# Autor: Jose Pedro Montoro Blancas

# Mostramos el directorio y la extencion

# Obtener el directorio y la extensión de archivo
echo "El directorio es $1";
echo "La extencion es $2";

# Iterar sobre los archivos del directorio
for file in $1/*.$2
do
    # Obtener el tamaño del archivo en bytes
    tamanio=$(ls -l $file | cut -d " " -f5)
    # Verificar si el tamaño es mayor o igual a 512 bytes
    if [ $tamanio -ge 512 ]; then
        echo "$file tiene un tamaño de $tamanio bytes"
    fi
done
