#! /usr/bin/bash

read -p "Enter number of loops: " LOOPS

COUNT=1
while [ $COUNT -le $LOOPS ]
do
	echo "$COUNT iteration"
	((COUNT++))
done
