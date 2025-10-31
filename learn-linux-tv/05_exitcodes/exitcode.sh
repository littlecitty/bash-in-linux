#to know the code any error or not
echo $? #if 0 the code ran other then 0 error like  1,2,etc



#!/bin/bash
#basic use of errorcode in pritacal
pk=htop
sudo pacman -S $pk
echo "the exit code for the package install is: $?"



#!/bin/bash
#using condition and using errorcode
pk=htop
sudo pacman -S $pk >> package_install_results.log
if [ $? -eq 0 ]
then
	echo "the installation of  $pk was successful."
	echo "the new command is available here:"
	which $pk
else
	echo "$pk failed to install." >> package_install_failed.log
fi



#correct way to use an exitcode
#use it after the condition immidately other wise it won't work
#!/bin/bash
dir=/notexit
if [ -d $dir ]
then
	echo "the exit code for this script   run is $?"
	echo "the directory  $dir exists."
else
	echo "the directory $dir doesn't exists."
fi
#now if you run $? here then the ifno will be false
#if dir existed  cause echo ran so $? will be 0
#even if there is error so use $? before echo



#to change exit code value on purpose
exit 0



#to change exit code for specific output for better report
#!/bin/bash
dir=/etc
if [ -d $dir ]
then
	echo "the directory $dir exists."
	exit 0 #in simple word just exit form code no code running furter
else
	echo "the directory $dir doesn't exist."
	exit 1
fi
echo "the exit code for this script run is: $?"
echo "you didn't see that statement."
echo "you won't see this one either."
