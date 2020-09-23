#! /usr/bin/bash
echo "Guess a Number 0-100 "
l=0
h=100
valid=1
while [ $valid -gt 0 ]
do
  m=$(( (l+h)/2 ))
  echo "Enter 1 ,if your num is Greater than $m"
  echo "Enter 2, if your num is Less Than $m"
  echo "Enter 3,None of The above"
  echo ""
  echo "Enter your choice : "
  read ch
  case $ch in
  1)
   l=$(( m+1 )) ;;
  2)
   h=$(( m-1 )) ;;
  3)
   echo "HaHaHa, Your num is : $m"
   valid=0 ;;
  *)
    echo "Invalid Input, Try Again" ;;
  esac
done
