#!/bin/bash -x
echo "Welcome to gambler simulation ...!"

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
echo "Welcome To Gambling Simulation Problem ...!"

function toss()
{
<<<<<<< HEAD
	result=$((RANDOM%2 + 1))
	if(($result==1))
	then
		echo "OUTPUT IS HEAD"
    	add=1;
	elif(($result==2))
	then
		echo "OUTPUT IS TAIL"
    	sub=1;
	fi
=======
echo "Welcome to gambler simulation ...!"

function toss()
{
    tossResult=$((RANDOM % 2))
>>>>>>> uc4_20DaysGamePlayStatus
}

=======
echo "Welcome to gambler simulation ...!"

function toss()
{
    tossResult=$((RANDOM % 2))
}

>>>>>>> uc5_eachMonthWonLossDays
echo "How much percent of stake amount you want to take ?"
read stakeAmount

bet=0
winIncrement=1
lossIncrement=1
maxStake=200
minStake=0
won=1
loss=1
<<<<<<< HEAD
totalDays=20
=======
totalDays=30
>>>>>>> uc5_eachMonthWonLossDays

function winLossStatus()
{
    if(($tossResult==1))
    then
        money=`expr $money + $won`
        winIncrement=`expr $winIncrement + 1`
    else
        money=`expr $money - $loss`
        lossIncrement=`expr $lossIncrement + 1`
    fi
<<<<<<< HEAD
}

sum=0
totalBetAmount=2000
=======
	echo "Money is : $money"
}

sum=0
totalBetAmount=3000
>>>>>>> uc5_eachMonthWonLossDays

function profitLoss()
{
    for count in ${totalMoneyWon[@]}
    do
<<<<<<< HEAD
<<<<<<< HEAD
    	flip
        if(($result==1))
        then
        	echo "won $headIncrement time"
            money=`expr $money + $add`
            echo "money is $ $money"
            headIncrement=`expr $headIncrement + 1`
		elif(($result==2))
        then
        	echo "won $tailIncrement time"
            money=`expr $money - $sub`
            echo "money is $ $money"
            tailIncrement=`expr $tailIncrement + 1`
		fi
=======
function toss()
{
    tossResult=$((RANDOM % 2))
}

echo "How much percent of stake amount you want to take ?"
read stakeAmount

money=100
bet=0
winIncrement=1
lossIncrement=1
maxStake=200
minStake=0
won=1
loss=1

function winLossStatus()
{
    if(($tossResult==1))
    then
        money=`expr $money + $won`
        winIncrement=`expr $winIncrement + 1`
    else
        money=`expr $money - $loss`
        lossIncrement=`expr $lossIncrement + 1`
    fi
    echo "Money is : $money"
}

function winLoss()
{
	while(($money != maxStake || $money != minStake))
    do
    	toss
       	winLossStatus

        if(($money==maxStake))
        then
        	echo "--------------"
            echo "Won $maxStake"
            break
        elif(($money==minStake))
        then
        	echo "--------------"
            echo "Lost $minStake"
            break
        fi
>>>>>>> uc3_gamblerResignCondition

		winAmount=`expr $stakeAmount + 100`
        lossAmount=`expr 100 - $stakeAmount`
        bet=`expr $bet + 1`
        echo "number of bet is $bet"

<<<<<<< HEAD
       	if(($money == $winAmount))
=======
		if(($money == $winAmount))
>>>>>>> uc3_gamblerResignCondition
        then
        	echo "won $ $winAmount for $ $stakeAmount %"
            break
        elif(($money == $lossAmount))
        then
        	echo "lost $ $lossAmount for $ $stakeAmount %"
            break
        fi
	done
<<<<<<< HEAD

	echo "--------------------------------"
	echo "money for day $day is $ $money"
	totalMoneyWon+=( "$money" )
	echo "--------------------------------"
done
=======
        sum=`expr $sum + $count`
    done
    echo "-----------------------------------------------"
    echo "Total money won after playing 20 days is $ $sum, you bet $totalBetAmount"
    if(($sum<$totalBetAmount))
    then
        moneyLoss=`expr $totalBetAmount - $sum `
        echo "Total money loss in 20 days is $ $moneyLoss, YOU ARE IN LOSS."
    else
        exit
    fi
}
>>>>>>> uc4_20DaysGamePlayStatus

function winLoss()
{
	for((day=0; day<totalDays; day++))
	do
		days=`expr $day + 1`
		echo "----------DAY $days -------------"
		money=100
		while(($money != maxStake || $money != minStake))
    	do
        	toss
        	winLossStatus

        	if(($money==maxStake))
        	then
            	echo "Won $maxStake"
            	break
        	elif(($money==minStake))
        	then
            	echo "Lost $minStake"
            	break
        	fi

        	winAmount=`expr $stakeAmount + 100`
        	lossAmount=`expr 100 - $stakeAmount`
        	bet=`expr $bet + 1`

<<<<<<< HEAD
=======
    tossResult=$((RANDOM % 2))
}

money=100
bet=0
winIncrement=1
lossIncrement=1
maxStake=150
minStake=50
won=1
loss=1

function winLossStatus()
{
    if(($tossResult==1))
    then
        money=`expr $money + $won`
        winIncrement=`expr $winIncrement + 1`
    else
        money=`expr $money - $loss`
        lossIncrement=`expr $lossIncrement + 1`
    fi
    echo "Money is : $money"
}
=======
        sum=`expr $sum + $count`
    done
    echo "-----------------------------------------------"
    echo "Total money won after playing $totalDays days is $ $sum, you bet $totalBetAmount"

    if(($sum<$totalBetAmount))
    then
        moneyLoss=`expr $totalBetAmount - $sum `
        echo "Total money loss in $totalDays days is $ $moneyLoss, YOU ARE IN LOSS."
    else
        exit
    fi
}

