#!/bin/bash
#Q3)
echo -e -n "Enter file or directory name : "
read name

if [ -e $name ]
then
	if [ -d $name ]
	then
		echo "$name is a directory"
		echo -e -n "Contents of $name :"
    	ls -l "$name"
	elif [ -f $name ]
	then
		echo "$name is a file"
    	if [ -x $name ]
		then 
			echo "file has executable permission"
		fi
	fi
else
    echo "$name does not exist or is neither a file nor a directory."
fi
