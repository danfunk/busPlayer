# busPlayer


## Install
* Place the busplayer script into /etc/init.d
     sudo cp busplayer /etc/init.d/
* Make it executable 
     sudo chmod 755 /etc/init.d/busplayer
* Make sure that scan.sh and playSound.sh are executable
     chmod 755 scan.sh
     chmod 755 paySound.sh
* Instruct the OS to start the busplayer script on startup
     sudo update-rc.d busplayer defaults
