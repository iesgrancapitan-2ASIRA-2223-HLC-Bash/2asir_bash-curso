#!/bin/bash

# Script:	18entrecomillado_expansion.sh
# Autor:
# Fecha:	10/2/2022
# Descripción:	Ejemplo de uso de entrecomillado y expansión

clear

# Entrecomillado
# Caracter de escape para caracteres con significado especial
echo "Mi ordenador cuesta en USA \$780"
echo "El \"idiota\" de mi primo metió la pata"
echo "El carácter escape en la bash es \\"

echo 'Mi ordenador cuesta en USA $780'
echo 'El "idiota" de mi primo metió la pata'
echo 'El carácter escape en la bash es \'

# Expansión de llaves en nombres de archivo
ls -l /etc/{passwd,fstab,shadow}
ls -l /etc/rc2.d/{S0,K0}*

# Expansión de metacaracteres en nombres de archivo
ls -l *sh
ls -l *?1?.sh

# Expansión de tilde
cd ~
cd ~usuario2

cd /etc
pwd
cd ~-

# Expansión de comando
# Vemos toda la información de un usuario
LINEA_PASSWD=`cat /etc/passwd | grep $USER:`
LINEA_PASSWD=$(cat /etc/passwd | grep $USER:)
USUARIO=$(echo ${LINEA_PASSWD} | cut -f5 -d:)
echo "El usuario es $USUARIO"
IDU=`echo ${LINEA_PASSWD} | cut -f3 -d:`
echo "Su identificador es $IDU"
echo "El grupo principal de $USUARIO es `id -gn $USER`"

# Calculo de cuanto ocupa un directorio
TAMANO=$(du -sh /home | cut -f1 )
echo "Los directorios de los usuarios ocupan $TAMANO"

# Expansión aritmética
HORAS=24
echo "$HORAS horas son $(($HORAS*60*60)) segundos"



exit 0
