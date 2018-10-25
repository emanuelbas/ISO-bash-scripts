#!/bin/bash
#revisa cada 10s si se logueo el usuario recibido por parametro
#en caso de haber logueado informarlo y salir

while true
do
	if [ $1 == `who | cut -d" " -f1` ]
	then
		echo "ahí está $1 conectado! "
		break
	fi 
	echo "$1 no logueó, en un rato me fijo de nuevo.. "
	sleep 10
done
