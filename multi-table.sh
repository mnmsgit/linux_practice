#!/bin/sh

if [ -z "$1" ] || [ -z "$2" ]
then
	echo "Invaild Input"
	exit 1
fi

num1=`expr $1`
num2=`expr $2`

if [ $num1 -le 0 ] || [ $num2 -le 0 ] 
then
	echo "Input must be greater than 0"
	exit 1
fi




for i in $(seq 1 $num1)
do
	for j in $(seq 1 $num2)
	do
		result=`expr $i \* $j`
		printf "%2d*%-2d=%-2d  " $i $j $result

	done
	echo
done

exit 0
