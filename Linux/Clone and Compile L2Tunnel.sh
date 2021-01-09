#!/bin/bash
git clone https://github.com/mborgerson/l2tunnel L2Tunnel
cd L2Tunnel && make
printf "\nIf compiling L2Tunnel failed because you're missing pcap/pcap.h, you must get libpcap-dev. You can use something like apt if you're on Debian or Debian derived Linux distributions. If it compiled just fine then perfect!\n"
