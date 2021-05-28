#!/bin/bash 
WIN=21
heads=0
tails=0

function match(){
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
}
match 
if [ $heads == $tails ]
then
echo "It's a tie"
((heads=heads-1))
((tails=tails-2))
match
fi
if [[ $heads < $tails  ]]
then
echo "Tails win by $(($tails-$heads))"
else
echo "Heads win by $(($heads-$tails))"
fi



