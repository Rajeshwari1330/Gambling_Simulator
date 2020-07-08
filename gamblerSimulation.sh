#!/bin/bash -x

echo "Welcome to gambler simulation ...!"

function toss()
{
    tossResult=$((RANDOM % 2))
}

echo "How much percent of stake amount you want to take ?"
read stakeAmount

bet=0
winIncrement=1
lossIncrement=1
maxStake=200
minStake=0
won=1
loss=1
totalDays=30

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

sum=0
totalBetAmount=3000

function profitLoss()
{
    for count in ${totalMoneyWon[@]}
    do
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
	echo "My luckiest days are my winning days : ${dayWon[@]}"
	echo "Winning days are : ${dayLoss[@]}"
	echo "My unluckiest days are my loosing days : ${dayLoss[@]}"
}
winLoss
profitLoss
