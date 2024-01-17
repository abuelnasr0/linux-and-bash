#! /usr/bin/bash

read -p "Do you want to run the for loop (true or false): " RFL

declare -a fruits=("Orange" "Apple")

$RFL\
&& for fruit in ${fruits[@]};
do
	echo "${fruit}"
done

read -p "Do you want to run the while loop (true or false):" RWL

$RWL\
&& read -p "NUM iterations: " iterations\
&& count=1\
&& while [ $count -le $iterations ];
do
	echo "$count iteration"
	((count++))
done

read -p "Do you want to run the If statement (true or false):" RIS

$RIS\
&& read -p "Enter the car you want: " car

if [ "$car" = "BMW" ]; then
	echo "$car in stock"
elif [ "$car" = "Tesla" ]; then
	echo "$car in stock hurry up!"
else
	echo "$car not in stock"
fi


