#!/bin/bash
# mikazz
# Check for connected computers

clear

echo "Following computers are connected: "
cont=1
total=0

while [ $cont -lt 255 ]; do
	ping 192.168.0.$cont -c2
	if [ $? -eq 0 ]; then
		echo
		echo "Computer 192.168.0.$cont is connected"
	fi
	cont=$[$cont+1]
done
echo "-------------------------------------------------------"
echo "Found total connected"
echo "-------------------------------------------------------"
