#! /usr/bin/bash -x 
read -p "Enter N : " n
for (( i=2 ; i<=$n ;i++ ))
do
  b=0
  for (( j=2 ; j<=$(( i/2 )) ;j++ ))
  do
    if [ $(( i % j )) -eq 0 ]
    then
      b=1
      break
    fi
  done
  if [ $b -eq 0 ]
  then
    echo -n "$i "
  fi
done
