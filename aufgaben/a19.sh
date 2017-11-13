#! /bin/bash

for i in $(seq 456 675);
do
	case $[i % 16] in
		0) echo $i;;
		1,2,3,4,5) echo $i > stderr;;
		*) echo $i > /dev/null;;
	esac 
done

