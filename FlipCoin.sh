echo "this display the winner Heads or Tail"

#!/bin/bash -x
counter=0;
totalHeads=0;
totalTails=0;
range=21;
while [ $counter -le $range ]
do
	coin=$(($RANDOM%2))
	if [ $coin -eq 1 ]
	then
		echo "HEADS IS WINNER"
		((counter++))
		  totalHeads=$counter
	else
		echo "TAILS IS WINNER"
		((counter++))
		  totalTails=$counter
	fi
done

if [ $totalHeads -eq $totalTails ]
then
	echo "it's a tie"
elif [ $totalHeads -eq $counter ]
then
	diff=$(($totalHeads-$totalTails))
	echo "head is winner by " $diff
else
	diff=$(($totalTails-$totalHeads))
	echo "tail is winner by " $diff

fi

