#!/bin/bash -x

echo "Welcome To Gambling Simulation Problem ...!"

echo "How many times you want to play?"
read numberOfGames

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

for((i=0; i<numberOfGames; i++))
do
        echo "Which do you want to choose:"
        echo "---------------"
        echo "1.HEAD"
        echo "2.TAIL"
        read userInput

        echo "Till how much percentage of the amount you want to play?"
        read stakeAmount

        headIncrement=1
        tailIncrement=1
        money=100
        echo "I have $ 100 with me"
        bet=0
        echo "I will bet $ 1 now"

        while(($money != 150 || $money != 0))
        do
                flip
                if(($result==1))
                then
                        echo "Won $headIncrement time"
                        money=`expr $money + $add`
                        echo "money is $money"
                        headIncrement=`expr $headIncrement + 1`
                elif(($result==2))
                then
                        echo "won $tailIncrement time"
                        money=`expr $money - $sub`
                        echo "money is $money"
                        tailIncrement=`expr $tailIncrement + 1`
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
done

