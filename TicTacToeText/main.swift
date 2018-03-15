//
//  main.swift
//  TicTacToeText
//
//  Created by Matt Mo on 3/13/18.
//  Copyright © 2018 Matt Mo. All rights reserved.
//

import Foundation

print("Would you like to play a game of tic tac toe?");

var hasAskedToPlay = false;
var hasGameStarted = false;
var hasAskedToPlayComputer = false;
var hasDecidedWhoToPlay = false;
var isPlayingComputer = false;
var isComputerPlayingFirst = false;
var loopCount = 0;
while(true) {
    print("Looped: \(loopCount)");
    loopCount += 1;
    
    let response = readLine();
    
    // Exit game
    if (response == "quit") {
        print("Let's play again another time then.");
        break;
    }
    
    // Prompt to play
    if (!hasAskedToPlay) {
        let yesNoResponse = response?.lowercased();
        if (yesNoResponse == "no" || yesNoResponse == "n") {
            print("I'm sorry to hear that. Goodbye.");
            break;
        } else if (yesNoResponse == "yes" || yesNoResponse == "y"){
            print("Then let's play. Would you like to play me?");
            hasAskedToPlay = true;
            continue;
        } else {
            print("I'm sorry, I don't understand that.");
            continue;
        }
    }
    
    if (!hasGameStarted) {
        if (!hasDecidedWhoToPlay) {
            let yesNoResponse = response?.lowercased();
            if (yesNoResponse == "yes" || yesNoResponse == "y") {
                isPlayingComputer = true;
                print("Okay. Would you like to go first?")
                hasDecidedWhoToPlay = true;
            } else if (yesNoResponse == "no" || yesNoResponse == "n"){
                print("Alright.");
                print("What is player 1's first move?");
                hasDecidedWhoToPlay = true;
            }
        } else {
            // Decide if computer or player goes first
            let yesNoResponse = response?.lowercased();
            if (yesNoResponse == "yes" || yesNoResponse == "y") {
                print("Okay. You'll go first.")
                hasGameStarted = true;
            } else if (yesNoResponse == "no" || yesNoResponse == "n"){
                isComputerPlayingFirst = true;
                print("Okay. I'll go first.");
                hasGameStarted = false;
            }
        }
        continue;
    } else {
        
    }
    
    print("I'm sorry, I don't understand that.");
}
