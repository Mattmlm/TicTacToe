//
//  TTTBoard.swift
//  TicTacToeText
//
//  Created by Matt Mo on 3/13/18.
//  Copyright © 2018 Matt Mo. All rights reserved.
//

import Cocoa

public class TTTBoard {
    var squares:[[TTTSquare]] = [];
    
    init() {
        squares = [
            [TTTSquare(), TTTSquare(), TTTSquare()],
            [TTTSquare(), TTTSquare(), TTTSquare()],
            [TTTSquare(), TTTSquare(), TTTSquare()],
        ];
    }
}
