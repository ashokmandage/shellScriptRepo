#!/bin/bash -x
wagePerHour=20;
fullDayHour=8;

totalWagePerDay=$(($wagePerHour * $fullDayHour));
echo $totalWagePerDay
