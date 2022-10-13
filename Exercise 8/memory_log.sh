#!/usr/bin/bash

path=/home/vagrant/memory_logs/log_file.log

touch ${path}

timeOut=$(date +%H%M)

if [[ $timeOut -eq 0000 ]];
 then echo "Here is your midnight RAM report" | mutt -s "Midnight RAM report" ->

else

date >> ${path}

free -h >> ${path}

echo "____" >> ${path}

fi
