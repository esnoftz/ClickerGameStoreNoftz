//
//  Game.swift
//  ClickerGameStoreNoftz
//
//  Created by David Noftz on 10/27/24.
//

import Foundation

class Game {
    
    var name: String
    var totalPoints: Int
    var wolf: Bool
    var lion: Bool
    var tiger: Bool
    
    
    init(name: String, totalPoints: Int, wolf: Bool, lion: Bool, tiger: Bool) {
        self.name = name
        self.totalPoints = totalPoints
        self.wolf = wolf
        self.lion = lion
        self.tiger = tiger
    }
    
    init() {
        name = "N/A"
        totalPoints = 0
        wolf = false
        lion = false
        tiger = false
    }
    
    
}
