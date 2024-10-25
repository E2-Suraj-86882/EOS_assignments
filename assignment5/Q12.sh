#Write a shell script to accept a filename as argument and displays the last modification
#time if the file exists and a suitable message if it doesn’t exist.
#!/bin/bash

echo -e -n "Enter the filename : "
read name

if [ -e $name ]
then
	if [ -f $name ]
	then
		echo -e -n "Last modification ( $name ): "
		stat -c %y $name
	fi
	
else
	echo "$name doesn't exist"
fi
