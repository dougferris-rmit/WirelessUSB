#!/bin/bash
network="RMIT-University"
echo This will delete all your passwords for the wireless network $network
echo Are you sure you wish to do this?
read -p "Press Y or y for yes, press any other character for no." -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo " "
    echo "Deleting passwords now"
    security delete-generic-password -l "WPA: RMIT-University"
    security delete-generic-password -l "RMIT-University"
    security delete-internet-password -l "RMIT-University"
fi
