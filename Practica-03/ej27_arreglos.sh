#!/bin/bash

inicializar() {
	array=()
}

agregarElem() {
	array+=($1)
}

eliminar() {
	if [ $1 -ge 0 ] && [ $1 -lt ${#array[*]} ]
	then
		unset array[$1]
		array=(${array[*]})
	else
		echo "No es una posicion valida"
		exit 1
	fi
}

longitud() {
	echo ${#array[*]}
}

imprimir() {
	echo ${array[*]}
}

inicializarConValores() {
	array=()
	var=$1
	while [ $var -ne 0 ]
	do
		agregarElem $2
		let var--
	done 
}

select operacion in iniciar agregar eliminar longitud imprimir iniciarConValor
do
	case $operacion in
		"iniciar")
			inicializar
		;;
		"agregar")
			echo "Ingrese un numero a ser agregado"
			read num
			agregarElem $num
		;;
		"eliminar")
			echo "Ingresar la posicion a eliminar"
			read elim
			eliminar $elim
		;;
		"longitud")
			longitud
		;;
		"imprimir")
			imprimir
		;;
		"iniciarConValor")
			echo "Ingrece un tamanio de vector"
			read t
			echo "Ingrese un numero"
			read n
			inicializarConValores $t $n
		;;
	esac
done
exit 0
