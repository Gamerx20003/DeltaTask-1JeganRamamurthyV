#! /bin/bash

cd /home/jay_jay

echo Enter Date 1 and Date 2 in yyyy-mm-dd format:
read date1 date2

if [ $# -eq 0 ]
then
  while IFS=" ""," read c1 c2 c3 c4
  do 
    finish=$(date +%s)
    start=$(date +%s -d '2019-09-27')
    now=$(c3 +%s)
    if [ $now -ge $start ] && [ $now -le $finish ]
      then
         continue
      else
         echo "$c1 was absent on $c3" >> attendance.txt
    fi
  done < /home/jegan/Desktop/attendance.log
else
  start=$(date +%s -d '$date1')
  finish=$(date +%s -d '$date2')

  while IFS=" ""," read g1 g2 g3 g4
   do
    now=$(date +%s -d "$g3")
      if [ $now -ge $start ] && [ $now -le $finish ]
        then
           continue
      else
           echo "$g1 was absent on $g3" >> attendance.txt
      fi
   done < /home/jegan/Desktop/attendance.log   
fi  


