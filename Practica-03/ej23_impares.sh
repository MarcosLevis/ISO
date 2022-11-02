#!/bin/bash

arreglo=( 1 2 3 4 5 6 7 8 9 10)
sumaImpares=0

for i in ${arreglo[*]}
do
	resto=$(( $i % 2))
	if [ $resto -eq 0 ]
	then
		echo "$i es par"
	else
		sumaImpares=$(( $sumaImpares + $i ))
	fi
done

echo "La suma de los impares es $sumaImpares"
