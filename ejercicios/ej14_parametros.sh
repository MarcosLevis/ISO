#!/bin/bash

if [ $# -ne 3 ]
then
	echo "Ingresar un directorio como parametro, una opcion y una cadena"
	exit 1
fi

if [ ! -d $1  ]
then
	echo "El primer parametro no es un directorio existente"
fi

if [ -z $3 ]
then
	echo "El tercer parametro no es una cadena"
fi

case $2 in
	"-a")
		for i in `ls $1`
		do
			mv $1/$i $1/$i$3
		done
	;;
	"-b")
		for i in `ls $1`
		do
			mv $1/$i $1/$3$i
		done
	;;
	*)
		echo "El segundo parametro debe ser -a o -b"
		exit 4
esac
