This is a guide meant to help others use l2tunnel to play on XLink Kai with Xemu. It is unknown if this will with with XQEMU, but you're more than welcome to open a pull request with a section for XQEMU if you do figure out how to do it on there.

You can use the provided scripts to make the process a little easier. Images will be added in as I go.
FOR LINUX AND MACOS USERS, YOU MUST COMPILE [L2TUNNEL](https://github.com/mborgerson/l2tunnel). ONLY WINDOWS HAS BINARIES AVAILABLE FOR DOWNLOAD.

SETTING UP XEMU (This process should be the same across all platforms so it can just go here i suppose)

You'll want to open Xemu, go to the "Machine" tab and open the "Network" settings
If the "Attached To" option is set to "User(NAT)", click on disable (if enabled already) and choose Socket instead.
Change "Remote Host" to 127.0.0.1:9367 and change "Local Host" to 0.0.0.0:9368.

![BRUH I CANT GET THIS TO WORK WHY](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/xemu%20network%20settings.png?raw=true)

GETTING XEMU's MAC ADDRESS

![](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/dash%20part%201.png?raw=true)
![](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/dash%20part%202.png?raw=true)
![](https://github.com/poobarfoob/l2tunnel-kai-guide/blob/main/Images/dash%20part%203.png?raw=true)
