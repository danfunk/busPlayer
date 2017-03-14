#!/bin/bash	


while read line
do
		if [[ $line = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA5 0 1"* ]]; then
		  mplayer ./01intro.mp3 else
		elif [[ $line = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA6 0 1"* ]]; then
		  mplayer ./02togravesite.mp3 else
		elif [[ $line = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA7 0 1"* ]]; then
		  mplayer ./03gravesite.mp3 else
		elif [[ $line = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA8 0 1"* ]]; then
		  mplayer ./04visitorcenter.mp3 else
		elif [[ $line = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA9 0 1"* ]]; then
		  mplayer ./05conclusion.mp3   
		else
		sudo beacon scan -A -b -d 4| ./test3.sh
	fi
done
