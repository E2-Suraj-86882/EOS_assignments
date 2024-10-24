#Q2)
#!/bin/bash
# Display the menu

choice=1
until [ $choice -eq 0 ]
do
echo -e "1. Date, 2. Cal, 3. Ls, 4. Pwd, 5. Exit"
echo -e -n "Enter choice:"
read choice


	case $choice in
	1) res=$(date)
		echo -e "Date : $res \n"
		;;
	2) res=$(cal)
		echo -e -n "Calendar : $res \n"
			;;
	3) res=$(ls)
		echo -e "Files in current directory : $res \n"
		;;
	4) res=$(pwd)
		echo -e "Current working directory:$res \n"
		;;
	5) exit
	esac
done 
