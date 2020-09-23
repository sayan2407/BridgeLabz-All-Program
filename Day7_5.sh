#! /usr/bin/bash
k=0
for (( i=0;i<=100;i++ ))
do
q=$i
check=-1
while [ $q -gt 0 ]
do
r=$(( q%10 ))
if [ $check -eq $r ]
then
   arr[$k]=$i
   ((k++))
   break
else
 check=$r
fi
q=$(( q/10 ))
done
done
for (( i=0;i<=k;i++ ))
do
 echo -n "${arr[$i]} "
done
