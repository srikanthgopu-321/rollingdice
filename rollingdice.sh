#!/bin/bash
rolls=0
add=0

while(true)
do
        dice1=$((RANDOM%6+1))
        dice2=$((RANDOM%6+1))
        if [ $dice1 -eq 6 ] && [ $dice2 -eq 6 ]
        then
                break
        elif [ $dice1 -lt 6 -a $dice2 -lt 6 ]
        then
                rolls=$(($rolls + 1))
                add=$(($add + $dice1 + $dice2))
        fi
done

echo "add = $add"
echo "Total number of rolls= $rolls"

