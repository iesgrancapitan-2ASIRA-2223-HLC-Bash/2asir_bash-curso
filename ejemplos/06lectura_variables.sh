#!/bin/bash

# Script:	06lectura_variables.sh
# Autor:	Rafa Lozano
# Fecha:	14/1/2022
# Descripción:	Ejemplo de uso de asignación de valor a las variables por teclado.

clear

echo "Lectura de valores de variables desde teclado"
echo -n "Introduce un nombre de usuario: "
read USUARIO

echo "El usuario introducido es $USUARIO"

read -p "Introduce un directorio: " DIRECTORIO
echo "El directorio introducido es $DIRECTORIO"

exit 0
