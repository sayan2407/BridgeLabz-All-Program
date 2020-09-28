#! /usr/bin/bash

function checkName()
{
 path="(^[a-zA-Z]{3,}$)"
 name=$1
 if [[ $name =~ $path ]]
 then
   echo "$name is valid Name"
 else
  echo "$name is not valid Name."
 fi
 echo ""
}
function checkPhone()
{
 pat="^(\+91)\\s{0,1}[6-9]{1}[0-9]{9}$"
 path="(0/91)?\\s?[6-9][0-9]{9}"
 #Begin with 0 or 91
 phone=$1
 if [[ $phone =~ $pat ]]
 then
   echo "$phone is valid"
 else
  echo "$phone is not valid"
 fi
 echo ""
}

function checkPin()
{
 path="^[1-9]{1}[0-9]{2}\\s{0,1}[0-9]{3}$"

 pin=$1
 if [[ $pin =~ $path ]]
 then
   echo "$pin  is valid PIN CODE"
 else
   echo "$pin is not valid PIN CODE"
 fi
 echo ""
}
function checkStrong()
{
 path="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&-+=()])(?=\\S+$).{8,}$"
 #path1="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
 path2="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})" 
 path3="^((?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z])).{8,}$"
 path4="^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[0-9]){1,})(?=(.*[!@#$%^&*()\-__+.]){1,}).{8,}$"
 path5="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*]).{8,}$" #BEST REGEx For Strong Password Match 
 
 pass=$1

 if [[ $pass =~ $path5 ]]
 then
  echo "$pass is strong"
 else
  echo "$Pass is not strong"
 fi
 echo ""
}

function checkAdhar()
{
 path="^[2-9]{1}[0-9]{3}\\s[0-9]{4}\\s[0-9]{4}$"
# adhar=$1
 if [[ ${adhar} =~ $path ]]
 then
   echo "${adhar} is Valid"
 else
   echo "${adhar} is not valid"
 fi
 echo ""
}

#Main
valid=1
while [ $valid -gt 0 ]
do
  echo "Enter 1 to check valid name."
  echo "Enter 2 to check valid surname."
  echo "Enter 3 to check Phone Number."
  echo "Enter 4 to check valid PIN Code"
  echo "Enter 5 to check password is Strong or Not."
  echo "Enter 6 to check Adhar Card Number Valid or Not"
  echo "Enter 7 to check Email valid or not".
  echo "Enter 0 to Exit."
  echo ""
  read -p "Enter Your Choice : " ch
  case $ch in
  1)
    read -p "Enter a Name : " name
    checkName $name ;;
  2)
    read -p "Enter a Surname:" lname
    checkName $lname ;;
  3)
    read -p "Enter your mobile number :" phone
    checkPhone $phone ;;
  4)
    read -p "Enter your PIN code : " pin
    checkPin $pin ;;
  5)
   read -p "Enter your password : " pass1
 #  checkStrong $pass ;;
   
  path5="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*]).{8,}$" #BEST REGEx For Strong Password Match

  if [[ $pass1 =~ $path5 ]]
 then
  echo " $pass is strong"
 else
  echo "$Pass is not strong"
 fi
 echo "" ;;


  6)
   read -p "Enter your Aadhar card number : " adhar
    path="^[2-9]{1}[0-9]{3}\\s[0-9]{4}\\s[0-9]{4}$"
# adhar=$1
   if [[ $adhar =~ $path ]]
   then
     echo "$adhar is Valid"
   else
     echo "$adhar is not valid"
   fi
   echo "" ;;
  7)
   read -p "Enter your email : " email
   path="^[a-z0-9]+[\._]?[a-z0-9]+[@]\w+[.]\w{2,3}$"
   path1="^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$"
   if [[ $email =~ $path1 ]]
   then
    echo "$email is valid"
   else
    echo "$email is not valid"
   fi
   echo "" ;;

  0)
    valid=0 ;;
  *)
    echo "Invalid Input" ;;
  esac
done
