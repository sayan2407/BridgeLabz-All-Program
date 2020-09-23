function factorial()
{
 n=$1
 fact=1
 for (( i=$n;i>1;i-- ))
 do
   fact=$(( fact*i ))
 done
 echo $fact
}
read -p "Enter a number for Factorial :" num
fact="$( factorial $num )"
echo "Factorial is : $fact"
