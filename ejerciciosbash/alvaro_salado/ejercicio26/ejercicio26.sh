#!/bin/bash

#Nombre: ejercicio26.sh
#Autor: Alvaro Salado
#Descripcion:Escribir un script que muestra por pantalla el nombre completo 
#de los propietarios de los archivos de un directorio pasado como parámetro. 
#Pista: expansión de comando con ls y cut con tubería.

clear

if [ "$#" -ne 1 ]; then
    echo "Introduce un directorio"
    exit 1
fi

directory=$1

ls -l $directory | cut -d ' ' -f 3 | tail -n +2


