# /usr/bin/bash
function isPrime()
{
 num=$1
 b=0
 for (( i=2;i<=$(( num/2 ));i++ ))
 do
   if [ $(( num%i )) -eq 0 ]
   then
     b=1
     break
   fi
 done
 if [ $b -eq 0 ]
  then 
    echo 1
  else
    echo 0
 fi
}
k=0
read  -p "Enter a Number : " num
for (( i=2;i<=$num;i++ ))
do
  if [ $(( num%i )) -eq 0 ]
  then
      v="$( isPrime $i )"
      if [ $v -eq 1 ]
      then
        a[$k]=$i
        ((k++))
      fi
  fi
done
if [ $k -eq 0 ]
then
  echo "No Prime Factors"
else
  echo ${a[@]}
fi
