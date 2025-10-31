#!/bin/bash
#use of function
release_file=/etc/os-release
logfile=logfile
errorlog=errorlog

check_exit_status() {
	if [ $? -ne 0 ]
	then
		echo "an error occurred, please check the $errorlog file."
	fi
}
if grep -q "Arch" $release_file
then
	#the host is based on arch, run the pacman update command
	yes y | sudo pacman -Syu 1>>$logfile 2>>$errorlog
	check_exit_status
fi

if grep -q "Pop" $release_file || grep -q "Ubuntu" $release_file
then
	#the host is based on Ubuntu,,
	#run the apt version of the command
	sudo apt update 1>>$logfile 2>>$errorlog
	check_exit_status
	sudo apt dist-upgrade -y 1>> $logfile 2>>$errorlog
	check_exit_status
fi


