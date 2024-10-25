#Accept the two file names from user and append the contents in reverse case of first file into second file.
#!/bin/bash

echo -n "Enter input file : "
read f1
echo -n "Enter Output file : "
read f2
if [ -e $f1 ]
then

	if [ -f $f1 ]
	then
		echo "contents of Input file :"
		cat $f1
		echo " "
		tac $f1 > $f2
		echo "contents of Output file :"
		cat $f2
	fi
fi
