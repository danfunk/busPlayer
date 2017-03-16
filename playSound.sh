#!/bin/bash	

# Number of minutes to wait before playing the same recording a second time.
repeatAfterMinutes=1

play () {
    if [ "$1" == "$(cat lastPlayed.txt)" ] && [ test `find "lastPlayed.txt" -mmin +$repeatAfterMinutes` ] ;then
      echo "Skipping $1, not repeating again for $repeatAfterMinutes minutes"
      sleep 5
    else
      mplayer $1
      echo $1 > lastPlayed.txt
    fi
}


while read line
do
		if [[ $line = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA5 0 1"* ]]; then
		  play ./01intro.mp3 
		elif [[ $line = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA6 0 1"* ]]; then
		  play ./02togravesite.mp3 
		elif [[ $line = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA7 0 1"* ]]; then
		  play ./03gravesite.mp3 
		elif [[ $line = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA8 0 1"* ]]; then
		  play ./04visitorcenter.mp3 
		elif [[ $line = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA9 0 1"* ]]; then
		  play ./05conclusion.mp3   
		else
		sudo beacon scan -A -b -d 4| ./playSound.sh
	fi
done
