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

game.newGame()

var gameOver = false

let gameTitle = """

Welcome To BlackJack

"""

repeat {
    
    print(gameTitle)
    sleep(1)
    print("Would you like to hit or pass?")
    let userResponse = readLine() ?? "adán"
    print()
    if userResponse == "Hit".lowercased() {
        print(game.hitMe())
    }
    repeat {
        guard let status = game.gameStatus(card: Card) else {
        break
    }
        print()

    } while game.hasMoreCards


    print("Would you like to play again? \"yes\" or \"no\" ")

    let playAgain = readLine() ?? "type yes or no"

    if playAgain == "yes" {
        
        game.newGame()
        gameOver = true
    } else {
        gameOver = false
    }
    
    
} while gameOver


