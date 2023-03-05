
## Configuring raspberrypi for development

Here is a simple tweak that makes your development simple.






## Accessing rpi cmd over a browser using ttyd

ttyd is a simple command-line tool for sharing terminal over the web.

Download .arm version of ttyd binary from the following command
```
wget https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.armhf 
```

Copy the binary to /usr/local/bin/ttyd
```
sudo cp ttyd.armhf /usr/local/bin/ttyd
```

Changing permission
```
sudo chmod +x /usr/local/bin/ttyd
```

Running ttyd
```
sudo ttyd -c username:password -p {PORT_NUMBER} bash &
```

You can now access terminal by entering http://localhost:{PORT-NUMBER} on your browser.






## noVNC

noVNC is both a HTML VNC client JavaScript library and an application built on top of that library. noVNC runs well in any modern browser including mobile browsers (iOS and Android).

For more information you can check their official documentation here https://github.com/novnc/noVNC

Installing noVNC and TigerVNC server
```
sudo apt install novnc tigervnc-standalone-server
```

```
cp /usr/share/novnc/vnc.html /usr/share/novnc/index.html
```

Installing Xfce desktop environment
```
apt install xfce4 xfce4-goodies 
```

Starting vncserver
```
vncserver
```

Launching novnc
```
/usr/share/novnc/utils/launch.sh --vnc 127.0.0.1:5901 --listen 6080
```

![image](https://user-images.githubusercontent.com/30818966/222971558-2cd26002-633e-47c4-862b-47371cdef967.png)



## Writing crontab for ttyd and noVNC

Crontab (CRON TABle) is a file which contains the schedule of cron entries to be run and at specified times.

```
sudo vim /etc/crontab
```

Add your  command as shown in the image below

![image](https://user-images.githubusercontent.com/30818966/222971787-3813d848-e257-4ad0-b364-4483fa5657b1.png)


## License

[MIT](https://choosealicense.com/licenses/mit/)
