#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
isPresent=1
EmpWagePerHr=20
FullDayHr=8
Attendance=$((RANDOM%2))
if [ $isPresent -eq $Attendance ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
