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
		echo "HEADS IS WINNER" $counter
		((counter++))
		  totalHeads=$counter
	else
		echo "TAILS IS WINNER" $counter
		((counter++))
		  totalTails=$counter
	fi
	if [ $totalHeads -ge 21 -o $totalTails -ge 21 ]
	then
		diff=$(($totalHead-$totalTails))
		diff1=$(($totalTails-$totalHeads))
		if [ $diff -ge 2 -o $diff -ge 2 ]
		then
			break;
		else

			continue
		fi
	fi
done

if [ $totalHeads -eq $counter ]
then
	diff=$(($totalHeads-$totalTails))
	echo "head is winner by " $diff
else
	diff=$(($totalTails-$totalHeads))
	echo "tail is winner by " $diff

fi
echo "HEADS" $totalHeads
echo "TAILS" $totalTails

