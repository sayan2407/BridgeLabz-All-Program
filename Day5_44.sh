#! /usr/bin/bash 
b=1
while [ $b -gt 0 ]
do
echo "Enter 1 to Feet to Inch"
echo "Enter 2 to Feet to Meter"
echo "Enter 3 to Inch to Feet"
echo "Enter 4 to Meter to Feet"
echo ""
read -p "Enter your choice : " ch
case $ch in
1)
read -p "Enter Feet : " i
ans=$(( i*12 ))
unit="Inch" ;;
2)
read -p "Enter Inch : " i
ans=$(( i/12 ))
unit="Feet" ;;
3)
read -p "Enter Feet : " i
ans=$(( i*3 ))
unit="Meter" ;;
4)
read -p "Enter Meter : " i
ans=$(( i/3 ))
unit="Feet" ;;
5)
b=0 ;;
*)
ans="Invalid"
unit="Input" ;;
esac
echo "$ans $unit"
done
