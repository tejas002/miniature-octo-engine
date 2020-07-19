#!/bin/bash
echo 'Starting the scripts'
#sleep 5

#folder path
for file in /home/Downloads/testing/scripts/m/*
do
    echo "File path - $file"
    
    #generating the timestamp - DD-MM-YYYY-HH:MM:SS
    dt=$(date '+%d-%m-%Y-%H:%M:%S');
    
    #generating log file name
    logfilename=$file$dt
    
    echo "Current Time - $dt"
    echo "Log File Path - $logfilename"
    
    #making log directory
    mkdir $logfilename
    
    bash $file > ${logfilename}/$dt
    
    #sleep for 40 seconds
    sleep 40
done

echo 'Done!!!'
