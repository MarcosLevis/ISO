#!/bin/bash

vector=()

push() {
	echo "Ingrese un elemento a ser pusheado"
	read j
	vector=(${vector[*]} $j)
}

pop() {
        var=$(length)
        let var--
	unset vector[$var]
        vector=(${vector[*]})
	echo "Popeado con exito"
}

print() {
	echo ${vector[*]}
}

length() {
	#echo "La longitud del vector es ${#vector[*]}";
	echo ${#vector[*]}
}
salir() {
	exit 0
}

select i in  push pop print length salir
do 
	$i
done
