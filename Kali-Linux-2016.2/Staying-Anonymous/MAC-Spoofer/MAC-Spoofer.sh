echo "This program is designed to spoof your Media Access Control Address, also known as a MAC Address."
echo "Please enter your wifi card. For example, wlan0, eth0, wlan1, eth1, etc, etc. If you do not know your Wi-Fi card, please type, \"What is my card name\""
read COMMAND
if [ COMMAND="What is my card name" ]; then
  echo "If your using wireless, it will be wlanX, if your using ethernet, it will be ethX where X is a number"
  ifconfig
else
  CARD_NAME=COMMAND
fi

ifconfig CARD_NAME down
echo "Please enter your new Media Access Address"
echo "A MAC Address loks like this: XX:XX:XX:XX:XX:XX but the Xs are replaced with number and/or letters"
read NEW_MAC
ifconfig CARDNAME hw ether NEW_MAC
ifconfig CARD_NAME up
clear
echo "Your MAC Address has changed."
