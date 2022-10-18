#!/bin/bash

# Script:	01variables_locales.sh
# Autor:	Rafa Lozano
# Fecha:	13/1/2022
# Descripción:	Ejemplo de uso de variables locales.

clear

# Declaración de una variable asignándole un valor
CARPETA=/etc/init.d
DIRECTORIO_PERSONAL=/home/usuario
NOMBRE_COMPLETO="Rafa Lozano"
NUMERO=25

# Muestro el valor de la variable
echo $CARPETA

echo "Muestro el contenido $CARPETA"
ls -l $CARPETA | more

echo "Muestro cuál es el directorio personal ${DIRECTORIO_PERSONAL}"

echo -n "Mi nombre completo es: "
echo ${NOMBRE_COMPLETO}

echo "El número es ${NUMERO}"

# Cambiamos el valor de una variable
DIRECTORIO_PERSONAL=/root

# Visualizamos el nuevo valor
echo "Ahora el directorio personal es ${DIRECTORIO_PERSONAL}"

# Declara una variable con el valor de otra
NUEVA_CARPETA=$CARPETA
SERVICIO_CRON=$CARPETA/cron

# Mostramos sus valores
echo "La nueva carpeta es ${NUEVA_CARPETA} y el servicio cron es ${SERVICIO_CRON}"

# Ejemplo de uso de llaves para evitar ambigüedad
DIA=24
MES=2
AYO=2022
COPIA_SEGURIDAD=Copia_$AYO_$MES_$DIA.tar.gz
COPIA_BUENA=Copia_${AYO}_${MES}_$DIA.tar.gz
echo "El archivo de copia de seguridad es ${COPIA_SEGURIDAD}"
echo "El archivo bueno de copia de seguridad es ${COPIA_BUENA}"

exit 0
