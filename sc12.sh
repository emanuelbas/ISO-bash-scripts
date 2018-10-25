#!/bin/bash
if [ $# != 2 ]
then
  echo "Error en la cantidad de parametros"
  exit
fi
numero1=$1
numero2=$2
echo "Numero 1: $numero1 . Numero 2: $numero2"
suma=$(($numero1 + $numero2))
resta=$(($numero1 - $numero2))
multiplicacion=$(($numero1 * $numero2))
if [ $numero1 -gt $numero2 ]
then
 mayor=$numero1
else
 mayor=$numero2
fi
echo "sumados dan: $suma , restados dan $resta, multiplicados dan $multiplicacion , el mayor es $mayor"
echo "el numero mayor es $mayor"
