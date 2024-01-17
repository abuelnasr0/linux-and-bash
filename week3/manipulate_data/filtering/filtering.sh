#! /usr/bin/bash

declare -a cars=("BMW" "Tesla" "Ford")

read -p "Enter the number of random cars to generate: " NUM

find . -name 'cars.txt' -delete


#generating Random cars in a file
for i in $(seq 1 $NUM)
do 
    RANDOM_INDEX=$[ $RANDOM % 3 ]
    echo "$i ${cars[$RANDOM_INDEX]}" >> cars.txt
done


#counting the occurance of each car
for car in ${cars[@]}
do
    numcars=$(grep -c ${car} cars.txt)
    echo "num ${car} cars = " $numcars 
done


#generating files for each car
for car in ${cars[@]}
do  
    find . -name '${car}.txt' -delete
    echo "File for all ${car}s car genrated : ${car}.txt" 
    grep ${car} cars.txt > ${car}.txt
done


#generating files for not a $car
for car in ${cars[@]}
do  
    find . -name 'not_${car}.txt' -delete
    echo "File for all not_${car}s car genrated : not_${car}.txt" 
    grep -v ${car} cars.txt > not_${car}.txt
done

#generating files for two cars
for i in $(seq 0 $[ ${#cars[@]}-1 ])
do  
    for j in $(seq $[ ${i}+1 ] $[ ${#cars[@]}-1 ])

    do  
        find . -name '${cars[i]}_${cars[j]}.txt' -delete
        echo "File for all ${cars[i]}s and ${cars[j]}s cars genrated : ${cars[i]}_${cars[j]}.txt" 
        grep -e ${cars[i]} -e ${cars[j]} cars.txt > ${cars[i]}_${cars[j]}.txt

    done
done