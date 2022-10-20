#!/bin/bash

# Script:	arrays.sh
# Autor:	
# Fecha:	19/10/2022
# Descripción:	Ejemplo de uso de arrays

clear

# declaramos un array

declare -a mi_array=("Hidrogeno" "Helio" "Litio" "Berilio")

# mostramos el primer elemento, los arrays en Bash compienzan en índice 0

echo ${mi_array[0]}

# otro modo de definir un arrray

otro_array=(1 2 3 4 "uno" "dos")

# mostramos el quinto elemento del array

echo ${otro_array[4]}

# añadimos un elemento en la séptima posición al array otro_array

otro_array[6]="tres"

# mostaramos el array completo

echo ${otro_array[*]}

# sumamos los dos primeros enteros del array enteros del array
# los enteros son  .... -2 -1 0 1 2 ...

resultado=${otro_array[0]}+${otro_array[1]}

echo $resultado

# el resultado no es el esperado por que recordemos que todos los valores asociados a variables, Bash los trata como cadena de texto

# convertimos el tipo de dato y OJO, la variable que almacenará el resultado de la operación de suma también se tiene que convertir.


declare -i otro_array[0]
declare -i otro_array[1]
declare -i resultado

# sumamos de nuevo y mostramos el resultado

resultado=${otro_array[0]}+${otro_array[1]}

echo $resultado
