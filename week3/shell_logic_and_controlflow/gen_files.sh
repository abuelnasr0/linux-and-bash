#! /usr/bin/bash

read -p "Enter number of files to create: " NUM_FILES

for i in $(seq 1 $NUM_FILES);
do  
    echo "file$i create"
    echo "" > "file$i.txt"
done