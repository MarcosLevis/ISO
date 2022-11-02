#!/bin/bash

#Asi se declaran los arreglos

vector=("diego" "231" "nomejodas" "hola")

#imprime todo el vector con la variable @
echo ${vector[@]}


#imprime de a una linea todo el vector con la variable @
for i in "${vector[@]}"
do
	echo $i
done
