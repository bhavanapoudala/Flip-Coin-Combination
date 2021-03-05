#!/bin/bash -x
echo "hello world"
count=0
H=0
T=0
declare -A dict
while [ $count -lt 20 ]
do
coin=$((RANDOM%2))
if [ $coin -eq 1 ]
then
	H=$(($H+1))
        dict[$count]="HEADS"
else
	T=$(($T+1))
        dict[$count]="TAILS"
fi
((count++))

done
echo ${dict[@]}
echo "heads are: " $H
echo "tails are: " $T
percentageH=$((100*$H/20))
percentageT=$((100*$T/20))
echo "percentage of Heads is: " $percentageH
echo "percentage of Tails is: " $percentageT

