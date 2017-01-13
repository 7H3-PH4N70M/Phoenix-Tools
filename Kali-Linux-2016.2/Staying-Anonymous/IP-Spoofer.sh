#! /bin/bash

echo "This program is designed to change your Internet Protocal Address, also known as an IP Address."
echo "Do you already know the name of your Wi-Fi card? [Y/N]"
read COMMAND
if [ COMMAND="N" ]; then
  echo "If you are using Etherenet, it will be ethX, if your using wireless it will be wlanX. The Xs should be replaced with a number"
	ifconfig
	echo "What is the name of your Wi-Fi Card?"
	read CARD_NAME
else
  echo "Please enter the name."
	read CARD_NAME
echo "Please enter the desired Internet Protocal Address"
read IP
ifconfig $CARD_NAME $IP
ifconfig $CARD_NAME broadcast $IP
