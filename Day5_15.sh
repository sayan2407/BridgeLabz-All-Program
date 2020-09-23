#! /usr/bin/bash
foot=12 #inch
echo "42Inch=$(( 42/$foot )) foot"
foot=0.3048 #meter
echo "Area of rectangle is foot2 : $(( 60*40 ))"
echo $(echo )
echo "Area of rectangle in meter2 : $(echo "scale=2; 60*$foot*40*$foot" |bc -q)"
