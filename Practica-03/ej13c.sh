#!/bin/bash

if [ $# != 1 ]
then
	echo "Ingresa un nombre de archivo a buscar como parametro"
	exit
fi

if test -f $1 
then
	echo "$1 existe y es un archivo regular"
elif  test -d $1 
then
	echo "$1 existe y es un directorio"
else
	touch $1
fi
