![I should've been working on the Linux part of this setup but I decided to make this and idk why](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/this%20shouldnt%20have%20taken%20more%20than%2030%20fucking%20minutes%20to%20make%20but%20here%20we%20are.png?raw=true)

This is a guide meant to help others use L2Tunnel to play on XLink Kai with Xemu.

Users on Linux and Windows can use the provided scripts to make the process a little easier. Unfortunately I don't have scripts available for MacOS at the moment.

Setting Up Xemu
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
This process should be the same across all platforms.

You'll want to open Xemu, go to the "Machine" tab and open the "Network" settings
If the "Attached To" option is set to "User(NAT)", click on disable (if enabled already) and choose Socket instead.

Change "Remote Host" to 127.0.0.1:9367 and change "Local Host" to 0.0.0.0:9368.

![network settings](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/xemu%20network%20settings.png?raw=true)

Getting Xemu's MAC Address
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
![](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/dash%20part%201.png?raw=true)
![](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/dash%20part%202.png?raw=true)
![](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/dash%20part%203.png?raw=true)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
