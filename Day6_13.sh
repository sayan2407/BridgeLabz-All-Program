function isPrime()
{
 num=$1
 b=1
 for (( i=2;i<=$(( num/2 ));i++ ))
 do
   if [ $(( num%i )) -eq 0 ]
   then
     b=0
     break
   fi
 done
 if [ $b -eq 1 ]
 then
    echo 1
 else
    echo 0
 fi
}

read -p "Enter a Number : " num
check="$( isPrime $num )"
if [ $check -eq 1 ]
then
 echo "$num is a Prime Number"
else
 echo "$num is Not Prime"
fi
