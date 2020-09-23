#! /usr/bin/bash
declare -A dice
for (( i=1;i<=6;i++ ))
do
 dice+=([$i]=0)
done
echo ${dice[@]}
valid=1
while [ $valid -gt 0 ]
do
roll=$(( RANDOM%6+1 ))
#((dice[$roll]++))
dice[$roll]=$(( dice[$roll]+1 ))
if [ ${dice[$roll]} -eq 10 ]
then
  break
fi
done
echo ${dice[@]}
echo ${!dice[@]}
echo "Max is : $roll"
min=${dice[1]}
roll=1
for (( i=2;i<=6;i++ ))
do
  if [ ${dice[$i]} -lt $min ]
  then
    min=${dice[$i]}
    roll=$i
  fi
done
echo "Min : $roll"
