#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
isPresent=1
isPartPresent=2
EmpWagePerHr=20
TotalSalary=0
MonthlySalary=0
MaxHrInMonth=100
NumWorkingDays=20

TotalEmpHr=0
TotalWorkingDays=0
Attendance=$((RANDOM%3))
case $Attendance in
   	    $isPresent) echo "Employee is Present"
			EmpHr=8
			;;
	$isPartPresent) echo "Employee is Parttime Present"
			EmpHr=4
			;;
		     *) echo "Employee is Absent"
			;;
esac
function getWorkingHr()
{
	 case $1 in
                    $isPresent) EmpHr=8
                                ;;
                $isPartPresent) EmpDayHr=4
                                ;;
                             *) EmpHr=0
                                ;;
        esac

}
while [[ $TotalEmpHr -lt $MaxHrInMonth && $TotalWorkingDays -lt $NumWorkingDays ]]
do
	((TotalWorkingDays++))
	getWorkingHr $Attendance
	TotalEmpHr=$(($TotalEmpHr+$EmpHr))
done
TotalSalary=$(($TotalEmpHr*$EmpWagePerHr))
echo $TotalSalary
