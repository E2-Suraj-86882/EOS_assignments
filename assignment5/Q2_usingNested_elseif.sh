#!/bin/bash

# Display the menu
echo -e -n "1. Date, 2. Cal, 3. Ls, 4. Pwd, 5. Exit\n"
echo "Enter choice:"
read num

if [ "$num" -eq 1 ]
then
    res=$(date) 
    echo -e -n "Date: $res\n"
elif [ "$num" -eq 2 ]
then
    res=$(cal)   
    echo -e -n "Calendar:\n$res\n"  
elif [ "$num" -eq 3 ]
then
    res=$(ls)    
    echo "Files in current directory:\n$res"
elif [ "$num" -eq 4 ]
then
    res=$(pwd)   
    echo "Current working directory: $res"
elif [ "$num" -eq 5 ]
then
    echo "Exiting..."
    exit 0
else
    echo "Invalid option! Please select a number between 1 and 5."
fi
