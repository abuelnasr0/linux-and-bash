#! /usr/bin/bash

declare -a cars=("Tesla" "BMW" "Mercedes")

for car in "${cars[@]}"
do 
	echo "This ${car} is amazing"
done
