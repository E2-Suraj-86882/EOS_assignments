#Write a Program to find whether a given year is a leap year or not
#!/bin/bash
echo -e -n "Enter year :"
read year

if [ `expr $year % 4` -eq 0 -a `expr $year % 100` -ne 0  -o  `expr $year % 400` -eq 0 ]
then
	echo "$year Year is Leap year"
else
	echo "$year Year is not Leap year"
fi
