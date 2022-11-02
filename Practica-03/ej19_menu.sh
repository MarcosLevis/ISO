#!/bin/bash

echo "Menu:"
vector=($(ls))

select i in ${vector[*]}
do
	source $i
	exit 0
done
