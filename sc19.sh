#!/bin/bash
# Es un menu de comandos amigable para el usuario
# Permanece activo hasta que el usuario ingrese salir

PS3="¿Que desea hacer?"
options=("ImprimirArchivos" "ProbandoElCut" "ProbandoTr" "Salir")
select op in "${options[@]}"
do
	case $op in
	"ImprimirArchivos")
		./sc17.sh
	;;
	"ProbandoElCut")
		echo "Probando el cut"
	;;
	"ProbandoTr")
		echo "Probando tr"
	;;
	"Salir")
		echo "saliendo"
		exit
	;;
	*)
		echo "Opción no valida"
	esac
done

