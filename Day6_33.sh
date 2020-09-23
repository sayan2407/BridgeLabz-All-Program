#! /usr/bin/bash
function palindrome()
{
a=$1
q=$a
rev=0
while [ $q -ne 0 ]
do
 r=$(( q%10 ))
 rev=$(( rev*10+r ))
 q=$(( q/10 ))
done
if [ $rev -eq $a ]
then
echo "$a is Palindrome."
isPrim $a
else
echo "$a is not palindrome"
fi
}
function isPrim()
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
    echo "$num is a Prime Number."
   else
   echo "$num is Not A Prime Number"
   fi
}


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
    echo "$num is a Prime Number."
    palindrome $num  
   else
   echo "$num is Not A Prime Number"     
   fi
}
read -p "Enter a number : " num
isPrime $num
