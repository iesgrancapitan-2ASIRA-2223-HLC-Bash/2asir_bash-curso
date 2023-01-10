#!/bin/bash

#Nombre= ejercicio27.sh
#Autor= Emilio Campos
#Descripcion= 

#Escribir un script que recibe como parámetro un nombre de archivo e indica si el
#usuario que ejecuta el script es el propietario, y si no lo es, que muestre el usuario
#propietario y su nombre completo. Pista: estructura if con comandos ls y grep con
#tuberia.

if [ $# -eq 0 ]; then

	echo "Introduce algun valor"
	exit 1
fi


#Asignamos una variable
archivo=$1

#Obtenemos el propietario del archivo
usuario=$(ls -l $archivo | awk '{print $3}')

#Obtenemos el nombre completo del propietario a partir del usuario
nombre=$(grep $usuario /etc/passwd | awk -F':' '{print $5}')

#Comprobamos que el usuario que ejecuta el script es el propietario

if [ "$usuario" == "$USER" ]; then

	echo "Eres el propietario del archivo $archivo"
else
	echo "El propietario del archivo $archivo es $usuario y su nombre completo es $nombre"
fi
