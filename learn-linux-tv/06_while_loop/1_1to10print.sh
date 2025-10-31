#to print 1 to 10 using while loop
#!/bin/bash
myvar=1
while [ $myvar -le 10 ] #-le eq to less then or equal to <=
do
	echo $myvar
	myvar=$(($myvar + 1)) #copy past this no change other wire no working
	sleep 0 #suitable 0.5
done



#baby version to check the file exist or not using while
#!/bin/bash
while [ -f ~/testfile ]
do
	echo "the test file exists."
	sleep 5
done
echo "the file no longer exists. exiting."



#medium baby version to check the file exist or not using while
#!/bin/bash
while [ -f ~/testfile ]
do
	echo "as of $(date), the test file exists."
	sleep 5
done
echo "as of $(date), the file no longer exists. exiting."

