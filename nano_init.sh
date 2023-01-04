#!/bin/bash

sudo sh -c 'echo 150 > /sys/devices/pwm-fan/target_pwm'


#add fan
cp rc.local /etc

cd /etc
sudo chmod 777 rc.local

#update
sudo apt-get update
sudo apt-get upgrade

#add vnc
sudo apt install vino

gsettings set org.gnome.Vino prompt-enabled false
gsettings set org.gnome.Vino require-encryption false
nmcli connection show
#dconf write /org/gnome/settings-daemon/plugins/sharing/vino-server/enabled-connections "['UUID of the ethernet']"
#export DISPLAY=:0
#/usr/lib/vino/vino-server