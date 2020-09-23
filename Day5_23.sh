#! /usr/bin/bash
read -p "Enter a Year : " year 

if [ $(( year%4 )) -eq 0 -a $(( year%100 )) -ne 0 -o $(( year%400 )) -eq 0 ] 
then 
echo "$year is LEAP YEAR"
else
echo "$year is not a LEAP YEAR"
fi
