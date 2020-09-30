#! /usr/bin/bash

function salaryOfEmp()  # How to create Function
{
  check=$(( RANDOM%3 ))  # How to get Random  value

  if [ $check -eq $isFullPresent ]
  then
    empHrs=8
  elif [ $check -eq $isHalfPresent ]
  then
    empHrs=4
  else
    empHrs=0
  fi
  salary=$(( empwage*empHrs ))  # Don't Repeat Your Code.
 echo $salary  # How to return value
}
function storeArray()
{
 echo "........Welcome To Employeee Wage Computation......"

 day=0
 totalHours=0
 while [ $day -lt $totalWorkingDays -a $totalHours -le $totalWorkingHrs ]
 do
    check=$(( RANDOM%3 ))
    case $check in  # How to Use switch case
    2)
      empHrs=8 ;;
    1)
      empHrs=4 ;;
    *)
      empHrs=0 ;;
  esac
   totalHours=$(( totalHours+empHrs ))
   totalWorks[$day]=$empHrs
   ((day++))
 done

 totalWages=0
 echo -e "Day\t\tHours\t\tDaillyWages"
 for (( i=0;i<day;i++ ))
 do
   echo -e "$(( i+1 ))\t\t${totalWorks[i]}\t\t$(( 20*totalWorks[i] ))"
   totalWages=$(( totalWages+totalWorks[i]*20 ))
 done
 echo "Total work hours : $totalHours"
 echo "Total Wages : $totalWages"

}
# Global Variables
totalWorkingDays=20
totalWorkingHrs=100
isFullPresent=2
isHalfPresent=1
empwage=20
valid=1

while [ $valid -gt 0 ]
do
  echo ""
  echo "Enter 0 to Exit"
  echo "Enter 1 to check also salary of part-time , FullTime and Absent Employer"
  echo "Enter 2 to Stroring Dailly Wage in Array"
  echo ""
  read -p "Enter your choice : " choice  #Read data one line command
  case $choice in   # switch case
  0)
    valid=0 ;;
  1)
    salary=$('salaryOfEmp')    #How to call function
    echo "Salary is : $salary" ;;
  2)
    storeArray ;;

  esac # End of switch case
done

