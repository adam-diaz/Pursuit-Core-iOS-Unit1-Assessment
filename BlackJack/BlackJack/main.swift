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
    
    var userResponse = readLine() ?? "Antonio"
    print()
    if userResponse == "Hit".lowercased() {
        print(game.hitMe()!)
    }
    repeat {
        guard let status = game.gameStatus(card: Card) else {
        break
    }
        print("Would you like to ")
        
    } while game.hasMoreCards
    
    print(status)

    print("Would you like to play again? \(yes) or \(no)")

    let playAgain = readLine ?? ""

    if playAgain == "yes" {
        
        game.newGame()
        gameOver = true
    } else {
        gameOver = false
    }
    
    
} while gameOver


