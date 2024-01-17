#! /usr/bin/bash

read -p "How many lines do you need: " lines


[ -f "./file.txt" ] && rm file.txt;
for i in $(seq 1 $lines);
do
    echo "$i $RANDOM" >> file.txt
done


read -p "Do you want to perform head operation (true or false) :" HO

WRONG_ENTRY=1

$HO \
&& while [ $WRONG_ENTRY -ge 1 ]
do
read -p "how many lines from top do you need: " HL
if [ $HL -le $lines ]; then
    echo "Accepted"
    ((WRONG_ENTRY=0))
else
    echo "Lines must not be greater than $lines"
fi
done 
[ $WRONG_ENTRY -eq 0 ] && head -n $HL file.txt > "head_$HL.txt"


read -p "DO you want to perform tail operation (true or false) :" TO

((WRONG_ENTRY=1))

$TO \
&& while [ $WRONG_ENTRY -ge 1 ]
do
read -p "How many lines from bottom do you need:" TL
if [ $TL -le $lines ]; then
    echo "Accepted"
    ((WRONG_ENTRY=0))
else    
    echo "Lines must not be greater than $lines"
fi
done 
[ $WRONG_ENTRY -eq 0 ] && tail -n $TL file.txt > "tail_$TL.txt"

read -p "DO you want to perform shuf operation (true ot false) :" SO

((WRONG_ENTRY=1))

$SO \
&& while [ $WRONG_ENTRY -ge 1 ]
do
read -p "How many lines do you need to shufffle:" SL
if [ $SL -le $lines ]; then
    echo "Accepted"
    ((WRONG_ENTRY=0))
else    
echo "Lines must not be greater than $lines"
fi
done
[ $WRONG_ENTRY -eq 0 ] && shuf -n $SL file.txt > "shuf_$SL.txt"




