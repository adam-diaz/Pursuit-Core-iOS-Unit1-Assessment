//
//  Game.swift
//  BlackJack
//
//  Created by Adam Diaz on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
    
    
    var deck = Card.newDeck(aceValue: 11)
    
    var player = Player(score: 0, cards: [Card](), playerName: "player 1")
    
    var hitPlayer = true
    
    var score = 0
    
//    init(deck: [Card], player: Player, hitPlayer: Bool) {
//        self.deck = deck
//        self.player = player
//        self.hitPlayer = hitPlayer
//    }
    
    var hasMoreCards: Bool {
        
        return !deck.isEmpty
    
    }
   
    var randomComputerScore: Int {
        
        return (Int.random(in: 18..<21))
    }
    
    func newGame() {
        
        score = 0
       
        deck.removeAll()
   
    }
    
    func stopHits() -> Int {
        
        // will run randomComputerScore in here
        
        return randomComputerScore
        
    }
    
    func hitMe() -> Int {
        
            deck = deck.shuffled()
        
        let lastCard = deck.popLast() 
        
        player.cards.append(lastCard)
       
        player.score += lastCard.value
      
        return player.score
    }
    
    func computerVsPlayer() -> Int {
        
        return randomComputerScore
        
    }
    
    
    func gameStatus(card: Card) -> Any {

        
        if  player.score < 21 {
            
            print("\(player.score) would you like to hit or pass?")
            
        } else if player.score > 21 {
            
            print("\(player.score) Bust :( would you like to play again?")
            
        } else {
            
            
        }
   
        return hasMoreCards
    
    }
    
}



