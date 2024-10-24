#Write a program to find the factorial of given number.
#!/bin/bash

echo -e -n "Enter +ve Number : "
read num

if [ $num -lt 0 ]
then
	echo "Factorial is not defined for negative numbers."
else
	i=1
	fact=1
	while [ $i -le $num ]
	do
		fact=`expr $fact \* $i`
		i=`expr $i + 1`
	done
	echo "Factorial num of $num = $fact"
fi
