#! /usr/bin/bash 

read -p "Enter a Number : " number
if [ $number -eq 1 ]
then
word="ONE"
elif [ $number -eq 2 ]
then
word="TWO"
elif [ $number -eq 3 ]
then
word="THREE"
elif [ $number -eq 4 ]
then
word="FOUR"
elif [ $number -eq 5 ]
then 
word="FIVE"
elif [ $number -eq 6 ]
then
word="SIX"
elif [ $number -eq 7 ]
then
word="SEVEN"
elif [ $number -eq 8 ]
then
word="EIGHT"
elif [ $number -eq 9 ]
then
word="NINE"
else
word="ZERO"
fi
echo $word

