#!/bin/bash

echo "------------------------------------------"
echo " update everything "
echo "------------------------------------------"

echo " > updating packages "
sudo apt update && sudo apt upgrade -y

echo " > updating snaps "
sudo snap refresh

echo " > updating flatpaks "
sudo flatpak update -y

echo " > autoclean"
sudo apt clean all
sudo apt autoclean

echo "------------------------------------------"
echo " update done "
echo "------------------------------------------"
