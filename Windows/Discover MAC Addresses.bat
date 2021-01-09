@echo OFF
echo This should be used to test if you have the right interface chosen. Usually when you run this with the correct interface you'll see a bunch of MAC Addresses getting spat out by l2tunnel.

set /p=Hit ENTER to continue...

l2tunnel.exe discover "YOUR ADAPTER HERE"