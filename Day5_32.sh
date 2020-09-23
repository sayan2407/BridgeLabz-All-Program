#! /usr/bin/bash 
read -p "Enter week day number(1-7) :" week
if [ $week -eq 1 ]
then
day="MONDAY"
elif [ $week -eq 2 ]
then
day="TUESDAY"
elif [ $week -eq 3 ]
then
day="WEDNESDAY"
elif [ $week -eq 4 ]
then 
week="THURSDAY"
elif [ $week -eq 5 ]
then
week="FRIDAY"
elif [ $week -eq 6 ]
then
week="SATURDAY"
elif [ $week -eq 7 ]
then
week="SUNDAY"
else
week="INVALID INPUT"
fi
echo $week
