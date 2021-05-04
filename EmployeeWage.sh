#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
isPresent=1
EmpWagePerHr=20
FullDayHr=8
Attendance=$((RANDOM%2))
TotalSalary=0
if [ $isPresent -eq $Attendance ]
then
	echo "Employee is Present"
	TotalSalary=$(($FullDayHr * $EmpWagePerHr))
	echo "$TotalSalary"
else
	echo "Employee is Absent"
	echo "$TotalSalary"
fi
