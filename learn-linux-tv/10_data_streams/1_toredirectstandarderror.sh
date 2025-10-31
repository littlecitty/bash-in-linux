#!/bin/bash
#standard output are those output which do not have normal error like: ls
#standard error are mostly permission realated error like: normal user try to access rote -f
find /etc -type f
find /etc -type f 2> /dev/null #it will only print standard output
find /etc -type f > /dev/null #it will  only pring  standard error
find /etc -type f 1>find_results.txt 2>find_errors.txt #1 for se. 2 for so.



#eg: use of redirecting error and code exuction success messages.
release_file=/etc/os-release
logfile=logfile
errorlog=errorlog

if grep -q "Arch" $release_file
then
	#the host is based on arch, run the pacman update command
	yes y | sudo pacman -Syu 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]
	then
		echo "an error occured, please check the $errorlog file."
	fi
fi

if grep -q "Pop" $release_file || grep -q "Ubuntu" $release_file
then
	#the host is based on Ubuntu,,
	#run the apt version of the command
	sudo apt update 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]
	then
		echo "an error occured, please check the $errorlog file."
	fi
	sudo apt dist-upgrade -y 1>> $logfile 2>>$errorlog
	if [ $? -ne 0 ]
	then
		echo "an error occured, please check the $errorlog file."
	fi
fi



#super basic standard input

echo "please enter your name: "
read myname
echo "your name is : $myname"

