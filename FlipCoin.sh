echo "this display the winner Heads or Tail"

#!/bin/bash -x
counter=0;
totalHeads=0;
totalTails=0;
read -p "Enter how many times to flip the coin " flip
while [ $counter -le $flip ]
do
	coin=$(($RANDOM%2))
	if [ $coin -eq 1 ]
	then
		echo "HEADS IS WINNER"
		((totalHeads++))
	else
		echo "TAILS IS WINNER"
		((totalTails++))
	fi
	((counter++))
done

echo "Head win :" $totalHeads
echo "Tail win: " $totalTails
