function[audioFiles,fsRateOfChosenFile,fileIndex,audioToBePlayed]=musicFiles(musicGenre)
    if strcmpi(musicGenre,"EDM")
        folder="/Volumes/a1911292/Programming/Project/EDM";
    elseif strcmpi(musicGenre,"Pop")
        folder="/Volumes/a1911292/Programming/Project/Pop";
    elseif strcmpi(musicGenre,"Jazz")
        folder="/Volumes/a1911292/Programming/Project/Jazz";
    elseif strcmpi(musicGenre,"Country")
        folder="/Volumes/a1911292/Programming/Project/Country";
    elseif strcmpi(musicGenre,"R&B")
        folder="/Volumes/a1911292/Programming/Project/R&B";
    end
%importing audio files
    %providing the path to the folder containing the audio files
    audioFiles = dir(fullfile(folder,'*.mp3'));
    %counting the number of files
    numberOfFilesInDirectory=length(audioFiles);
    audios = cell(1, numberOfFilesInDirectory);  % Initializing a matrix to store audio data
    % ....C = cell(n)....refernce from matlab documentation
    fs_rates = zeros(1, numberOfFilesInDirectory);  % Initialize a matrix to store
    % sample rates reading and storing the audio data and the sample rates for
    % the audio files



    %getting a random file number out of all those present in the directory
    rng('shuffle');
    fileIndex = randi(numberOfFilesInDirectory);
    
    %getting the path of the song chosen randomly out of the songs in the
    %directory
    pathOfTheFile = fullfile(folder, audioFiles(fileIndex).name);
    % reading the audio data and the fs rates of that particular song
    [audios{fileIndex}, fs_rates(fileIndex)] = audioread(pathOfTheFile);

    %assigning the variables the data to be stored taken out by using the
    %audioread function
    fileToBeChosen = audios{fileIndex};
    fsRateOfChosenFile = fs_rates(fileIndex);
    audioToBePlayed = audioplayer(fileToBeChosen, fsRateOfChosenFile);
end
