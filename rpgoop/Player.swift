//
//  Player.swift
//  rpgoop
//
//  Created by Hector Rios on 01/03/16.
//  Copyright © 2016 mosby. All rights reserved.
//

import Foundation

class Player : Character {
    
    //MARK: private properties
    private var _name = "Player"
    private var _inventory = [String]()
    
    //MARK: Computed attribs
    var name: String {
        get {
            return _name
        }
    }
    
    var inventory: [String] {
        get {
            return _inventory
        }
    }
    
    //Initializer
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(startingHp: hp, attackPwr: attackPwr)
        
        _name = name
    }
    
    
}