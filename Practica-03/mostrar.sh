#!/bin/bash
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no hoy lo hago
# y mañana ya no me acuerdo de lo que quise hacer

echo "Introduzca su nombre y apellido:"
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:"
echo "$apellido $nombre"
echo "Su usuario es: `whoami`"
echo "Su directorio actual es:`pwd`"
echo "Cual es su comida favorita"
read comida
echo "Que mierda es $comida, un asco"
echo "echo $# -  imprime el numero de parametroscreo"
echo $#
echo "echo $* imprime todo los parametros, creo"
echo $*
echo $HOME
echo "echo $ .sirve para usar las variables"
echo $
