#!/bin/bash

#Bash is much complex than Python, as it can be seen comparing this script
#whith the other one. Nice exercise.


for num in {1..100}
do
	if [ $(expr $num % 3) == "0" ] && [ $(expr $num % 5) == "0" ]
	then
		echo "$num = fizzbuzz"
	elif [ $(expr $num % 3) == "0" ] 
	then
		echo "$num = fizz"
	elif [ $(expr $num % 5) == "0" ]
	then
		echo "$num = buzz"
	fi
done
