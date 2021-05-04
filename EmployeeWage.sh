#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
isPresent=1
isPartPresent=2
EmpWagePerHr=20
FullDayHr=8
PartDayHr=8
WorkingDayPerMonth=20
TotalSalary=0
Attendance=$((RANDOM%3))
case $Attendance in
	    $isPresent) echo "Employee is Present"
			TotalSalary=$(($FullDayHr * $EmpWagePerHr * $WorkingDayPerMonth))
		   	echo $TotalSalary
			;;
	$isPartPresent) echo "Employee is Parttime Present"
			TotalSalary=$(($FullDayHr * $EmpWagePerHr * $WorkingDayPerMonth))
        		echo $TotalSalary
			;;
		     *) echo "Employee is Absent"
        		echo $TotalSalary
			;;
esac
