#!/bin/bash
# interfaceval="null"
# xemumacadd="null"
git clone https://github.com/mborgerson/l2tunnel L2Tunnel
cd L2Tunnel && make
printf "\nIf compiling L2Tunnel failed because you're missing pcap/pcap.h, you must get libpcap-dev. You can use something like apt if you're on Debian or Debian derived Linux distributions. If it compiled just fine then perfect!\n"
read -p "Please press enter to continue."
printf "\nThis section is all interfaces that L2Tunnel can use. If you know the interface that you want to use with L2Tunnel, go ahead and type it in.\n"
./l2tunnel list
read -p "Please enter the interface that L2Tunnel will use: " interfaceval
printf "\nBefore testing the interface, please permit L2Tunnel to allow for raw net access.\n"
sudo setcap cap_net_raw,cap_net_admin=eip l2tunnel
printf "\nTesting if this is the correct interface. If this interface is incorrect, please abort by doing Ctrl+C and try again.\nIf this is correct you should see a bunch of MAC Addresses flood the terminal for 5 seconds.\n"
timeout 5s $pwd./l2tunnel discover $interfaceval
read -p "Please provide the MAC Address of Xemu: " xemumacadd
printf "\nCreating a bash script you can execute to use XLink Kai with Xemu with ./tunnel.sh\n"
printf "./l2tunnel tunnel "$interfaceval" -d "$xemumacadd" 0.0.0.0 9367 127.0.0.1 9368" > ../tunnel.sh
chmod +x ../tunnel.sh
cp l2tunnel ../l2tunnel
cd ..
rm L2Tunnel -r -f
