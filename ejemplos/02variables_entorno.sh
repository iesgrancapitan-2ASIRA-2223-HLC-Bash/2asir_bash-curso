#!/bin/bash

# Script:	02variables_entorno.sh
# Autor:	Rafa Lozano
# Fecha:	13/1/2022
# Descripción:	Ejemplo de uso de las variables de entorno

clear
echo "El directorio activo es $PWD"
DIRECTORIO_ACTIVO=$PWD
cd /tmp

echo "El directorio activo es $PWD"
echo "El directorio activo anterior $OLDPWD"
cd ${DIRECTORIO_ACTIVO}

echo "El directorio personal del usuario es $HOME"
echo "El usuario que ha abierto sesión $USER y $LOGNAME"

echo "El editor por defecto $EDITOR"


exit 0

