Provided here are 4 bash scripts you can use to set up L2Tunnel for use with XLink Kai.

You'll want to start with getting l2tunnel, you can use the provided script ("Clone and Compile L2Tunnel.sh") to download and compile l2tunnel (assuming you have git and libpcap installed).

Once you get L2Tunnel to compile, cd into the L2Tunnel and test if it runs by just doing ./l2tunnel. If that works then go ahead and continue reading.

L2Tunnel needs special privileges to operate properly. You need to type/copy+paste this into the terminal: 

`sudo setcap cap_net_raw,cap_net_admin=eip l2tunnel`

Now go ahead and open "Setup.sh" The rest of the setup is automated, and should go smoothly.
