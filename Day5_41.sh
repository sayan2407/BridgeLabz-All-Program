#! /usr/bin/bash
read -p "Enter a single digit : " n
case $n in
0)
word="ZERO" ;;
1)
word="ONE" ;;
2)
word="TWO" ;;
3)
word="THREE" ;;
4)
word="FOUR" ;;
5)
word="FIVE" ;;
6)
word="SIX" ;;
7)
word="SEVEN" ;;
8)
word="EIGHT" ;;
9)
word="NINE" ;;
esac
echo $word
