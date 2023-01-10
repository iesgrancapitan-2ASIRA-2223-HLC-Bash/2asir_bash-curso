#!/bin/bash


# recibimos los parametros y las guardamos en las variables
# el orden de entrada de los parámetros es usuario directorio 

# añadimos los parámetros posicionales en variables con nombres significativos

USUARIO=$1
DIRECTORIO=$2


# comprobamos que hemos recibido dos parámetros exactamente, usamos variable especial $#
# que nos indica el número de parámetros pasados

if [[ $# -ne 2 ]];
then
	echo "El uso del script es ${0} usuario directorio"
	exit 1
fi

# comprobamos que el usuario que ejecuta el script con el que se pasa como parámetro

if [[ $USUARIO == $(whoami) ]];
then
	echo "Usuarios iguales.Saliendo"
	exit 5
fi

# comprobamos que el directorio existe

if [[ ! -d $DIRECTORIO ]];
then
	echo "El directorio no existe.Saliendo"
	exit 3
fi

# una variante de lo anterior podría ser
#
# test ! -d $DIRECTORIO && echo "El directorio no existe"

# Ahora comprobamos que el directorio pasado está vacío y si no mostramos el contenido en modo largo

if [[ -z $(ls -1 $DIRECTORIO) ]];
then
	echo "El directorio está vacio.Saliendo"
       exit 4	
fi

# Ahora preguntamos si quiere el usuario ver el el contenido

read -p "Quieres ver el contenido?(s|n): " VER

# podemos comprobar si se introduce s o n únicamente y si se introduce s o n seguir on la ejecución

if  [[ "$VER" = "s" || "$VER" = "n" ]];
then
    if [[ $VER = "s" ]];
    then 
        ls -laR $DIRECTORIO
     else
         echo "No se quiere ver el directorio.Saliendo"
    fi
else 
        echo "Responda s o n en minúsculas. Saliendo"
        exit 4
fi

echo

# como la ejecución es secuencial, solo llegamos aqui si el usuario es distinto y el directorio está lleno
# comprobamos la existencia de un directorio de tipo yyyymmdd

DIRFECHA=$(date +%Y%m%d)

if [ ! -d $DIRFECHA ]; 
then
     mkdir $DIRFECHA

     # como nos piden comprobar que se ha creado correctamente usamos 
     # variable especial $? que nos da el el resultado de la ejecución del último comando
     # siendo 0 resultado correcto,y distinto de cero si incorrecto

     if [[  $? -eq 0 ]];
     then
	     echo "El directorio $DIRFECHA se ha creado correctamente"
     else
	     echo "No se ha podido crear el directorio $DIRFECHA correctamente"
	     exit 6
     fi
else
     echo "Existe el directorio $DIRFECHA se borra"
     rm -rf $DIRFECHA
fi     
