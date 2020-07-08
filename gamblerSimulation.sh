#!/bin/bash -x
echo "Welcome to gambler simulation ...!"

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
}

echo "Which do you want to choose:"
echo "---------------"
echo "1.HEAD"
echo "2.TAIL"
read user

echo "Till how much percentage of the amount you want to play?"
read stakeAmount
totalDays=21

for((day=1; day<totalDays; day++))
do
	echo "----------DAY $day -------------"

    headIncrement=1
    tailIncrement=1
    money=100

   	echo "I have $ 100 with me"
    bet=0
    echo "I will bet $ 1 now"

    while(($money != 200 || $money != 0))
    do
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

sum=0
for count in ${totalMoneyWon[@]}
do
    sum=`expr $sum + $count`
done

echo "-----------------------------------------------"
echo "Total money won after playing 20 days is $ $sum"
echo "---------------------------------------------"
echo "you bet $ 2000"
if(($sum<2000))
then
    moneyLoss=`expr 2000 - $sum `
    echo "Total money loss in 20 days is $ $moneyLoss"
    echo "Your are in loss"
else
    exit
fi


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
