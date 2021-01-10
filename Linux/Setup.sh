#!/bin/bash
#interfaceval="pee pee poo poo"
#xemumacadd="haha xemu go brrr"
printf "\nThis script is intended to list all interfaces that L2Tunnel can use. If you know the interface that L2Tunnel needs to use, go ahead and type it in.\n"
./l2tunnel list
read -p "Please enter the interface that L2Tunnel will use: " interfaceval
printf "\nTesting if this is the correct interface. If this interface is incorrect, please abort by doing Ctrl+C and try again.\nIf this is correct you should see a bunch of MAC Addresses flood the terminal for 5 seconds.\n"
timeout 5s $pwd./l2tunnel discover $interfaceval
read -p "Please provide the MAC Address of Xemu: " xemumacadd
printf "\nCreating a bash script you can execute to use XLink Kai with Xemu with ./tunnel.sh \n"

printf "./l2tunnel tunnel "$interfaceval" -d "$xemumacadd" 0.0.0.0 9367 127.0.0.1 9368" > tunnel.sh
chmod +x tunnel.sh
