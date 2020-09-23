#! /usr/bin/bash 

echo -e "Enter Day(dd) : \c"
read date
echo -e "Enter Month(mm): \c"
read month
if [ $month -ge 3 -o $month -le 6 ]
then
 if [ $date -ge 20 -a $date -le 31 -a $month -eq 3 ]
 then 
  b="TRUE"
 elif [ $date -ge 1 -a $date -le 30 -a $month -eq 4 ]
 then
  b="TRUE"
 elif [ $date -ge 1 -a $date -le 31 -a $month -eq 5 ]
 then
 b="TRUE"
 elif [ $date -ge 1 -a $date -le 20 -a $month -eq 6 ]
 then
 b="TRUE"
 else
 b="FALSE"
 fi 
else
 b="FALSE"
fi
echo $b

