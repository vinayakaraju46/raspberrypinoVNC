#!/bin/bash
export NOVNC_PORT="6080"
export TTYD_PORT="5000"
export TTYD_USERNAME="username"
export TTYD_PASSWD="password"


export DEBIAN_FRONTEND=noninteractive TZ="Etc/UTC" &&

apt -y update && 
apt -y install wget && 
wget https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.armhf &&
cp ttyd.armhf /usr/local/bin/ttyd
chmod +x /usr/local/bin/ttyd

apt install -y novnc tigervnc-standalone-server &&
cp /usr/share/novnc/vnc.html /usr/share/novnc/index.html &&
apt install -y xfce4 xfce4-goodies &&

vncserver 
ttyd -c $TTYD_USERNAME:$TTYD_PASSWD -p $TTYD_PORT bash &
/usr/share/novnc/utils/launch.sh --vnc 127.0.0.1:5901 --listen $NOVNC_PORT &
