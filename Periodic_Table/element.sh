#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
if [[ -z $1 ]] 
then
  echo "Please provide an element as an argument."
else
  #check by number
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    RESULT=$($PSQL "SELECT atomic_number, name, symbol, types.type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements JOIN properties USING(atomic_number) JOIN types USING(type_id) WHERE atomic_number=$1;")
  # Check by symbol (1–2 letters)
  elif [[ $1 =~ ^[A-Za-z]{1,2}$ ]]; then
    RESULT=$($PSQL "SELECT atomic_number, name, symbol, types.type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements JOIN properties USING(atomic_number) JOIN types USING(type_id) WHERE symbol='$1';")

  # Check by name (text)
  else
    RESULT=$($PSQL "SELECT atomic_number, name, symbol, types.type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements JOIN properties USING(atomic_number) JOIN types USING(type_id) WHERE name='$1';")
  fi
  if [[ -z $RESULT ]]
  then 
    echo "I could not find that element in the database."  
  else
    IFS="|" read -r ATOMIC_NUM NAME SYMBOL TYPE MASS MELT BOIL <<< "$RESULT"
    echo "The element with atomic number $ATOMIC_NUM is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
  fi
fi