#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read NAME

# check if user exists
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$NAME'")

if [[ -z $USER_ID ]]
then
  $PSQL "INSERT INTO users(username) VALUES('$NAME')" > /dev/null
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$NAME'")
  echo "Welcome, $NAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(score) FROM games WHERE user_id=$USER_ID")
  echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# generate secret number
SECRET_NUMBER=$((RANDOM % 1000 + 1))
TRIES=0

echo "Guess the secret number between 1 and 1000:"
while true
do
  read GUESS
  if ! [[ "$GUESS" =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
  else
    ((TRIES++))
    if [[ $GUESS -lt $SECRET_NUMBER ]]; then
      echo "It's higher than that, guess again:"
    elif [[ $GUESS -gt $SECRET_NUMBER ]]; then
      echo "It's lower than that, guess again:"
    else
      # Correct guess
      echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
      $PSQL "INSERT INTO games(user_id, score) VALUES($USER_ID, $TRIES)" > /dev/null
      break
    fi
  fi
done
