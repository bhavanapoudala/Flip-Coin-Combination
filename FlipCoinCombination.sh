#!/bin/bash -x

coin=$((RANDOM%2))
if [ $coin -eq 1 ]
then
	echo "HEADS"
else
	echo "TAILS"
fi


