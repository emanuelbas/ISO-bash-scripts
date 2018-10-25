#!/bin/bash
#Recibe op n1 n2 y calcula la operacion entre n1 op n2
if [ $# != 3 ]
then
  echo "Debe ingresar ./scriptCalculadora op n1 n2"
  exit
fi
case $1 in
+)
 echo `expr $2 + $3`
;;
%)
 echo `expr $2 / $3`
;;
\*)
 echo `expr $2 \* $3`
;;
*)
 echo "Comando no valido"
;;
esac
