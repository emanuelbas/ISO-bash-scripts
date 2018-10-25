#!/bin/bash
#Imprime los nombres de los ARCHIVOS del directorio actual
#invirtiendo las mayusculas y minusculas, y eliminando las letras A/a

for i in `ls -f`
do
	echo `echo $i | tr a-zA-Z A-Za-z | tr -d aA`
done
