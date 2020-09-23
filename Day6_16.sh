#! /usr/bin/bash 

function isPrime()
{
 num=$1
 b=0
 for(( i=2;i<$num;i++ ))
 do
   if [ $(( num%i )) -eq 0 ]
   then
    b=1
    break
   fi
done
   if [ $b -eq 0 ]
   then
    echo 0
   else
    echo 1
   fi
}

read -p "Enter a Number : " num
if [ $num -gt 1 ]
then
 for (( i=2;i<=num;i++ ))
 do
   if [ $(( num%i )) -eq 0 ]
   then
     a="$( isPrime $i )"
     if [ $a -eq 0 ]
     then
        echo -n "$i "
     fi
  fi
 done
else
echo "Invalid"
fi
