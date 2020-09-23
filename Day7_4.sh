#! /usr/bin/bash
read -p "Enter N : " n
for (( i=0;i<n;i++ ))
do
 read -p "Enter $i value : " arr[$i]
done
for (( i=0;i<$(( n-2 ));i++ ))
do
  for (( j=$(( i+1 ));j<$(( n-1 ));j++ ))
  do
    for (( k=$(( j+1 ));k<n;k++ ))
    do
      if [ $(( arr[$i]+arr[$j]+arr[$k] )) -eq 0 ]
      then
         echo "{${arr[$i]}+${arr[$j]}+${arr[$k]}==ZERO"
      fi
    done
  done
done
