isPartTime=1
isfullTime=2
totalSalary=0
empRatePerHr=20
numWorkingDays=0
hrcheck=0
while [ $hrcheck -le 100 ] || [  $numWorkingDays -le 20 ]
do
        empCheck=$((RANDOM%3));
                case $empCheck in
                        $isfullTime)
                                empHr=8
                                ;;
                        $isPartTime)
                                empHr=4
                                ;;
                        *)
                        empHr=0
                                ;;
                esac
    ((numWorkingDays++))
      hrcheck=$(($hrcheck+$empHr))
      salary=$(($empHr*$empRatePerHr))
      totalSalary=$(($totalSalary+$salary))

done
echo "Total salay ="$totalSalary
echo "Emlpoyee working days = $numWorkingDays  & hours = $hrcheck "
