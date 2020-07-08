#!/bin/bash -x
echo "Welcome to gambler simulation ...!"

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

		winAmount=`expr $stakeAmount + 100`
        lossAmount=`expr 100 - $stakeAmount`
        bet=`expr $bet + 1`
        echo "Number of bet is $bet"

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
}
winLoss
