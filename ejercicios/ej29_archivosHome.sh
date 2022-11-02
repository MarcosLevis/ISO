#!/bin/bash
					# | esta verga se queda con la ult palabra del path
vector=($(find $HOME -type f -name "*.sh" | rev | cut -d "/" -f1 | rev))
verArchivo() {
	for i in ${vector[*]}
	do
		if [ $i = $1 ]
		then
			arch=$(find $HOME -type f -name $1)
			cat $arch
			return 0
		fi
	done
	echo "archivo no encontrado"
	return 5
}


cantidadArchivos() {
	echo ${#vector[*]}
}

si(){
	pos=-1
	for i in ${vector[*]}
	do
		let pos++
		if [ $i == $1 ]
		then
			unset vector[pos]
			vector=${vector[*]}
			return 0
		fi
	done
	echo "Archivo no encontrado"
	return 10
}

no(){
	si $1
	arch=$(find $HOME -type f -name $1)
	rm $arch
	return 0
}

borrarArchivo() {
	echo "Quiere borrar el archivo logicamente"
	select  res in si no
	do
		$res $1
	done
	return $?
}
select i in verArchivo cantidadArchivos borrarArchivo
do
	case $i in
		"verArchivo")
			echo "ingrese el nombre de archivo que desea ver"
			read a
			verArchivo $a
		;;
		"cantidadArchivos")
			cantidadArchivos
		;;
		"borrarArchivo")
			echo "Ingrese el nombre de archivo que desea borrar"
			read a
			borrarArchivo $a
		;;
	esac
done
exit 0
