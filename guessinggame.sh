#!/bin/bash
# Author:       Matan Niv
# Description: This program will continuously ask the user to guess the number of files in the current directory, 
# 	       until they guess the correct number.
# 
#
#
function assignment {
correct_answer=$(ls -la | egrep "^-" | wc -l)
echo "How much files exists in the current directory?"
read guest
while [[ $guest -ne $correct_answer ]]
do
	if [[ $guest -gt $correct_answer ]]
		then
		echo "Your guess is too high,try again:"
		read guest
	elif [[ $guest -lt 0 ]]
		then
		echo "please enter valid number:"
		read guest
	else
		echo "Your guess is too low,try again:"
		read guest
	fi
done
echo "congratulations, You're right !"
}
assignment
