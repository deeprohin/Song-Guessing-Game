function []= skip(audioToBePlayed, startIndex,stopIndex,fsRateOfChosenFile,secondsToBeSkipped)
%SKIP adds seconds to be added to the song that was already chosen to be played 

stopIndex=stopIndex+secondsToBeSkipped* fsRateOfChosenFile;
play(audioToBePlayed,[startIndex,stopIndex]);
end 

