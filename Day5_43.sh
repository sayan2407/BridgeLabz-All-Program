#! /usr/bin/bash
read -p "Enter a number :(1,10,100,1000)" num
case $num in
1)
ans="Unit" ;;
10)
ans="Ten" ;;
100)
ans="Hundred" ;;
1000)
ans="Thousand" ;;
esac
echo $ans

