clc;
clear;
% importing the sound button and reading in the values of fsrates
%[y,Fs] = audioread(filename).....matlab documentation
[soundButton,fsRateButton]=audioread("/Volumes/a1911292/Programming/Project/button.mp3");
%player = audioplayer(Y,Fs)......MATLAB documentation
buttonSound=audioplayer(soundButton,fsRateButton);
% importing in the initial sound and reading in the values of its fsrates
[startSound,fsRateInitial]=audioread("/Volumes/a1911292/Programming/Project/start.mp3");
startSoundPlay=audioplayer(startSound,fsRateInitial);

%refernce- matlab documentation- play(playerObj)
play(startSoundPlay);
welcomeBoard=[" █████   ███   █████          ████                                                 █████";          
"░░███   ░███  ░░███          ░░███                                                ░░███";             
" ░███   ░███   ░███   ██████  ░███   ██████   ██████  █████████████    ██████     ███████    ██████";
" ░███   ░███   ░███  ███░░███ ░███  ███░░███ ███░░███░░███░░███░░███  ███░░███   ░░░███░    ███░░███";
" ░░███  █████  ███  ░███████  ░███ ░███ ░░░ ░███ ░███ ░███ ░███ ░███ ░███████      ░███    ░███ ░███";
"  ░░░█████░█████░   ░███░░░   ░███ ░███  ███░███ ░███ ░███ ░███ ░███ ░███░░░       ░███ ███░███ ░███";
"    ░░███ ░░███     ░░██████  █████░░██████ ░░██████  █████░███ █████░░██████      ░░█████ ░░██████";
"     ░░░   ░░░       ░░░░░░  ░░░░░  ░░░░░░   ░░░░░░  ░░░░░ ░░░ ░░░░░  ░░░░░░        ░░░░░   ░░░░░░"; 
                                                                                                    
                                                                                                    
                                                                                                    
"  █████    █████                                                              ███ ███ ███";           
" ░░███    ░░███                                                              ░███░███░███";          
" ███████   ░███████    ██████      ███████  ██████   █████████████    ██████ ░███░███░███";           
"░░░███░    ░███░░███  ███░░███    ███░░███ ░░░░░███ ░░███░░███░░███  ███░░███░███░███░███";           
"  ░███     ░███ ░███ ░███████    ░███ ░███  ███████  ░███ ░███ ░███ ░███████ ░███░███░███";          
"  ░███ ███ ░███ ░███ ░███░░░     ░███ ░███ ███░░███  ░███ ░███ ░███ ░███░░░  ░░░ ░░░ ░░░";           
"  ░░█████  ████ █████░░██████    ░░███████░░████████ █████░███ █████░░██████  ███ ███ ███";          
"   ░░░░░  ░░░░ ░░░░░  ░░░░░░      ░░░░░███ ░░░░░░░░ ░░░░░ ░░░ ░░░░░  ░░░░░░  ░░░ ░░░ ░░░";            
"                                  ███ ░███";                                                         
"                                 ░░██████";                                                          
"                                  ░░░░░░"                                                           ];

    

for r=1:size(welcomeBoard,1)
   pause(0.5);
    fprintf("%s\n",welcomeBoard(r));
end
pause(1.5);
play(buttonSound);
%giving the instructions for the game
disp("WELCOME TO THE SONG GUESSING GAME!");

%using pause to cause a delay in the output dispalyed and hence making it
%more user friendly and readable
pause(2);
rulesOfGame='Rules for this game are: ';
%adding transition
for a=1:length(rulesOfGame)
    fprintf("%s",rulesOfGame(a));
    pause(0.05);
end
fprintf("\n");
firstRule='1. You have to guess the name of the song (based on the music genre and language you select).';
for b=1:length(firstRule)
    fprintf("%s",firstRule(b));
    pause(0.05);
end
fprintf("\n");
secondRule='2. The earlier you guess,the more points you get.';
for c=1:length(secondRule)
    fprintf("%s",secondRule(c));
    pause(0.05);
