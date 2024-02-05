#!/bin/bash

echo "------------------------------------------"
echo " update everything "
echo "------------------------------------------"

echo " > updating packages "
sudo apt update
sudo apt upgrade -y
sudo apt full-upgrade -y

echo " > updating snaps "
sudo snap refresh

echo " > updating flatpaks "
sudo flatpak update -y

echo " > autoremove packages"
sudo apt autoremove --purge

echo " > autoclean"
sudo apt clean all
sudo apt autoclean

if [ -x /usr/bin/pkcon ]; then
    echo " > updating with pkcon"
    sudo pkcon refresh
    sudo pkcon update -y
fi

echo "------------------------------------------"
echo " update done "
echo "------------------------------------------"
