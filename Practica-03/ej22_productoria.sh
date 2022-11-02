#!/bin/bash

num=( 3 2 4 )
mult=1
for i in ${num[*]}
do
	mult=$(( $mult * $i ))
done
echo $mult
