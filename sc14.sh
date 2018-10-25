#!/bin/bash
#RENOMBRAR ARCHIVOS
#
# Recibir un directorio como parametro
# Renombrar solo sus archivos
# Agregandoles una CADENA contemplando -a CADENA -> agrega cadena al final del nombre del archivo
# -b CADENA renombra el archivo concatenando cadena al principio del nombre

#Parametros
#$1 Directorio de los archivos 
#$2 Flag -a o -b
#$3 Cadena a concatenare al final de los archivos

#Me aseguro que sean 3 parametros y que el directorio exista
if [ $# == 3 ]&&[ -d $1 ]
then
	echo "Se realizarán los cambios!"
else
	echo "Algo salio mal"
	exit
fi

#Lo que viene es un rebusque de un novato!
# Obtengo los nombres de todos los archivos del dir $1 y los guardo en un vector para luego iterarlos 
case $2 in
'-a' )
	for i in $( ls $1 )
	do
		if [ -f "$1/$i" ]
		then
			mv "$1/$i" "$1/$i$3"
			echo "Se agregó $3 al final del archivo $i"
		fi
	done
;;
'-b' )
	for i in $( ls $1 )
	do
		if [ -f "$1/$i" ]
		then
			mv "$1/$i" "$1/$3$i"
			echo "Se agregó $3 al principio del archivo $i"
		fi
	done
esac

#Nota: Se rompe con nombres de archivos que llevan espacios
