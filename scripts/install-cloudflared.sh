#!/bin/bash
cd /home/pi
#Download Cloudflared
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm
sudo cp ./cloudflared-linux-arm /usr/local/bin/cloudflared
sudo chmod +x /usr/local/bin/cloudflared
cloudflared -v
sudo mkdir /etc/cloudflared/
sudo touch /etc/cloudflared/config.yml
#Delete temp files 
rm cloudflared
rm cloudflared-stable-linux-arm.tgz
# Ask user to select DNS server
echo
echo "Select a DNS server for the clients:"
echo "   1) Cloudflare DoH only"
echo "   2) Cloudflare DoH + Malware Blocking"
echo "   3) Cloudflare DoH + Malware and Adult Content"
echo "   4) Quad9 DoH"
echo "   5) Google DoH"
read -p "DNS server [1]: " dns
until [[ -z "$dns" || "$dns" =~ ^[1-5]$ ]]; do
echo "$dns: Invalid selection: Please select a valid option 1-5."
read -p "DNS server [1]: " dns
done
echo

# Configure config.yml file based on user's selection
case "$dns" in
 1|"")
echo "proxy-dns: true
proxy-dns-port: 5053
proxy-dns-upstream:
  - https://1.1.1.1/dns-query
  - https://1.0.0.1/dns-query" | sudo tee /etc/cloudflared/config.yml
 ;;
 2)
echo "proxy-dns: true
proxy-dns-port: 5053
proxy-dns-upstream:
  - https://security.cloudflare-dns.com/dns-query" | sudo tee /etc/cloudflared/config.yml
 ;;
 3)
echo "proxy-dns: true
proxy-dns-port: 5053
proxy-dns-upstream:
 - https://family.cloudflare-dns.com/dns-query" | sudo tee /etc/cloudflared/config.yml
 ;;
 4)
echo "proxy-dns: true
proxy-dns-port: 5053
proxy-dns-upstream:
 - https://dns.quad9.net/dns-query" | sudo tee /etc/cloudflared/config.yml
 ;;
 5)
echo "proxy-dns: true
proxy-dns-port: 5053
proxy-dns-upstream:
 - https://dns.google/dns-query" | sudo tee /etc/cloudflared/config.yml
 ;;
esac

echo "Installing cloudflared service"
sudo cloudflared service install --legacy
sleep 5s
echo "Starting cloudflared service"
sudo systemctl start cloudflared
sleep 5s
echo "Checking Upstream DNS Server"
dig @127.0.0.1 -p 5053 google.com
echo "Installation was successful"
