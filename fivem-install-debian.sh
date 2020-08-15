#!/bin/bash

echo -e "\e[1;31mFiveM Debian Script by Heisltschick Peda#0001 \e[0m"
mkdir FXServer
mkdir FXServer/server
mkdir FXServer/server-data
cd FXServer/server
wget "https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/2431-350dd7bd5c0176216c38625ad5b1108ead44674d/fx.tar.xz"
tar xf fx.tar.xz
cd ..
cd server-data
apt-get install git
git clone https://github.com/citizenfx/cfx-server-data.git /home/FXServer/server-data
cd /home/FXServer/server-data
echo "Fill in your Server.cfg!"
nano server.cfg
echo -e "\e[1;41mNow generate a key at https://keymaster.fivem.net, set the licence key in the server.cfg under sv_licenceKey 'keygoeshere', and run the server with the following command 'bash /home/FXServer/server/run.sh +exec server.cfg' \e[0m"
