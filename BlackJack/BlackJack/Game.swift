//
//  Game.swift
//  BlackJack
//
//  Created by Adam Diaz on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
    
    
    var deck = Card.newDeck(aceValue: 1)
    
    var player = Player(score: 0, cards: [Card](), playerName: "player 1")
    
    var hitPlayer = true
    
    var score = 0

    var hasMoreCards: Bool {
        
        return !deck.isEmpty
    
    }
   
    var randomComputerScore: Int {
        
        return (Int.random(in: 18..<21))
    }
    
    func newGame() {
        
        player.score = 0
        
        deck = Card.newDeck(aceValue: 1)
        
        hitPlayer = true
        
        player.cards.removeAll()
        
    }
    
    func stopHits() -> Int {
        
        return randomComputerScore
        
    }
    
    func hitMe() -> Int {
        
            deck = deck.shuffled()
        
        if let lastCard = deck.popLast() {
            
            player.cards.append(lastCard)
            
             player.score += lastCard.value
        }
        
       print(player.cards.map({$0.stringify() }))
      
        return player.score
    }
    
    func computerVsPlayer() -> Int {
        
        return randomComputerScore
        
    }
    
    
    func gameStatus() -> Any? {

        
        if  player.score < 21 {
            
            
            print("\(player.score) would you like to hit or pass?")
            
        } else if player.score > 21 {
            
            print("\(player.score) Bust :( would you like to play again?")
           
            hitPlayer = false
            
        } else if player.score == 21 {
            
            print("\(player.score) You win! Would you like to play again?")
            
            hitPlayer = false
        }
   
        return hasMoreCards
    
    }
    
}



