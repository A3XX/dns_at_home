#!/bin/bash
cd /home/pi
#Create file for update script
touch update.sh
#This will update the Raspberry Pi OS and Firmware
echo "sudo apt update && sudo apt -y full-upgrade && sudo apt -y autoremove && sudo apt -y autoclean && sudo apt install -y rpi-eeprom
sleep 1s
#To update the Pi-hole
pihole -up
sleep 1s
# To update the Pi-hole block lists
pihole -g -up
sleep 1s
#to update the cloudflared
sudo cloudflared update
sleep 1s
# restart the cloudflared
sudo systemctl restart cloudflared
sleep 1s
sudo reboot" > /home/pi/update.sh	
# make script executable 
chmod +x update.sh
#create crontab entry to run update script everyday at 3:00 AM
crontab -l | { cat; echo "* 3 * * * /home/pi/update.sh >/dev/null 2>&1"; } | crontab -
