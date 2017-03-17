# busPlayer

## Configuration
You can modify the number of seconds the system will wait before replaying the same file twice by editing the value for repeatAfterMinutes at the top of the scan.sh file.

## Starting and Stopping the service.
The service will start automatically when the system is booted up.  If needed you can stop and then later restart the service with the following two commands.

    sudo service busplayer stop
    sudo service busplayer start

## Install
* Place the busplayer script into /etc/init.d
 
    sudo cp busplayer /etc/init.d/

* Make it executable 

     sudo chmod 755 /etc/init.d/busplayer

* Make sure that scan.sh and playSound.sh are executable

     chmod 755 scan.sh

* Instruct the OS to start the busplayer script on startup

     sudo update-rc.d busplayer defaults

## Additional recommendations

I suggest you add the following parameter to /boot/config.txt which will drastically reduce some of the static when the audio is playing but silent:  disable_audio_dither=1