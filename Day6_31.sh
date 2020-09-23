valid=1
while [ $valid -gt 0 ]
do
echo "Enter 1 to degC to degF"
echo "Enter 2 to degF to degC"
echo "Enter 3 to Exit"
read -p "Enter your choice : " ch
case $ch in
1)
read -p "Enter degC : " degC
#degC=37.7
degF=$(echo "scale = 2; 9*$degC/5+32" | bc -q)
echo $degF "F" ;;
2)
read -p "Enter degF : " degF
#degF=99.86
degC=$(echo "scale = 2; (5/9)*($degF-32) " | bc -q)
echo $degC "C" ;;
3))
valid=0 ;;
esac
done
