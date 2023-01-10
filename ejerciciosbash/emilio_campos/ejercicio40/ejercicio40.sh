#!/bin/bash

#Nombre= ejercicio27.sh
#Autor= Emilio Campos
#Descripcion= 

#Escribir un script que recibe como parámetros un nombre de usuario y un
#archivo/directorio. Visualizar por pantalla si el usuario pasado como parámetro es
#propietario del archivo. Pista: estructura condicional if y expansión de comando con
#stat.

#Recibir nombre de usuario y archivo como parámetros
usuario=$1
archivo=$2

if [ $# != '2' ]; then

	echo "Introduce dos valores"
fi

#Obtener el nombre de usuario del propietario del archivo
propietario=$(stat -c %U $archivo)

#Comprobar si el usuario pasado como parámetro es propietario del archivo
if [ "$usuario" == "$propietario" ]; then
  echo "El usuario $usuario es el propietario del archivo $archivo"
else
  echo "El usuario $usuario no es el propietario del archivo $archivo"
fi
