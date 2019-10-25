//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation


//print("There are \(Card.newDeck(aceValue: 1).count) in a deck of cards")

let game = Game()

var restart = false

let gameTitle = """

Welcome To BlackJack

"""

repeat {
    
    print(gameTitle)

    let userInput = readLine() ?? ""
    print()
    
    game.hitMe(userInput)
    
    repeat {
        guard let
    }
} while restart
