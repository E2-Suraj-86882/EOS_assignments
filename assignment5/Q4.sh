#!/bin/bash
#given number is prime or not

echo -e -n "Enter number :"
read num

function check_prime ()
{
	num=$1
	i=2
	flag=0
	while [ $i -le `expr $num / 2` ]
	do
		if [ `expr $num % $i` -eq 0 ]
		then
			flag=1
			break
		fi
		i=`expr $i + 1`
	done
	echo $flag
}

res=$( check_prime $num)

if [ $res -eq 0 ]
then
	echo "$num is Prime number"
else
	echo "$num is Not Prime number"
fi
