#!/bin/bash

if [ $# = 0 ]
then
	echo "Ingerese un paramero 'listar', 'dondeestoy', 'quiensoy'"
	exit
fi

case $1 in
	"listar")
		echo ` ls -l `
	;;
	"dondeestoy")

		echo  `pwd ` 
	;;
	"quiensoy")
		echo  ` who ` 
	;;
esac
