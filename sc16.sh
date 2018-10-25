#!/bin/bash
#Recibo una extension
#Genera un reporte (reporte.txt) con dos columnas
#Nombre de usuario y cantidad de archivos con esa extension

if [ $# != 1 ]
then
	echo "Recuerda enviar solo la extensión como parámetro"
	exit
fi

nombreDeUsuario=`whoami`

cantidadDeArchivos=`find $HOME -type f -name "*$1" | wc -l`
echo "$nombreDeUsuario:$cantidadDeArchivos" > reporte.txt
