#! /usr/bin/bash
max=0
min=999
for (( i=5;i>=1;i-- ))
do
random=$(( RANDOM%1000 ))
echo "$random"
if [ $random -gt $max ]
then
max=$random
fi
if [ $random -lt $min ]
then
min=$random
fi
done
echo "Max: $max and Min: $min"
