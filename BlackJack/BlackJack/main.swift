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

//game.newGame()

var gameOver = false

let gameTitle = """

Welcome To BlackJack

"""

repeat {
   print(gameTitle)
    
    sleep(1)
    print("Would you like to hit or pass?")
    
    repeat {
    
    let userResponse = readLine() ?? "hit"
    print()

   
    if userResponse == "hit" {
        print(game.hitMe())
//        print("hit")
    } else if userResponse == "pass" {
        print(game.stopHits())
    }
   
        guard let _ = game.gameStatus() else {
        break
    }
        print()

    } while game.hitPlayer


    print("Would you like to play again? \"yes\" or \"no\" ")

    let playAgain = readLine() ?? "type yes or no"

    if playAgain == "yes" {

        game.newGame()
        gameOver = true
    } else {
        gameOver = false
    }
    
    
} while gameOver


