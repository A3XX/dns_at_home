#!/bin/bash
cd /home/pi
#Uninstall cloudflared service
sudo cloudflared service uninstall
sleep 3s
#reloading systemcl
sudo systemctl daemon-reload
sleep 1s
#deleting the cloudflared binary
sudo rm /usr/local/bin/cloudflared
#deleting cloudflared config
sudo rm /etc/cloudflared/config.yml
#deleting cloudflared direcrity
sudo rm -d /etc/cloudflared 
# Unistalaltion completed

