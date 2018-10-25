#!/bin/bash
#Para este ejercicio necesitás un archivo con texto en mi caso yo hice uno
#llamado untexto.txt

#Ejemplo 1
#Sacar el primer campo de un fichero delimitado por espacios
a=`cut untexto.txt -d " " -f1`
echo $a

#2. Primer y tercer campo
b=`cut untexto.txt -d " " -f 1,2`
echo $b	

#3. Sacar 10 primeros caracteres de un archivo
c=`cut -c 1-10 untexto.txt`
echo $c
