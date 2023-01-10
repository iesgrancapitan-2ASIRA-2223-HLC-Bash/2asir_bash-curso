#!/bin/bash

# Script:	12estructura_case.sh
# Autor:
# Fecha:
# Descripción:	Ejemplo de uso de la estructura case

clear

case "$1" in 
	( start )
		echo "Arrancando el servicio"
		;;
	( stop )
		echo "El servicio se va a parar"
		;;
	( restart )
		echo "Reiniciando el servicio"
		;;
	( reload | force-reload )
		echo "Recargando la configuración del servicio"
		;;
	( status )
		echo "Visualizando el estado del servicio"
		;;
	( * ) 
		echo "Error de Sintaxis"
		echo "Sintaxis $0 { start | stop | restart | reload | force-reload | status }"
		exit 1
		;;
esac

exit 0
