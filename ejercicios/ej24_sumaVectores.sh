#!/bin/bash

vector1=( 1 2 3 4 5 6 7 8 9 10 )
vector2=( 1 2 3 4 5 6 7 8 9 10 )

for ((i=0; i < ${#vector1[*]};i++))
do
	echo "La suma de los elem en la pos $i es $(( ${vector1[$i]} + ${vector2[$i]} ))" 
done
