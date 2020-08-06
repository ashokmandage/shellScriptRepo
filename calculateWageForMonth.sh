#!/bin/bash -x
isFullTime=1
isPartTime=2;
ratePerHour=20;
empCheck=$((RANDOM%3))
monthWorkingDays=20;
addingWage=0
for (( i=1;i<=$monthWorkingDays;i++))
do
case $empCheck in
        $isPartTime)
        empHours=4;
        ;;
        $isFullTime)
        empHours=8;
        ;;
        *)
        empHours=0
        ;;
esac
dailyEmpWage=$(( $ratePerHour * $empHours))
addingWage=$(($addingWage + $dailyEmpWage))
done

empWageForMonth=$(($addingWage * $monthWorkingDays))
echo $empWageForMonth
