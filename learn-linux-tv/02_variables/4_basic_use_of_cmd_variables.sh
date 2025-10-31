#basic use of variable used as command and environment variable
#environment variable are all in cap like: $USER
#!/bin/bash
name="jay the boss"
now=$(date)
echo "hello $name"
echo "the system time and date is:"
echo $now
echo "your username is: $USER"
