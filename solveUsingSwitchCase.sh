#!/bin/bash -x
isFullTime=1
isPartTime=2;
ratePerHour=20;
empCheck=$((RANDOM%3))

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
empWage=$(( $ratePerHour * $empHours))
echo $empWage
