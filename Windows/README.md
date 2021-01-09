Provided here are 3 batch scripts you can use to set up L2Tunnel for use with XLink Kai.

You'll want to start with getting l2tunnel at: https://github.com/mborgerson/l2tunnel/releases/

Once you get l2tunnel, copy or move l2tunnel.exe into this folder or you can move the batch scripts into a folder with l2tunnel in it.

Now go ahead and open "List Available Network Interfaces.bat" and it should list either a bunch or just some network interfaces.

![image goes here](https://raw.githubusercontent.com/poobarfoob/l2tunnel-kai-guide/main/Images/l2tunnel%20interfaces.png)

You'll want to write down the network interface that you're currently using, like your ethernet adapter or wifi.

![image goes here]()

Using that interface, right click on "Discover MAC Addresses.bat" and choose "Edit". In the "YOUR ADAPTER HERE" section, paste in your interface then save and exit. Run the script to verify you have the correct interface.

![image goes here](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/edit%20discover%20script.png?raw=true)
![image goes here](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/l2tunnel%20discover%20example.png?raw=true)

Once you're done testing if you have the right interface, right click on "Start Tunneling.bat" and choose "Edit". Paste in your interface and Xemu's MAC Address. Dont mess with the -d flag or the IPs and Ports to the right unless you know what you're doing. (Or asking for help if nothing makes sense)

![image goes here](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/edit%20tunneling%20script.png?raw=true)

Go ahead and open "Start Tunneling.bat"

![image goes here]()
![image goes here]()


Open XLink Kai (optionally navigate to an arena or just monitor the metrics tab) and Xemu, then open "Start Tunneling.bat" and you should Xemu get recognized. You can verify if it is by checking the MAC Address.
