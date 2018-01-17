#!/bin/bash

echo "" > 100.log
echo "" > 200.log
echo "" > 300.log
echo "" > 400.log
echo "" > 500.log

wert=30
if [ $# -gt 1 ] &&  [ $1 -lt 1 ]
then
	
	echo "Parameter falsch"
	exit 1
elif [ $# -eq 1 ]
then 
	wert=$1
fi	

echo $wert
for ((i=0;i<$wert;i++))
do
	num=$((RANDOM % 500+1))
	case 1 in
		$(($num<100))) echo $num >> 100.log;;
		$(($num<200))) echo $num >> 200.log;;
		$(($num<300))) echo $num >> 300.log;;
		$(($num<400))) echo $num >> 400.log;;
		$(($num<500 && $num>=400))) echo $num >> 500.log;;
	esac;

done
exit 0
	 

