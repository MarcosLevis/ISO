#!/bash/bin

# asi funaciona el select
echo "progando el select"
echo""
PS3="Enter a number:"
select pais in argentina uruguay brasil paraguay bolivia chile
do
	echo "Pais seleccionado: $pais"
	echo "Numero seleccionado: $REPLY"
	break 3
done

echo""

echo ""
echo "probando el continue"

for (( number = 1; number < 8; number++ )); do

	if [ $number -lt 5 ]; then
		continue
	fi
	echo "number is: $number"
done

echo ""

i=4

# asi funciona el if mark
echo "Probando if:"
if [ $i -eq 4 ]
then
	echo "i es igual a cuatro"
else
	echo "i es distinto a cuatro"
fi
echo ""

#asi funciona le FOR pa
echo "Probando el for:"
for j in 1 2 3 4
do
	echo $j

done
echo ""
#otro ejemplo del fo esta mal xd
echo "otro eemplo del for"
for archivo in /ejercicios/*
do
	if [ "${archivo}"  == "/ejercicios/mostrar.sh" ]
	then
		echo " El nombbre del archivo es: " "${archivo}"
		break
	fi
	echo "prueba"

done 
echo ""

#ejemplo del while papa
echo "ejemplo de while"
h=1
while [ $h -le 5 ]
do
	echo "vuelta $h"
	h=$(( $h + 1 ))

done

echo""
#ejemplo del CASE
echo "Que edad supones que tengo"
read edad
case $edad in
	21)
		echo "asies"
	;;
	22)
		echo "Incorrecto"
	;;
	23)
		echo "Incorrecto"
	;;
	24)
		echo "Correcto"
	;;
esac
