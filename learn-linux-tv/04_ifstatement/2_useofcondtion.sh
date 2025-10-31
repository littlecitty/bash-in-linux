#to check the file exist in directory or not
#!/bin/bash
if [ -f ~/myfile ] #-f is file and -d for directory
then
	echo "the file exists."
else
	echo "the  file does not exist."
fi
