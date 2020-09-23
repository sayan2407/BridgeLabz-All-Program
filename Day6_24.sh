#! /usr/bin/bash
money=100
valid=1
win=0
lost=0
while [ $valid -gt 0 ]
do
  toss=$(( RANDOM%2 ))
   if [ $toss -eq 1 ]
   then
     ((money++))
     ((win++))
   else
     ((money--))
     ((lost++))
   fi
   if [ $money -eq 0 -o $money -eq 200 ]
   then
     break
   fi
done
if [ $money -eq 200 ]
then
echo "He won.His money : $money . $win time and lost $lost times"
else
echo "He lost.His Money : $money . $lost times lost and won $win times"
fi
