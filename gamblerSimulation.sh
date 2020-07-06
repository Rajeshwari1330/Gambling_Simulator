#!/bin/bash -x

echo "Welcome To Gambling Simulation Problem ...!"

function flip()
{
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
read userInput

headIncrement=1
tailIncrement=1
money=100
echo "I have $ 100 with me"
bet=0
echo "I will bet $ 1 now"

winAmount=150
looseAmount=0
while(($money != winAmount || $money != looseAmount))
do
	flip
    if(($result==1))
    then
    	echo "Won $headIncrement time"
        money=`expr $money + $add`
        echo "Money is $money"
        headIncrement=`expr $headIncrement + 1`

	elif(($result==2))
    then
    	echo "Won $tailIncrement time"
        money=`expr $money - $sub`
       	echo "Money is $money"
        tailIncrement=`expr $tailIncrement + 1`
    fi

    bet=`expr $bet + 1`
    echo "Number of bet is $bet"

    if(($money==winAmount))
    then
    	echo "Won the Game, have $ 150"
        break
	elif(($money==looseAmount))
    then
    	echo "Lost $ 100"
        break
    fi
done
