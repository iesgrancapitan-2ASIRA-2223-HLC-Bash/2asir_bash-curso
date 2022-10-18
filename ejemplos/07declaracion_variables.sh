#!/bin/bash

# Script:	07declaracion_variables.sh
# Autor:	Rafa Lozano
# Fecha:	20/1/2022
# Descripción:	Ejemplo de declaración explícita de variables 

clear
# Creación una variable sin declararla explícitamente
VAR1="Administrador"

# Declaración de una variable con el comando declare
declare VAR2
VAR2="/etc/resolv.conf"

# Exportación de una variable
declare -x VAR3="adm"

# DEclaración de variable de solo lectura
declare -r VAR4="Esta variable no puede modificarse"

echo "Variable 1 -> $VAR1"
echo "Variable 2 -> $VAR2"
echo "Variable 3 -> $VAR3"
echo "Variable 4 -> $VAR4"

# Modifico una variable de solo lectura. Es un error
VAR4="Variable de solo lectura modificada"
echo $VAR4

# Declaración de variable de tipo entero
declare -i N1
N1=6/3
echo "El valor de N1 es $N1"

declare -i N2
N2=100/6
echo "El valor de N2 es $N2"




exit 0

