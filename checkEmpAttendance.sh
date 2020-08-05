#!/bin/bash -x
isPresent=1;
isAbsent=0;
checkRandom=$((RANDOM%2))
if [ $checkRandom -eq $isPresent ]
then
echo 'employee present'
else
echo 'employee is absent'
fi
