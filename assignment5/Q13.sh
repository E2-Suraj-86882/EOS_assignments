#Write a shell script to display only hidden file of current directory.
#!/bin/bash

echo -n "Hidden files in the current directory : "
ls -d -l -a

if [ $? -ne 0 ]
then 
	echo "No hidden files found."
fi
