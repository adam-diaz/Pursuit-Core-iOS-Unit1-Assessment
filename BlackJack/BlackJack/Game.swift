//
//  Game.swift
//  BlackJack
//
//  Created by Adam Diaz on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
    
    
    var deck: [Card]
    
    var player: Player
    
    var hitPlayer: Bool
    
    var score = 0
    
    init(deck: [Card], player: Player, hitPlayer: Bool) {
        self.deck = deck
        self.player = player
        self.hitPlayer = hitPlayer
    }
    
    var hasMoreCards: Bool {
        
        return true || false
    
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
    
    func hitMe() {
        
        if hasMoreCards == true {
            
        func gameStatus() -> Any {
            
            return deck.popLast()!
             
            // may insert this method into the hitMe() method.
               
           }
            
        } else {
            
            
            func computerVsPlayer() -> Int {
                
                return randomComputerScore
                
            }
            
        }
  
    }
    
}

