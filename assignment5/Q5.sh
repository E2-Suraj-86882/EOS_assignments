#find the greatest of three numbers
#!/bin/bash

echo -n -e "Enter num1 :"
read n1
echo -e -n "enter num2 :"
read n2
echo -e -n "enter num3 :"
read n3
echo -e "$n1 $n2 $n3"

if [ $n1 -ge $n2 -a $n1 -ge $n3 ]
then
	echo "Num1 is greater : $n1 "
elif [ $n2 -ge $n1 -a $n2 -ge $n3 ]
then
	echo "Num2 is greater : $n2 "
else
	echo "Num3 is greater : $n3"
fi
