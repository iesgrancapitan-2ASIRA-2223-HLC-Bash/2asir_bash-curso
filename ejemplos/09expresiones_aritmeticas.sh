#!/bin/bash

# Script:	09expresiones_aritmeticas.sh
# Autor:	Rafa Lozano
# Fecha:	22/1/2022
# Descripción:  Ejemplo de uso de las expresiones aritmeticas.

clear

N1=8
N2=7
N3=$N1+$N2
echo "El valor de N3 es $N3"

echo "Usando el comando let"
let N3=$N1+$N2
echo "El valor de N3 es $N3"

let N3=$N1/$N2
echo "El valor de N3 es $N3"

let N1++	# N1=N1+1
echo "El valor ahora de N1 es $N1"

# Expresión arimética más compleja
N4=5
N5=8
let N6=$N4+3*$N5-$N4/2
echo "El valor de N6 es $N6"

# Más de una expresión con let
N7=11
N8=3
let DIVISION=$N7/$N8,RESTO=$N7%$N8
echo "La división entre $N7 y $N8 es $DIVISION y el resto es $RESTO"

exit 0
