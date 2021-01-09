Provided here are 4 bash scripts you can use to set up L2Tunnel for use with XLink Kai.

You'll want to start with getting l2tunnel, you can use the provided script ("Clone and Compile L2Tunnel.sh") to download and compile l2tunnel (assuming you have git and libpcap installed).

Once you get L2Tunnel to compile, you can test if it runs by just doing /l2tunnel. If that works then go ahead and continue reading.'

L2Tunnel needs special privileges to operate properly. You need to type/copy+paste this into the terminal: ```sudo setcap cap_net_raw,cap_net_admin=eip l2tunnel```

Now go ahead and open "List Available Network Interfaces.sh" and it should list either a bunch or just some network interfaces.

![image goes here](https://raw.githubusercontent.com/poobarfoob/l2tunnel-kai-guide/main/Images/l2tunnel%20interfaces.png)

You'll want to write down the network interface that you're currently using, like your ethernet adapter or wifi.

Using that interface, right click on "Discover MAC Addresses.sh" and choose "Edit". In the "YOUR ADAPTER HERE" section, paste in your interface then save and exit. Run the script to verify you have the correct interface.

![image goes here](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/edit%20discover%20script.png?raw=true)
![image goes here](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/l2tunnel%20discover%20example.png?raw=true)

Once you're done testing if you have the right interface, right click on "Start Tunneling.sh" and choose "Edit". Paste in your interface and Xemu's MAC Address. Dont mess with the -d flag or the IPs and Ports to the right unless you know what you're doing. (Or asking for help if nothing makes sense)

![image goes here](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/edit%20tunneling%20script.png?raw=true)

Go ahead and open "Start Tunneling.bat"

![image goes here](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/tunneling.png?raw=true)

Open XLink Kai (optionally navigate to an arena or just monitor the metrics tab) and Xemu, then open "Start Tunneling.bat" and you should Xemu get recognized. You can verify if it is by checking the MAC Address.
