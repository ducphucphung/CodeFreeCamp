#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=salon --tuples-only -c"
echo -e "\n~~~~~ MY SALON ~~~~~\n"
echo -e "Welcome to My Salon, how can I help you?\n"
SERVICE_MENU() {
  if [[ $1 ]]
  then
    echo -e "$1\n"
  fi
  SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY 1")
  echo "$SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do 
    echo "$SERVICE_ID) $SERVICE_NAME"
  done
}
SERVICE_MENU
echo "Please enter a service id: "
read SERVICE_ID_SELECTED
SERVICE_NAME_SELECTED=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
echo $SERVICE_NAME_SELECTED
if [[ -z $SERVICE_NAME_SELECTED ]]
then
  SERVICE_MENU "I could not find that service. What would you like today?"
else
  echo "Please enter your phone number"
  read CUSTOMER_PHONE
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")

  #if customer doesnt exist, add to database
  if [[ -z $CUSTOMER_NAME ]]
  then
    echo "I don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    CUSTOMER_NAME_INSERT_RESULT=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
  fi
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  echo $CUSTOMER_ID
  echo "What time would you like your$SERVICE_NAME_SELECTED,$CUSTOMER_NAME?"
  read SERVICE_TIME
  APPOINTMENT_INSERTED_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
  echo "I have put you down for a$SERVICE_NAME_SELECTED at $SERVICE_TIME, $CUSTOMER_NAME."

fi