end
fprintf("\n");
thirdRule='3. You will have 6 chances to guess the song.';
for d=1:length(thirdRule)
    fprintf("%s",thirdRule(d));
    pause(0.05);
end
fprintf("\n");
disclaimerRule='DISCLAIMER- DO NOT include any whitespaces while giving in the input and enter the correct spellings. ';
for e=1:length(disclaimerRule)
    fprintf("%s",disclaimerRule(e));
    pause(0.05);
end
fprintf("\n");
fprintf("Good Luck!! \n");
pause(4);

%taking input for the user's name
play(buttonSound);
userName=input("Kindly enter your first name: ","s");


pause(1);
fprintf("Hey %s!!! Ready to dive into the world of music?\n",userName);

pause(2);
play(buttonSound);

%taking input for the language of the songs
musicLanguage=input("What language do you want to guess from? (English, Spanish, French, Punjabi or Hindi): ",'s');
%input validation for music language
while ~strcmpi(musicLanguage,"english") && ~strcmpi(musicLanguage,"spanish")&& ~strcmpi(musicLanguage,"french")&& ~strcmpi(musicLanguage,"punjabi")&& ~strcmpi(musicLanguage,"hindi")
    pause(2);
    fprintf("The input you entered should be either English, Spanish, French, Punjabi or Hindi. \n");
    pause(2);
    musicLanguage=input("Enter a valid input (English, Spanish, French, Punjabi or Hindi) : ",'s');
end

