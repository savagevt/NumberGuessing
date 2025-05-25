#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
RANDOM_NUMBER=$((1 + RANDOM % 1000))
GUESS_COUNT=0
GUESS=0

GAME() {

while [ $GUESS != $RANDOM_NUMBER ]
  do
  #conditional to provide up or down direction
    if [[ $GUESS =~ ^[0-9]+$ ]]
    then
      if [[ "$GUESS" -gt "$RANDOM_NUMBER" ]];
      then
        echo "It's lower than that, guess again:"
        GUESS_COUNT=$((GUESS_COUNT+1))
        read GUESS
      elif [[ "$GUESS" -lt "$RANDOM_NUMBER" ]];
      then
        echo "It's higher than that, guess again:"
        GUESS_COUNT=$((GUESS_COUNT+1))
        read GUESS
      fi
    else
      echo "That is not an integer, guess again:"
      GUESS_COUNT=$((GUESS_COUNT+1))
      read GUESS
    fi
  done

  GUESS_INSERT=$($PSQL "UPDATE games SET guesses = $GUESS_COUNT WHERE game_id = '$GAME_ID'")

}

echo $RANDOM_NUMBER

echo "Enter your username:"

read CURRENT_USER

USERNAME=$($PSQL "SELECT username FROM username WHERE username = '$CURRENT_USER'")
GAMES_PLAYED=$($PSQL "SELECT games_played FROM username WHERE username = '$CURRENT_USER'")
BEST_SCORE=$($PSQL "SELECT min(guesses) FROM games WHERE username = '$USERNAME'")

if [[ -z $USERNAME ]]
then
  USERNAME=$CURRENT_USER
  GAMES_PLAYED=1
  GAME_ID=$USERNAME$GAMES_PLAYED
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  USER_INSERT=$($PSQL "INSERT INTO username (username, games_played) VALUES('$USERNAME', 1)")
else
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_SCORE guesses."
  GAMES_PLAYED=$((GAMES_PLAYED+1))
  GAME_ID=$USERNAME$GAMES_PLAYED
  GAMES_PLAYED_UPDATE=$($PSQL "UPDATE username SET games_played = $GAMES_PLAYED WHERE username = '$USERNAME'")
fi

GAME_LOG=$($PSQL "INSERT INTO games(game_id, username, guesses) VALUES('$GAME_ID', '$CURRENT_USER', $GUESS_COUNT)")

echo "Guess the secret number between 1 and 1000:"
read GUESS

while [ -z $VALID_GUESS ]
do
  if [[ $GUESS =~ ^[0-9]+$ ]]
  then
    GUESS_COUNT=$((GUESS_COUNT+1))
    VALID_GUESS=$GUESS
    GAME
  else
    echo "That is not an integer, guess again:"
    GUESS_COUNT=$((GUESS_COUNT+1))
    read GUESS
  fi
done

echo "You guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
