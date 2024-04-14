function[audioFiles,fsRateOfChosenFile,fileIndex,audioToBePlayed]=songsLanguage(musicLanguage)
%SONGSLANGUAGE returns the values of audioFiles, fsRateOFChosenFile,
%fileIndex of the random song chosen out of all the files and the audiofile
%to be played

%assigning the folder path to the variable called folder
if strcmpi(musicLanguage,"french")
    folder="/Volumes/a1911292/Programming/Project/French";
elseif strcmpi(musicLanguage,"spanish")
    folder="/Volumes/a1911292/Programming/Project/Spanish";
elseif strcmpi(musicLanguage,"punjabi")
    folder="/Volumes/a1911292/Programming/Project/Punjabi";
elseif strcmpi(musicLanguage,"hindi")
    folder="/Volumes/a1911292/Programming/Project/Hindi";
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
