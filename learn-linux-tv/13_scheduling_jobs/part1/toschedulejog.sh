#!/bin/bash
#atq #to know how many command are scheduled
#atrm no. #to remove on. no of the schedule
#at 18:00 081622 -f ./filename.sh #time    month,date,year 
#at 15:32 -f ./filename.sh #to run file today

logfile=job_results.log

/usr/bin/echo "the script ran at the following time: $(/usr/bin/date)" > $logfile
#use full path if possoble best pratice #use which to find location of file
