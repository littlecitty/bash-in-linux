#!/bin/bash
#add like /etc, /bin ,etc

ls -lh $1



#another code
lines=$(ls -lh $1 | wc -l)

echo "you have $(($lines-1)) objects in the $1 directory."



