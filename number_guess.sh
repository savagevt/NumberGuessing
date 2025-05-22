#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=<database_name> -t --no-align -c"

echo "Enter your username:"

read USERNAME

USERNAME_EXISTS=$($PSQL "SELECT something FROM table_name WHERE user = '$USERNAME'")

GAMES_PLAYED=$($PSQL "SELECT games played FROM table_name WHERE user = '$USERNAME'")

if [[ -z $USERNAME_EXISTS ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is you first time here.\nGuess the secret number between 1 and 1000:"
else
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took <best_game> guesses."
fi
