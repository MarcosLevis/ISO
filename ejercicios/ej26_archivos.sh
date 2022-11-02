#!/bin/bash
if [ $# -eq 0 ]
then
	echo  "Ingresar parametros"
	exit 1
fi
noExiste=0
pos=0
for i in $*
do
	let pos++
	resto=$(( $pos % 2 ))
	if [ $resto -eq 1 ]
	then
		if [ -d $i ]
		then
			echo "Es un directorio"
		elif [ -f $i ]
		then
			echo "Es un archivo"
		fi
	fi
	if [ -c $i ]
	then
		let noExiste++
	fi
done
echo "Los que no existen son $noExiste"
exit
