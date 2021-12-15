#!/bin/bash

#autor kalium



echo "Menu"
echo "COpy a file"
echo "Rename a file"
echo "Remove a file"
echo "Quit/Exit"
echo "Enter your choice"


read choice

case $choice in
	1) echo "Enter a filename to create a copy"
	read f1	
	echo  "Enter a file name to create a copy"
	read f2
	if [ -f $f1 ]
	then
		cp $f1 $f2
		echo "$f1 is copied to $f2"
	else
		echo "$f1 does not exist"
	fi
	;;
	4) echo "exit..."
	break
	;;
esac
