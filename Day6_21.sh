#! /usr/bin/bash
n=$1
for (( i=1;i<=$n;i++ ))
do
  ans=$(( 2**i ))
  if [ $ans -eq 256 ]
  then
  break
  fi
  echo "2^$i = $ans"
done
