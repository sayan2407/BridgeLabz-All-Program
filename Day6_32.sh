#! /usr/bin/bash

function checkPalindrome() 
{
  num1=$1
  num2=$2
  q=$num1
  while [ $q -gt 0 ]
  do
   r=$(( q%10 ))
   rev=$(( rev*10+r ))
   q=$(( q/10 ))
  done
  if [ $rev -eq $num2 ]
  then 
    echo "Two numbers are palindrome"
  else
   echo "They are not Palindome"
  fi
}
read -p "Enter first number : " num1
read -p "Enter second number : " num2
checkPalindrome $num1 $num2
