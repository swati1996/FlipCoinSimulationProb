#!/bin/bash  
WIN=11
heads=0
tails=0
while (( $heads < $WIN & $tails < $WIN ))
do
number=$((RANDOM%2))

if [ $number -eq 0 ]
then
	((heads++))
else

	((tails++))
fi
done

echo "Heads win $heads times"
echo "Tails win $tails time"

