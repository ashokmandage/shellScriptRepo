#!/bin/bash -x
isFullTime=1
isPartTime=2;
ratePerHour=20;
empCheck=$((RANDOM%3))
monthWorkingDays=20;
addingWage=0
totalEmpWorkDays=0


        function getWorkHours () {
        echo $empCheck
        if [ $empCheck -eq 1 ]
        then
        totalEmpWorkDays+=1;
        fi
        }


for (( i=1;i<=$monthWorkingDays;i++))
do
	echo $empCheck
        funResult="$(getWorkHours)"
        echo $funResult

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

echo $totalEmpWorkDays
empWageForMonth=$(($addingWage * $monthWorkingDays))
echo $empWageForMonth
