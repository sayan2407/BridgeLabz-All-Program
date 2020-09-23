#! /usr/bin/bash
valid=1
head=0
tail=0
while [ $valid -gt 0 ]
do
  toss=$(( RANDOM%2 ))
  if [ $toss -eq 1 ]
  then
   ((head++))
  else
   ((tail++))
  fi
  if [ $head -eq 11 -o $tail -eq 11  ]
  then
    break
  fi
done
if [ $head -gt $tail ]
then
echo "Heads wins. Head score : $head"
else
echo "Tail wins. Tails score : $tail"
fi
