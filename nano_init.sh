#!/bin/bash

sudo sh -c 'echo 150 > /sys/devices/pwm-fan/target_pwm'



cd /etc
sudo touch rc.local

sudo chmod 777 rc.local
sudo vim /etc/rc.local

sudo apt-get update
sudo apt-get upgrade