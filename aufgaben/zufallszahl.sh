#!/bin/bash

wert=$1
if [ $# -gt 1 ] &&  [ $1 -lt 1 ]
then
	
	echo "Parameter falsch"
	exit 1
else
	wert=30
fi	


for ((i=0;i<$wert;i++))
do
	echo $((RANDOM % 500+1))
done
exit 0
	 

