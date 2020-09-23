#! /usr/bin/bash
for (( i=1;i<=10;i++ ))
do
a[$i]=$(( RANDOM%1000 ))
done
echo ${a[@]}
max=${a[1]}
smax=$max
min=${a[1]}
smin=$min
for (( i=2;i<=10;i++ ))
do
 if [ ${a[$i]} -gt $max ]
 then
   smax=$max
   max=${a[$i]}
 fi
 if [ ${a[$i]} -lt $min ]
 then
   smin=$min
   min=${a[$i]}
 fi
 if [ ${a[$i]} -lt $max -a ${a[$i]} -gt $smax ]
 then
   smax=${a[$i]}
 fi
  if [ ${a[$i]} -gt $min -a ${a[$i]} -lt $smin ]
 then
   smax=${a[$i]}
 fi

done
echo "Second Highest : $smax"
echo "Second Minimum : $smin"
