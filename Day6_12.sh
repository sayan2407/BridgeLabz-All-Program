n=$1
#read -p "Enter N : " n
sum=0
for (( i=1;i<=$n;i++ ))
do
sum=$(echo "scale=2;sum+(1/$i)" | bc -q ) 
done
echo $sum
