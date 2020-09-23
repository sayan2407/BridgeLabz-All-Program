#! /usr/bin/bash
sum=0
for (( i=1;i<=5;i++ ))
do
random=$(( RANDOM%100 ))
sum=$(( sum+random ))
done
echo "Sum of 5 Random No. is : $sum"
#echo "Average is : $(( sum/5 ))"
echo "Average is : $(echo "scale=2;$sum/5" | bc -q )"
