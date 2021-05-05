#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
isPresent=1
isPartPresent=2
EmpWagePerHr=20
FullDayHr=8
PartDayHr=4
TotalSalary=0
MonthlySalary=0
Attendance=$((RANDOM%3))
case $Attendance in
   	    $isPresent) echo "Employee is Present"
			;;
	$isPartPresent) echo "Employee is Parttime Present"
			;;
		     *) echo "Employee is Absent"
			;;
esac
case $Attendance in
	    $isPresent)	TotalSalary=$(($TotalSalary + ($EmpWagePerHr*$FullDayHr)))
			MonthlySalary=$(($TotalSalary*20))
		   	echo "Monthly salary : $MonthlySalary"
			;;
	$isPartPresent)
			TotalSalary=$(($TotalSalary + ($EmpWagePerHr*$PartDayHr)))
        		echo $TotalSalary
			;;
		     *)	echo $TotalSalary
			;;
esac
