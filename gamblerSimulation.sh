#!/bin/bash -x

echo "Welcome To Gambling Simulation Problem ...!"

function toss()
{
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
