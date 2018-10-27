#!/bin/bash
#Declarar un array de numeros y multiplicarlos con una funcion

num=(4 1 2 3 4 9)
function productoria {
	let total=1
	for n in ${num[*]}
	do
		let total=$total*$n
	done
	echo $total
}
productoria
