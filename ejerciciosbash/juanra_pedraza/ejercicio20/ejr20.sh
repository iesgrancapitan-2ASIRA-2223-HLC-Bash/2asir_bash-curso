#!/bin/bash
#nombre: ejr20.sh
#autor: Juan Rafael Pedraza Galvez
#fecha: 10/01/2023
#20. Escribir un script que comprueba si el usuario que lo ejecuta es administrador
#(pertenece al grupo adm) y visualice un mensaje indicándolo. Pista: comando id y
#grep con tubería.

clear

# Comprobar si el usuario pertenece al grupo
if id -nG $(whoami) | grep -qw "adm"; then
  echo "Eres administrador."
else
  echo "No eres administrador."
fi
