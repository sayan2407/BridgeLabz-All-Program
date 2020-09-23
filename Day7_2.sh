#! /usr/bin/bash  
echo "Before sorting Array : "
for (( i=0 ; i<10 ;i++ ))
do
a[i]=$(( RANDOM % 1000 ))
echo -n "${a[i]} "
done
echo ""
for (( i=0;i<9;i++ ))
do
  for (( j=$i+1 ;j<10 ; j++ ))
  do
   if [ ${a[i]} -gt ${a[j]} ]
   then
    temp=${a[i]}
    a[i]=${a[j]}
    a[j]=$temp
   fi
  done
done
echo "After Sorting :"
for (( i=0;i<10;i++ ))
do
 echo -n "${a[i]} "
done
echo ""
echo "Second Largest : ${a[8]}"
echo "Second Minimum : ${a[1]}"
  

