echo "this display the winner Heads or Tail"

#!/bin/bash -x

flip=$(($RANDOM%2))
if [ $flip -eq 1 ]
then
	echo "HEADS"
else
	echo "TAILS"
fi
