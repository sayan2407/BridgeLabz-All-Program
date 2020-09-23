#! /usr/bin/bash -x
read  -p "Enter first number" a
read  -p "Enter second number" b
read  -p "Enter third number" c
result1=$(( a+b*c ))
result2=$(( a%b+c ))
result3=$(( c+a/b ))
result4=$(( a*b+c ))
max=$a
min=$a
if [ $b -gt $max ]
then
max=$b
fi
if [ $c -gt $max ]
then
max=$c
fi
echo "Maximum is : $max"
if [ $b -lt $min ]
then
min=$b
fi
if [ $c -lt $min ]
then
min=$c
fi
echo "Minimum is : $min"
