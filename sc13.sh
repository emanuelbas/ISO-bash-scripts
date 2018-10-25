#!/bin/bash
#Visualiza en pantalla numeros del 1 al 100 y sus cuadrados
#Ejercicio A

for (( i=1;i<=100;i++ ))
do
	echo "$i² es `expr $i \* $i`"
done

#Mostrar al usuario un menu y permitir que elija que hacer
echo " "
# Ejercicio B

mensaje="¿Que desea hacer?"
options=("Listar" "DondeEstoy" "QuienEsta" "Salir") #Es un array
select opt in "${options[@]}" # el arroba significa -All- elementos
do
	case $opt in
		"Listar")
		ls
		;;
		"DondeEstoy")
		pwd
		;;
		"QuienEsta")
		who
		;;
		"Salir") #Siempre hay que agregar al menos una opcion con break, de lo contrario nunca sale
		break
		;;
		*)
		echo "Respuesta inválida $REPLY";;
	esac
done

#Ejercicio C
echo " "
#Recibir como parametro el nombre de un archivo e informar si existe o no
#En caso de que exista informar si es un archivo o un directorio
#En caso de que no exista cree un directorio con el nombre recibido

# -d /ejemplo/ preguntaria si existe el -directory /ejemplo/
if [ -d $1 ];
then
	echo "$1 Es un directorio existente"
elif [ -f $1 ]
then
	echo "$1 Es un archivo existente"
else
	echo "No existe $1, se creara un directorio con ese nombre"
	mkdir $1
fi
