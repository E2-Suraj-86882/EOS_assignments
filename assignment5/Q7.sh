#Write a Program to find whether a given number is positive or negative
#!/bin/bash

echo -e -n "Enter +ve or -ve or zero number : "
read num

if [ $num -lt 0 ]
then
	echo "$num is Negative Number"
elif [ $num -gt 0 ]
then 
	echo "$num is Positive Number"
elif [ $num -eq 0 ]
then
	echo "$num is Zero"
else
	echo "Invalid choice! pls Enter Number"
fi
	
