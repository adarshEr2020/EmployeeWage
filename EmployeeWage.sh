#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
isPresent=1
isPartPresent=2
EmpWagePerHr=20
FullDayHr=8
PartDayHr=8
TotalSalary=0
Attendance=$((RANDOM%3))
if [ $isPresent -eq $Attendance ]
then
	echo "Employee is Present"
	TotalSalary=$(($FullDayHr * $EmpWagePerHr))
	echo $TotalSalary
elif [ $isPartPresent -eq $Attendance ]
then
	echo "Employee is Parttime Present"
	TotalSalary=$(($FullDayHr * $EmpWagePerHr))
        echo $TotalSalary
else
	echo "Employee is Absent"
        echo $TotalSalary
fi
