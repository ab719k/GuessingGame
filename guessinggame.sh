#/bin/bash
# Amit's Guessing Game

function readx() {
	read x
	if ! [[ "$x" =~ ^[0-9]+$ ]]; then
  		echo "Sorry integers only"
		while [[! "$x" =~ ^[0-9]+$ ]]; do
			read x
		done
	fi	
}

echo "Welcome to Amit's Guessing Game"
n=$(ls -l | wc -l)
echo "Can you guess the # of files in this directory : "
readx

continue=2

while [[ continue -gt 1 ]]
do
	if [[ $x -lt $n ]]
	then
		echo "You entereed $x, Your guess is Low, Try again!"
		readx
	elif [[ $x -gt $n ]]
	then
		echo "You entered $x, your guess is High, Try again"
		readx
	else
		echo "Congrats, Your guess is correct"
		continue=0
	fi
done


