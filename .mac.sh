#!/bin/bash
network="RMIT-University"
support="RMIT-Support"
echo This will delete all your passwords for the wireless network $network
echo Are you sure you wish to do this?
read -p "Press Y or y for yes, press any other character for no." -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo " "
    echo "Deleting passwords now"
    security delete-generic-password -l "WPA: $network"
    security delete-generic-password -l $network
    security delete-internet-password -l $network
	echo "Deleting RMIT networks now"
	networksetup -removepreferredwirelessnetwork hardwareport $network
	networksetup -removepreferredwirelessnetwork hardwareport $support
	echo "Re-creating network"
	networksetup -addpreferredwirelessnetworkatindex en1 $network 0 WPA2E
fi
