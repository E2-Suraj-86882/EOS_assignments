#Write a program to find given number of terms in the Fibonacci series.
#!/bin/bash

echo -e -n "Enter num :"
read num
n1=0
n2=1
echo -n "Fibonacci series : $n1 $n2 "
i=3
while [ $i -le $num ]
do
	res=`expr $n1 + $n2`
	echo -n "$res "
	n1=$n2
	n2=$res
	i=`expr $i + 1`
done
echo " "
