#!/bin/bash -x
isPresent=1;
isAbsent=0;
isPartTime=2;
empCheck=$((RANDOM%3))
perDayHours=8
perHourWage=20
partTimeHours=4

if [ $empCheck -eq $isPresent ]
then
empPartTimeDailyWage=$(($perHourWage * $partTimeHours))
fi
echo $empPartTimeDailyWage
