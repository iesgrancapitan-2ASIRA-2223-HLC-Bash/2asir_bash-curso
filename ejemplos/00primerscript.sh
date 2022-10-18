#!/bin/bash

# Script:	00primerscript.sh
# Autor:	Rafa Lozano
# Fecha:	13/1/2022
# Descripción:	Primer script de ejemplo con varios comandos

clear

echo "Listado en formato largo del directorio activo"

ls -l

# Provocamos un error
ls --no-existe

echo -n "Fecha del sistema: "
date +%d/%m/%Y


exit 0


