#!/bin/bash

#Crear una calculadora con pasaje como parametros

if [ $# != 3 ]
then
	echo "faltan parametros"
	echo "para multiplicar usa la x"
	exit
fi

case $2 in
	"/")
		echo $(( $1 / $3 ))
	;;
	"x")
		echo $(( $1 * $3 ))
	;;
	"+")
		echo $(( $1 + $3 ))
	;;
	"-")
		echo $(( $1 - $3 ))
	;;
esac
