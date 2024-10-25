#Write a shell script to display only executable files of current directory.

echo  " Executable files of current directory"
ls -x -l

 if [ $? -ne 0 ]
 then
	 echo "No Executable files found."
 fi

