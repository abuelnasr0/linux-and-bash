#! /usr/bin/bash

read -p "Enter your food: " FOOD

if [ "$FOOD" = "Apple" ]; then
	echo "Eat yogurt with your apple"
elif [ "$FOOD" = "Milk" ]; then
	echo "Eat bread with your milk"
else 
	echo "Eat your food yourself"
fi