%using an if statement to run a particular code depending upon the language
%selected by the user
if strcmpi(musicLanguage,"english")

    %asking the user for the sort of music genre he wants to guess it from
    musicGenre=input("What music genre would you like to guess from (EDM, Pop, R&B, Country or Jazz)?: ","s");
    %input validation for the genre selected
    while ~strcmpi(musicGenre,"edm") && ~strcmpi(musicGenre,"pop")&& ~strcmpi(musicGenre,"R&B")&& ~strcmpi(musicGenre,"country")&& ~strcmpi(musicGenre,"jazz")
        pause(2);
        fprintf("The input you entered should be either EDM, Pop, R&B, Country or Jazz. \n");
        pause(2);
        musicGenre=input("Enter a valid music genre(EDM, Pop, R&B, Country or Jazz) : ",'s');
    end
    disp("Loading...");

    %calling in the function music files and putting in the values of the
    %parameters and returning the values of the variables based on the
    %genre and a particular song selected randomly from that genre
    %[ave,stdev] = stat(values)......MATLAB documentation
    if strcmpi(musicGenre,"EDM")
        [audioFiles,fsRateOfChosenFile,fileIndex,audioToBePlayed]= musicFiles("EDM");
    elseif strcmpi(musicGenre,"Pop")
        [audioFiles,fsRateOfChosenFile,fileIndex,audioToBePlayed] = musicFiles("Pop");
    elseif strcmpi(musicGenre,"R&B")
        [audioFiles,fsRateOfChosenFile,fileIndex,audioToBePlayed] = musicFiles("R&B");
    elseif strcmpi(musicGenre,"Country")
        [audioFiles,fsRateOfChosenFile,fileIndex,audioToBePlayed] = musicFiles("Country");
    elseif strcmpi(musicGenre,"Jazz")
        [audioFiles,fsRateOfChosenFile,fileIndex,audioToBePlayed] = musicFiles("Jazz");
    end


    play(buttonSound);

    %asking the user to enter the difficulty level- which will decide how
    %long will the song be played initially
    difficultyLevel=input("Enter a difficulty level (easy, medium, hard or deadly) : ","s");

    % input validation for difficulty level
    while ~strcmpi(difficultyLevel,"easy") && ~strcmpi(difficultyLevel,"medium") && ~strcmpi(difficultyLevel,"hard") && ~strcmpi(difficultyLevel,"deadly")
        fprintf("The input you entered should be either easy, medium, hard or deadly! \n");
        difficultyLevel=input("Enter a difficulty level (easy, medium, hard or deadly) : ","s");
    end

    %code to run if the user choses the easy as the difficulty level
    if strcmpi(difficultyLevel,"easy")
        pause(2);

        %defining the start and stop for the audio file
        startIndex = 20 * fsRateOfChosenFile;
        stopIndex = 25 * fsRateOfChosenFile;

        % Play the audio file
        %play(playerObj,[start,stop])- matlab documentation
        play(audioToBePlayed, [startIndex, stopIndex]);

        %extracting the name of the song from audioFiles vector containing
        %in multiple information about the audiofile
        nameOfTheSong = audioFiles(fileIndex).name;
        %removing in the .mp3 from the name of the song
        nameOfTheSong = nameOfTheSong(1:end-4);

        %defining in the number of chances user has to guess the song
        chances = 6;
        %initialising the numberOfPoints scored by the user
        numberOfPoints=0;

        %creating a for loop for the logic of the game
        for i = 1:chances

            %giving the details of number of chances left with the user
            fprintf("You have %d chance(s) left. \n",chances-i+1) ;
            pause(2);
            %asking user if they want to skip 2 seconds of the song when
            %they don't have any idea about what is going on or try
            %guessing the song
            fprintf("Do you want to skip (+2 seconds) or try guesssing it?");
            choice=input(": ","s");

            %input validation for the choice user made
            while ~strcmpi(choice,"skip") && ~strcmpi(choice,"guess")
                fprintf("The input you entered should be either SKIP or GUESS. \n");
                pause(2);
                choice=input("Enter a valid input(skip or guess) : ",'s');
            end

            %if the choice user made is skip then the following code to be
            %followed
            if strcmpi(choice, "skip")

                %an if elseif statement which has the following logic
                % if it is the last chance to guess the song and the user
                %skips that then the whole song is to be played else only 2
                %seconds are to be skipped
                if i<chances
                    skip(audioToBePlayed, startIndex, stopIndex, fsRateOfChosenFile, 2*i);
                elseif i== chances
                    disp('You have exhausted all your chances to guess!!!!');
                    play(audioToBePlayed);
                    fprintf('The song was %s !!!!!!!\n', nameOfTheSong);
                    disp("You lost the game and scored 0 points.");
                end

                %if the user chose to guess the song instead of skipping it the following code is to be followed
            elseif strcmpi(choice,"guess")

                %asking the input for the song name
                songGuess = input("Enter the name of the song: ", "s");

                %checking if the song name matches the input entered by the
                %user
                if strcmpi(songGuess, nameOfTheSong)
                    fprintf('Yaaaayyyyyy!!!!! You guessed it right!!!!\n');
                    play(audioToBePlayed);

                    %giving in points based on the which try the user
                    %guessed the answer
                    if i==1
                        numberOfPoints=numberOfPoints+6;
                    elseif i==2
                        numberOfPoints=numberOfPoints+5;
                    elseif i==3
                        numberOfPoints=numberOfPoints+4;
                    elseif i==4
                        numberOfPoints=numberOfPoints+3;
                    elseif i==5
                        numberOfPoints=numberOfPoints+2;
                    elseif i==chances
                        numberOfPoints=numberOfPoints+1;
                    end

                    fprintf("You won with %d points!!!!!", numberOfPoints);
                    break;

                    %code to be followed if the user guessed the song wrong
                else
                    fprintf('Oh No! That was incorrect!!\n');

                    %if the user guessed the song wrong at his last chance
                    %playing and displaying name of the song and saying that he has no chances
                    %left to guess
                    if i==6
                        disp('You have exhausted all your chances to guess!!!!');
                        play(audioToBePlayed);
                        fprintf('The song was %s !!!!!!!\n', nameOfTheSong);
                        disp("You lost the game and scored 0 points.");
                    end

                    % end for guessing the song name
                end

                % end for if statement skipping
            end
            %end for the logic of the game
        end


        % %code to run if the user choses the medium as the difficulty level
    elseif strcmpi(difficultyLevel,"medium")
        pause(2);

        %defining the start and stop for the audio file
        startIndex = 20 * fsRateOfChosenFile;
        stopIndex = 23 * fsRateOfChosenFile;

        % Play the audio file
        %play(playerObj,[start,stop])- matlab documentation
        play(audioToBePlayed, [startIndex, stopIndex]);

        %extracting the name of the song from audioFiles vector containing
        %in multiple information about the audiofile
        nameOfTheSong = audioFiles(fileIndex).name;
        %removing in the .mp3 from the name of the song
        nameOfTheSong = nameOfTheSong(1:end-4);

        %defining in the number of chances user has to guess the song
        chances = 6;
        %initialising the numberOfPoints scored by the user
        numberOfPoints=0;

        %creating a for loop for the logic of the game
        for i = 1:chances

            %giving the details of number of chances left with the user
            fprintf("You have %d chance(s) left. \n",chances-i+1) ;
            pause(2);
            %asking user if they want to skip 2 seconds of the song when
            %they don't have any idea about what is going on or try
            %guessing the song
            fprintf("Do you want to skip (+2 seconds) or try guesssing it?");
            choice=input(": ","s");

            %input validation for the choice user made
            while ~strcmpi(choice,"skip") && ~strcmpi(choice,"guess")
                fprintf("The input you entered should be either SKIP or GUESS. \n");
                pause(2);
                choice=input("Enter a valid input(skip or guess) : ",'s');
            end

            %if the choice user made is skip then the following code to be
            %followed
            if strcmpi(choice, "skip")

                %an if elseif statement which has the following logic
                % if it is the last chance to guess the song and the user
                %skips that then the whole song is to be played else only 2
                %seconds are to be skipped
                if i<chances
                    skip(audioToBePlayed, startIndex, stopIndex, fsRateOfChosenFile, 2*i);
                elseif i== chances
                    disp('You have exhausted all your chances to guess!!!!');
                    play(audioToBePlayed);
                    fprintf('The song was %s !!!!!!!\n', nameOfTheSong);
                    disp("You lost the game and scored 0 points.");
                end

                %if the user chose to guess the song instead of skipping it the following code is to be followed
            elseif strcmpi(choice,"guess")

                %asking the input for the song name
                songGuess = input("Enter the name of the song: ", "s");

                %checking if the song name matches the input entered by the
                %user
                if strcmpi(songGuess, nameOfTheSong)
                    fprintf('Yaaaayyyyyy!!!!! You guessed it right!!!!\n');
                    play(audioToBePlayed);

                    %giving in points based on the which try the user
                    %guessed the answer
                    if i==1
                        numberOfPoints=numberOfPoints+6;
                    elseif i==2
                        numberOfPoints=numberOfPoints+5;
                    elseif i==3
                        numberOfPoints=numberOfPoints+4;
                    elseif i==4
                        numberOfPoints=numberOfPoints+3;
                    elseif i==5
                        numberOfPoints=numberOfPoints+2;
                    elseif i==chances
                        numberOfPoints=numberOfPoints+1;
                    end

                    fprintf("You won with %d points!!!!!", numberOfPoints);
                    break;

                    %code to be followed if the user guessed the song wrong
                else
                    fprintf('Oh No! That was incorrect!!\n');

                    %if the user guessed the song wrong at his last chance
                    %playing and displaying name of the song and saying that he has no chances
                    %left to guess
                    if i==6
                        disp('You have exhausted all your chances to guess!!!!');
                        play(audioToBePlayed);
                        fprintf('The song was %s !!!!!!!\n', nameOfTheSong);
                        disp("You lost the game and scored 0 points.");
                    end

                    % end for guessing the song name
                end

                % end for if statement skipping
            end
            %end for the logic of the game
        end

        %code to be run if the user choses hard as the difficulty level
    elseif strcmpi(difficultyLevel,"hard")
        pause(2);

        %defining the start and stop for the audio file
        startIndex = 20 * fsRateOfChosenFile;
        stopIndex = 22 * fsRateOfChosenFile;

        % Play the audio file
        %play(playerObj,[start,stop])- matlab documentation
        play(audioToBePlayed, [startIndex, stopIndex]);

        %extracting the name of the song from audioFiles vector containing
        %in multiple information about the audiofile
        nameOfTheSong = audioFiles(fileIndex).name;
        %removing in the .mp3 from the name of the song
        nameOfTheSong = nameOfTheSong(1:end-4);

        %defining in the number of chances user has to guess the song
        chances = 6;
        %initialising the numberOfPoints scored by the user
        numberOfPoints=0;

        %creating a for loop for the logic of the game
        for i = 1:chances

            %giving the details of number of chances left with the user
            fprintf("You have %d chance(s) left. \n",chances-i+1) ;
            pause(2);
            %asking user if they want to skip 2 seconds of the song when
            %they don't have any idea about what is going on or try
            %guessing the song
            fprintf("Do you want to skip (+2 seconds) or try guesssing it?");
            choice=input(": ","s");

            %input validation for the choice user made
            while ~strcmpi(choice,"skip") && ~strcmpi(choice,"guess")
                fprintf("The input you entered should be either SKIP or GUESS. \n");
                pause(2);
                choice=input("Enter a valid input(skip or guess) : ",'s');
            end

            %if the choice user made is skip then the following code to be
            %followed
            if strcmpi(choice, "skip")

                %an if elseif statement which has the following logic
                % if it is the last chance to guess the song and the user
                %skips that then the whole song is to be played else only 2
                %seconds are to be skipped
                if i<chances
                    skip(audioToBePlayed, startIndex, stopIndex, fsRateOfChosenFile, 2*i);
                elseif i== chances
                    disp('You have exhausted all your chances to guess!!!!');
                    play(audioToBePlayed);
                    fprintf('The song was %s !!!!!!!\n', nameOfTheSong);
                    disp("You lost the game and scored 0 points.");
                end

                %if the user chose to guess the song instead of skipping it the following code is to be followed
            elseif strcmpi(choice,"guess")

                %asking the input for the song name
                songGuess = input("Enter the name of the song: ", "s");

                %checking if the song name matches the input entered by the
                %user
                if strcmpi(songGuess, nameOfTheSong)
                    fprintf('Yaaaayyyyyy!!!!! You guessed it right!!!!\n');
                    play(audioToBePlayed);

                    %giving in points based on the which try the user
                    %guessed the answer
                    if i==1
                        numberOfPoints=numberOfPoints+6;
                    elseif i==2
                        numberOfPoints=numberOfPoints+5;
                    elseif i==3
                        numberOfPoints=numberOfPoints+4;
                    elseif i==4
                        numberOfPoints=numberOfPoints+3;
                    elseif i==5
                        numberOfPoints=numberOfPoints+2;
                    elseif i==chances
                        numberOfPoints=numberOfPoints+1;
                    end

                    fprintf("You won with %d points!!!!!", numberOfPoints);
                    break;

                    %code to be followed if the user guessed the song wrong
                else
                    fprintf('Oh No! That was incorrect!!\n');

                    %if the user guessed the song wrong at his last chance
                    %playing and displaying name of the song and saying that he has no chances
                    %left to guess
                    if i==6
                        disp('You have exhausted all your chances to guess!!!!');
                        play(audioToBePlayed);
                        fprintf('The song was %s !!!!!!!\n', nameOfTheSong);
                        disp("You lost the game and scored 0 points.");
                    end

                    % end for guessing the song name
                end

                % end for if statement skipping
            end
            %end for the logic of the game
        end

        %code to be run if the user choses deadly as the difficulty level
    elseif strcmpi(difficultyLevel,"deadly")
        pause(2);

        %defining the start and stop for the audio file
        startIndex = 20 * fsRateOfChosenFile;
        stopIndex = 21 * fsRateOfChosenFile;

        % Play the audio file
        %play(playerObj,[start,stop])- matlab documentation
        play(audioToBePlayed, [startIndex, stopIndex]);

        %extracting the name of the song from audioFiles vector containing
        %in multiple information about the audiofile
        nameOfTheSong = audioFiles(fileIndex).name;
        %removing in the .mp3 from the name of the song
        nameOfTheSong = nameOfTheSong(1:end-4);

        %defining in the number of chances user has to guess the song
        chances = 6;
        %initialising the numberOfPoints scored by the user
        numberOfPoints=0;

        %creating a for loop for the logic of the game
        for i = 1:chances

            %giving the details of number of chances left with the user
            fprintf("You have %d chance(s) left. \n",chances-i+1) ;
            pause(2);
            %asking user if they want to skip 2 seconds of the song when
            %they don't have any idea about what is going on or try
            %guessing the song
            fprintf("Do you want to skip (+2 seconds) or try guesssing it?");
            choice=input(": ","s");

            %input validation for the choice user made
            while ~strcmpi(choice,"skip") && ~strcmpi(choice,"guess")
                fprintf("The input you entered should be either SKIP or GUESS. \n");
                pause(2);
                choice=input("Enter a valid input(skip or guess) : ",'s');
            end

            %if the choice user made is skip then the following code to be
            %followed
            if strcmpi(choice, "skip")

                %an if elseif statement which has the following logic
                % if it is the last chance to guess the song and the user
                %skips that then the whole song is to be played else only 2
                %seconds are to be skipped
                if i<chances
                    skip(audioToBePlayed, startIndex, stopIndex, fsRateOfChosenFile, 2*i);
                elseif i== chances
                    disp('You have exhausted all your chances to guess!!!!');
                    play(audioToBePlayed);
                    fprintf('The song was %s !!!!!!!\n', nameOfTheSong);
                    disp("You lost the game and scored 0 points.");
                end

                %if the user chose to guess the song instead of skipping it the following code is to be followed
            elseif strcmpi(choice,"guess")

                %asking the input for the song name
                songGuess = input("Enter the name of the song: ", "s");

                %checking if the song name matches the input entered by the
                %user
                if strcmpi(songGuess, nameOfTheSong)
                    fprintf('Yaaaayyyyyy!!!!! You guessed it right!!!!\n');
                    play(audioToBePlayed);

                    %giving in points based on the which try the user
                    %guessed the answer
                    if i==1
                        numberOfPoints=numberOfPoints+6;
                    elseif i==2
                        numberOfPoints=numberOfPoints+5;
                    elseif i==3
                        numberOfPoints=numberOfPoints+4;
                    elseif i==4
                        numberOfPoints=numberOfPoints+3;
                    elseif i==5
                        numberOfPoints=numberOfPoints+2;
                    elseif i==chances
                        numberOfPoints=numberOfPoints+1;
                    end

                    fprintf("You won with %d points!!!!!", numberOfPoints);
                    break;

                    %code to be followed if the user guessed the song wrong
                else
                    fprintf('Oh No! That was incorrect!!\n');

                    %if the user guessed the song wrong at his last chance
                    %playing and displaying name of the song and saying that he has no chances
                    %left to guess
                    if i==6
                        disp('You have exhausted all your chances to guess!!!!');
                        play(audioToBePlayed);
                        fprintf('The song was %s !!!!!!!\n', nameOfTheSong);
                        disp("You lost the game and scored 0 points.");
                    end

                    % end for guessing the song name
                end

                % end for if statement skipping
            end
            %end for the logic of the game
        end
        %end for the difficulty levels
    end

    %if the language chosen isn't english then the following code
