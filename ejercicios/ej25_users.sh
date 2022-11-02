#!/bin/bash
if [ $# -eq 0 ] || [ $# -gt 2 ]
then
	echo "cantidad de perametros incorrectos"
	exit 1
fi
users=$(cat /etc/group | grep adm | cut -d ":" -f4)
arreglo=($(echo $users | tr ',' ' ' ))
if [ $1 = "-l" ]
then
	echo ${#arreglo[*]}
	elif [ $1 = "-i" ]
	then
		echo ${arreglo[*]}
fi
if [ $# -eq 2 ] && [ $1 = "-b" ]
then
	if [ $2 -le  ${#arreglo[*]} ] && [ $2 -gt 0 ]
	then
		echo ${arreglo[$2]}
	else
		echo "No existe esa posicion en el vector"
		exit 2
	fi
fi
exit 0