function winLoss()
{
	for((day=0; day<totalDays; day++))
    do
    	days=`expr $day + 1`
        echo "----------DAY $days -------------"
        money=100
        while(($money != maxStake || $money != minStake))
        do
        	toss
            winLossStatus

            if(($money==maxStake))
            then
                echo "Won $maxStake"
                break
            elif(($money==minStake))
            then
                echo "Lost $minStake"
                break
            fi

            winAmount=`expr $stakeAmount + 100`
            lossAmount=`expr 100 - $stakeAmount`
            bet=`expr $bet + 1`

            if(($money == $winAmount))
            then
            	echo "Won $ $winAmount for $stakeAmount %"
                break
            elif(($money == $lossAmount))
            then
                echo "lost $ $lossAmount for $stakeAmount %"
                break
            fi
		done
        echo "money for day $days is $ $money"
        totalMoneyWon+=( "$money" )

		if(($money>100))
       	then
        	dayWon+=( "$days" )
        elif(($money<100))
        then
        	dayLoss+=( "$days")
       	fi
	done

	echo "Winning days are : ${dayWon[@]}"
	echo "Winning days are : ${dayLoss[@]}"
}
winLoss
profitLoss
>>>>>>> uc5_eachMonthWonLossDays

function winLoss() {
	while(($money != maxStake || $money != minStake))
    do
        toss
        winLossStatus

        bet=`expr $bet + 1`
        echo "Number of bet is $bet"

        if(($money==maxStake))
        then
                echo "--------------"
                echo "Won $maxStake"
                break
        elif(($money==minStake))
        then
                echo "--------------"
                echo "Lost $minStake"
                break
        fi
	done
}
winLoss
>>>>>>> uc2_winOrLooseCondition
=======
}
winLoss
>>>>>>> uc3_gamblerResignCondition
=======
        	if(($money == $winAmount))
       		then
            	echo "Won $ $winAmount for $stakeAmount %"
            	break
        	elif(($money == $lossAmount))
        	then
            	echo "lost $ $lossAmount for $stakeAmount %"
            	break
        	fi
		done
    	echo "money for day $days is $ $money"
    	totalMoneyWon+=( "$money" )
	done
}
winLoss
profitLoss
>>>>>>> uc4_20DaysGamePlayStatus
