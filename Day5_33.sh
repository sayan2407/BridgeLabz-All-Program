#! /usr/bin/bash -x
read -p "Enter a number :(1,10,100,1000)" num
if [ $num -eq 1 ]
then
ans="Unit"
elif [ $num -eq 10 ]
then
ans="Ten"
elif [ $num -eq 100 ]
then
ans="Hundred"
elif [ $num -eq 1000 ]
then 
ans="Thousand"
fi
echo $ans

