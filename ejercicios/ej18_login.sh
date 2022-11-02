#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Ingresar un usuario como parametro"
	exit 1
fi 
j="asd"
while true
do
	sleep 10
	who | cut -d " " -f1  > data.txt
	j=$(grep $1 data.txt)
	if [ $j == $1 ]
	then
		break
	fi
done
rm data.txt
echo "mark se ha conectado"


