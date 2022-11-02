#!/bin/bash
carpeta=$(pwd)
if ! [ -d $HOME/bin ]
then
	cd $HOME
	mkdir bin
fi
cd $carpeta
vector=($(find $carpeta -type f -name "*.sh" | rev | cut -d "/" -f1 | rev ))
cant=0
for archivo in ${vector[*]}
do
	cp $archivo $HOME/bin
	let cant++
	echo "Se ha movida el archivo $archivo"
done
echo "Se han movida $cant archivo/s"
exit 0


