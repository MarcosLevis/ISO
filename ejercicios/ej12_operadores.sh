#!/bin/bash
if [ $# == 0 ]
then
	exit
fi

#a) Suma resta divsion mult
echo "Ingrese un numero: "
read a

read -p "Ingrese otro numero: "  b

c=$(( $a+$b ))

echo "La suma de los numeros es $c"



echo "La resta de los numeros es $(( $a-$b ))"

c=$(( $a*$b ))

echo "La multiplicacion de los numeros es $c"

c=$(( $a/$b ))

echo "La division de los numeros es $c"
echo ""

#b) ahora con pasaje de parametros
a=$1
b=$2

echo "La suma entre los dos parametris es $(( $a+$b ))"


