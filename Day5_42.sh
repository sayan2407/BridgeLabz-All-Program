#! /usr/bin/bash 
read -p "Enter a week number :" num
case $num in
 1)
  word="MONDAY" ;;
 2)
  word="TUESDAY" ;;
 3)
  word="WEDNESDAY" ;;
 4)
  word="THURSDAY" ;;
 5)
  word="FRIDAY" ;;
  6)
  word="SATAURDAY" ;;
  7)
  word="SUNDAY" ;;
  *)
  word="INVALID INPUT"
esac
echo $word
