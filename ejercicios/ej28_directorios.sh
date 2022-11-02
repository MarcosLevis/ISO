#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Se necesita un directorio como parametro"
	exit 1
fi

dir=$(find $HOME -type d -name $1 | head -n 1)
echo "este es el path $dir"
escritura=0
lectura=0
if [ "$dir" != "" ]
then
	for archivo in $(ls $dir)
	do 
		if [ -f $archivo ]
		then
			if [ -r $archivo ]
			then
				let lectura++
			fi
			if [ -w $archivo ]
			then
				let escritura++
			fi
		fi
	done
	echo "Los archivos con permiso de lectura son $lectura"
	echo "Los archivos con permiso de escritura son $escritura"
else
	exit 4
fi
exit 0
