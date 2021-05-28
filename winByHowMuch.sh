#!/bin/bash -x
WIN=21
heads=0
tails=0
while (( $heads < $WIN || $tails < $WIN  ))
do
number=$((RANDOM%2))

if [ $number -eq 0 ]
then 
        ((heads++))
else

        ((tails++))
fi
done
if [ $heads == $tails ]
then
 echo "It's a tie"
elif [[ $heads < $tails  ]]
then
echo "Tails win by $(($tails-$heads))"
else
echo "Heads win by $(($heads-$tails))"
fi



