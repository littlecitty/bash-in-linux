#basic update script
#!/bin/bash
if [ -d /etc/pacman.d ]
then
	# the host is based on arch, run the pacman update command
	sudo pacman -Syu
fi

if [ -d /etc/apt ]
then
	#the host is based on debian or ubuntu,
	#run the apt version of the command
	sudo apt update
	sudo apt dist-upgrade
fi



#basic+ update script
#!/bin/bash
release_file=/etc/os-release
if grep -q "Arch" $release_file
then
	# the host is based on arch, run the pacman update command
	sudo pacman -Syu
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
	#the host is based on debian or ubuntu,
	#run the apt version of the command
	sudo apt update
	sudo apt dist-upgrade
fi


