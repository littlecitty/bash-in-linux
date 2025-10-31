#!/bin/bash
#2basic use of case statement
finished=0
while [ $finished -ne 1 ]
do
	echo "what's you favourate linux distro?"
	echo "1 - arch"
	echo "2 - centos"
	echo "3 - debian"
	echo "4 - mint"
	echo "5 - ubuntu"
	echo "6 - something else..."
	echo "7 - exit the script."

	read distro;

	case $distro in
		1) echo "arch is a rolling release.";;
		2) echo "centos is popular on servers.";;
		3) echo "debian is a community distribution.";;
		4) echo "mint is popular on desktops and laptops.";;
		5) echo "ubuntu  is popular on both servers and computers.";;
		6) echo "there are many distributions out there.";;
		7) finished=1;;	
		*) echo "you didn't  enter an appropriate choice."
	esac
done
echo "thx for uing this script."
