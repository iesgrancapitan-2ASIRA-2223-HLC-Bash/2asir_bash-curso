#!/bin/bash

# Script:	17operador_tuberia.sh
# Autor:
# Fecha:	10/2/2022
# Descripción:	Ejemplo de uso del operador | y comandos asociados

clear

# Comandos normalmente utilizados con el operador |
# 	head -> Visualiza por pantalla las n primeras líneas de un archivo de texto.
#	tail -> Visualiza por pantalla las n últimas líneas de un archivo de texto.
#	grep -> Busca cadenas de caracteres en un archivo de texto
#	cut -> Extrae un dato de un fichero de texto con estructura
#	uniq -> Visualiza líneas de un fichero omitiendo las repetidas.
#	sort -> Ordena las líneas de un archivo de texto
#	wc -> Cuenta nº de líneas, palabras o caracteres de un archivo de texto.
#	find -> Busca archivos en base a un criterio de búsqueda.

# Contar cuantos archivos y/o directorios tiene un directorio
echo "1.- Usamos wc para contar líneas. Contamos las líneas devueltas por ls"
echo -n "Nº de archivos y directorios en /usr/share/doc/alsa-utils: "
ls /usr/share/doc/alsa-utils | wc -l

# Ordenar los nombres de los usuarios del sistema
echo "2.- Visualizamos los nombres de los usuarios ordenados"
cat /etc/passwd | cut -f1,5 -d: | sort

# Visualizar todos los usuarios que tienen directorio personal en /home
echo "3.- Usuarios con directorio personal en /home"
cat /etc/passwd | grep ":/home" | cut -f 1,6 -d:
echo "3.- Otra forma"
ls /home | sort

# Visualizar las 20 primeras líneas del log del anacron
cat /var/log/syslog | grep "anacron" | head -20

# Visualizar las 15 últimas líneas del log del kernel de linux
cat /var/log/syslog | grep "kernel" | tail -15

# Mostrar el nombre completo del usuario que ejecuta el script
echo -n "4.- Nombre completo del usuario actual: " 
cat /etc/passwd | grep "$USER:" | cut -f 5 -d:

# Visualizar cuantos directorios y subdirectorios hay debajo del directorio personal
echo -n "5.- Mis directorios y subdirectorios: "
find ~ -type d 2> /dev/null | wc -l 

# Contar cuantos archivos y directorios hay desde /usr/share/doc sin contar duplicados
echo -n "6.- Archivos y directorios únicos en /usr/share/doc: "
find /usr/share/doc -printf "%f\n" | sort | uniq | wc -l

# Visualizar los 10 primeros archivos más grandes de /etc/init.d
echo "7.- Los 10 archivos más grandes de /etc/init.d"
ls -lS /etc/init.d | head -11



exit 0