else
    disp("Loading...");

    %%calling in the function music files and putting in the values of the
    %parameters and returning the values of the variables based on the
    %language and a particular song selected randomly from that language
    %[ave,stdev] = stat(values)......MATLAB documentation
    if strcmpi(musicLanguage,"french")
        [audioFiles,fsRateOfChosenFile,fileIndex,audioToBePlayed]= songsLanguage("French");
    elseif strcmpi(musicLanguage,"spanish")
        [audioFiles,fsRateOfChosenFile,fileIndex,audioToBePlayed]= songsLanguage("spanish");
    elseif strcmpi(musicLanguage,"hindi")
        [audioFiles,fsRateOfChosenFile,fileIndex,audioToBePlayed]= songsLanguage("hindi");
    elseif strcmpi(musicLanguage,"punjabi")
        [audioFiles,fsRateOfChosenFile,fileIndex,audioToBePlayed]= songsLanguage("punjabi");
    end

    play(buttonSound);

    %asking the user for the difficulty level
    difficultyLevel=input("Enter a difficulty level (normal or deadly) : ","s");
    % input validation for difficulty level
    while ~strcmpi(difficultyLevel,"normal") && ~strcmpi(difficultyLevel,"survival")
        fprintf("The input you entered should be either normal or deadly! \n");
        difficultyLevel=input("Enter a difficulty level (normal or deadly) : ","s");
    end
    %code to be run if the difficulty level is normal
    if strcmpi(difficultyLevel,"normal")

        pause(2);

        %defining the start and stop for the audio file
        startIndex = 20 * fsRateOfChosenFile;
        stopIndex = 25 * fsRateOfChosenFile;

        % Play the audio file
        %play(playerObj,[start,stop])- matlab documentation
        play(audioToBePlayed, [startIndex, stopIndex]);

        %extracting the name of the song from audioFiles vector containing
        %in multiple information about the audiofile
        nameOfTheSong = audioFiles(fileIndex).name;
        %removing in the .mp3 from the name of the song
        nameOfTheSong = nameOfTheSong(1:end-4);

        %defining in the number of chances user has to guess the song
        chances = 6;
        %initialising the numberOfPoints scored by the user
        numberOfPoints=0;

        %creating a for loop for the logic of the game
        for i = 1:chances

            %giving the details of number of chances left with the user
            fprintf("You have %d chance(s) left. \n",chances-i+1) ;
            pause(2);
            %asking user if they want to skip 2 seconds of the song when
            %they don't have any idea about what is going on or try
            %guessing the song
            fprintf("Do you want to skip (+2 seconds) or try guesssing it?");
            choice=input(": ","s");

            %input validation for the choice user made
            while ~strcmpi(choice,"skip") && ~strcmpi(choice,"guess")
                fprintf("The input you entered should be either SKIP or GUESS. \n");
                pause(2);
                choice=input("Enter a valid input(skip or guess) : ",'s');
            end

            %if the choice user made is skip then the following code to be
            %followed
            if strcmpi(choice, "skip")

                %an if elseif statement which has the following logic
                % if it is the last chance to guess the song and the user
                %skips that then the whole song is to be played else only 2
                %seconds are to be skipped
                if i<chances
                    skip(audioToBePlayed, startIndex, stopIndex, fsRateOfChosenFile, 2*i);
                elseif i== chances
                    disp('You have exhausted all your chances to guess!!!!');
                    play(audioToBePlayed);
                    fprintf('The song was %s !!!!!!!\n', nameOfTheSong);
                    disp("You lost the game and scored 0 points.");
                end

                %if the user chose to guess the song instead of skipping it the following code is to be followed
            elseif strcmpi(choice,"guess")

                %asking the input for the song name
                songGuess = input("Enter the name of the song: ", "s");

                %checking if the song name matches the input entered by the
                %user
                if strcmpi(songGuess, nameOfTheSong)
                    fprintf('Yaaaayyyyyy!!!!! You guessed it right!!!!\n');
                    play(audioToBePlayed);

                    %giving in points based on the which try the user
                    %guessed the answer
                    if i==1
                        numberOfPoints=numberOfPoints+6;
                    elseif i==2
                        numberOfPoints=numberOfPoints+5;
                    elseif i==3
                        numberOfPoints=numberOfPoints+4;
                    elseif i==4
                        numberOfPoints=numberOfPoints+3;
                    elseif i==5
                        numberOfPoints=numberOfPoints+2;
                    elseif i==chances
                        numberOfPoints=numberOfPoints+1;
                    end

                    fprintf("You won with %d points!!!!!", numberOfPoints);
                    break;

                    %code to be followed if the user guessed the song wrong
                else
                    fprintf('Oh No! That was incorrect!!\n');

                    %if the user guessed the song wrong at his last chance
                    %playing and displaying name of the song and saying that he has no chances
                    %left to guess
                    if i==6
                        disp('You have exhausted all your chances to guess!!!!');
                        play(audioToBePlayed);
                        fprintf('The song was %s !!!!!!!\n', nameOfTheSong);
                        disp("You lost the game and scored 0 points.");
                    end

                    % end for guessing the song name
                end

                % end for if statement skipping
            end
            %end for the logic of the game
        end

        %code to be followed if the user enters deadly as the input for
        %difficulty level
    elseif strcmpi(difficultyLevel,"deadly")
        pause(2);

        %defining the start and stop for the audio file
        startIndex = 20 * fsRateOfChosenFile;
        stopIndex = 21 * fsRateOfChosenFile;

        % Play the audio file
        %play(playerObj,[start,stop])- matlab documentation
        play(audioToBePlayed, [startIndex, stopIndex]);

        %extracting the name of the song from audioFiles vector containing
        %in multiple information about the audiofile
        nameOfTheSong = audioFiles(fileIndex).name;
        %removing in the .mp3 from the name of the song
        nameOfTheSong = nameOfTheSong(1:end-4);

        %defining in the number of chances user has to guess the song
        chances = 6;
        %initialising the numberOfPoints scored by the user
        numberOfPoints=0;

        %creating a for loop for the logic of the game
        for i = 1:chances

            %giving the details of number of chances left with the user
            fprintf("You have %d chance(s) left. \n",chances-i+1) ;
            pause(2);
            %asking user if they want to skip 2 seconds of the song when
            %they don't have any idea about what is going on or try
            %guessing the song
            fprintf("Do you want to skip (+2 seconds) or try guesssing it?");
            choice=input(": ","s");

            %input validation for the choice user made
            while ~strcmpi(choice,"skip") && ~strcmpi(choice,"guess")
                fprintf("The input you entered should be either SKIP or GUESS. \n");
                pause(2);
                choice=input("Enter a valid input(skip or guess) : ",'s');
            end

            %if the choice user made is skip then the following code to be
            %followed
            if strcmpi(choice, "skip")

                %an if elseif statement which has the following logic
                % if it is the last chance to guess the song and the user
                %skips that then the whole song is to be played else only 2
                %seconds are to be skipped
                if i<chances
                    skip(audioToBePlayed, startIndex, stopIndex, fsRateOfChosenFile, 2*i);
                elseif i== chances
                    disp('You have exhausted all your chances to guess!!!!');
                    play(audioToBePlayed);
                    fprintf('The song was %s !!!!!!!\n', nameOfTheSong);
                    disp("You lost the game and scored 0 points.");
                end

                %if the user chose to guess the song instead of skipping it the following code is to be followed
            elseif strcmpi(choice,"guess")

                %asking the input for the song name
                songGuess = input("Enter the name of the song: ", "s");

                %checking if the song name matches the input entered by the
                %user
                if strcmpi(songGuess, nameOfTheSong)
                    fprintf('Yaaaayyyyyy!!!!! You guessed it right!!!!\n');
                    play(audioToBePlayed);

                    %giving in points based on the which try the user
                    %guessed the answer
                    if i==1
                        numberOfPoints=numberOfPoints+6;
                    elseif i==2
                        numberOfPoints=numberOfPoints+5;
                    elseif i==3
                        numberOfPoints=numberOfPoints+4;
                    elseif i==4
                        numberOfPoints=numberOfPoints+3;
                    elseif i==5
                        numberOfPoints=numberOfPoints+2;
                    elseif i==chances
                        numberOfPoints=numberOfPoints+1;
                    end

                    fprintf("You won with %d points!!!!!", numberOfPoints);
                    break;

                    %code to be followed if the user guessed the song wrong
                else
                    fprintf('Oh No! That was incorrect!!\n');

                    %if the user guessed the song wrong at his last chance
                    %playing and displaying name of the song and saying that he has no chances
                    %left to guess
                    if i==6
                        disp('You have exhausted all your chances to guess!!!!');
                        play(audioToBePlayed);
                        fprintf('The song was %s !!!!!!!\n', nameOfTheSong);
                        disp("You lost the game and scored 0 points.");
                    end

                    % end for guessing the song name
                end

                % end for if statement skipping
            end

            %end for the logic of the game
        end
    end
end