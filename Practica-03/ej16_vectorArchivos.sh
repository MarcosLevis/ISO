#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Ingrese una extension de archivo como parametro"
	exit
fi

cd /home
vector=($(ls))
for i in ${vector[*]};
do
	cant=0
	x=( $(find /home/$i -name "*$1" -type f) )
	for item in ${x[@]}
	do
		cant=$((cant+1))
	done
	echo "$i $cant $1"  >> /home/mark/Escritorio/faQ/ISO/practica/Practica3/ejercicios/report.txt
done
