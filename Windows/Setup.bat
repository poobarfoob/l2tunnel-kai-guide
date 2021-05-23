@echo off
rem Creating variables to be used for this.
set INTERFACEVAR=NULL
set XEMUMACADD=NULL
echo Creating a temp directory and using curl to download l2tunnel.
mkdir temp2tunnel && cd temp2tunnel
curl -LJO https://github.com/mborgerson/l2tunnel/releases/download/build-2012290546-1f36ddd/l2tunnel.exe.zip
tar -xf l2tunnel.exe.zip
del *.zip /Q
cls

rem Interface discovery
l2tunnel list
set /p INTERFACEVAR=Please enter the interface that L2Tunnel will use (NOTE: You must type/copy+paste the \Device\NPF_..." string and not "Device 0/1/2/3/4..."):
cls

echo Testing if this is the correct interface. If this interface is incorrect, please abort by doing Ctrl+C and try again. If this is correct you should see a bunch of MAC Addresses flood the terminal for 5 seconds.
start l2tunnel discover "%INTERFACEVAR%" & timeout 5 && taskkill /im l2tunnel.exe

cd.. && mkdir l2tunnel && cd temp2tunnel
move l2tunnel.exe ../l2tunnel/l2tunnel.exe && cls
set /p XEMUMACADD=Please provide Xemu's MAC Address:
echo l2tunnel tunnel "%INTERFACEVAR%" -d "%XEMUMACADD%" 0.0.0.0 9367 127.0.0.1 9368 > ../l2tunnel/tunnel.bat
echo Created a folder named l2tunnel with a script called tunnel.bat. Run tunnel.bat and you should be good to go.
pause
cd..
rmdir "temp2tunnel" /S /Q
