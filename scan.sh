#!/bin/bash	

# Number of minutes to wait before playing the same recording a second time.
repeatAfterMinutes=1

# Send logs to /var/log/busplayer
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>/var/log/busplayer.log 2>&1


play () {
    if [ "$1" == "$(cat lastPlayed.txt)" ] && [ test `find "lastPlayed.txt" -mmin +$repeatAfterMinutes` ] ;then
      sleep 5
    else
      mplayer $1 -really-quiet
      echo $1 > lastPlayed.txt
    fi
}


while :
do
    beacon_id=`sudo beacon scan -A -b -d 4`
    if [[ $beacon_id = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA5 0 1"* ]]; then
	play ./01intro.mp3 
    elif [[ $beacon_id = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA6 0 1"* ]]; then
	play ./02togravesite.mp3 
    elif [[ $beacon_id = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA7 0 1"* ]]; then
	play ./03gravesite.mp3 
    elif [[ $beacon_id = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA8 0 1"* ]]; then
	play ./04visitorcenter.mp3 
    elif [[ $beacon_id = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA9 0 1"* ]]; then
	play ./05conclusion.mp3   
    else
	sleep 1
    fi
done
