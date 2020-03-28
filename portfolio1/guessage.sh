#!/bin/bash
# this program generates random numbers between 1  and 100
# Ben Ulrich, 10497958
echo "Greetings!"
guess=1
## Generate random number
n1=$(( RANDOM % 100 + 1 ))
echo -n "I'm thinking of a number between 1 and 100. Guess: "

#A loop that breaks only when the user guesses the correct number
while read n2; do 
   if [[ $n2 -eq $n1 ]]; then
       break;
   else
   
   #If the user guesses above the randomly generated number:
       if [[ $n2 -gt $n1 ]]; then
          echo -n "Your guess was too high. Guess again: "
   
   #If the user guesses below the randomly generated number:
        elif [[ $n2 -lt $n1 ]]; then
          echo -n "Your guess was too low. Guess again: "
    fi
fi

#Once the correct number has been guessed, the loop will end.
done

#When they guess right print the following
echo "Congratulations! You guessed the right number!"

