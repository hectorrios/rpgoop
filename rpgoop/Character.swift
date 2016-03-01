//
//  Character.swift
//  rpgoop
//
//  Created by Hector Rios on 26/02/16.
//  Copyright © 2016 mosby. All rights reserved.
//

import Foundation

class Character {
    
    //MARK: Private properties
    private var _hp: Int = 0
    private var _attackPwr : Int = 10
    
    
    //MARK: Computed Properties
    var attackPwr: Int {
        //return _attackPwr  -- One way of doing a getter
        get {
            return _attackPwr
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        get {
            if (_hp <= 0) {
                return false
            } else {
                return true
            }
        }
    }
    
    //MARK: Constructors
    init(startingHp: Int, attackPwr: Int) {
        self._hp = startingHp
        self._attackPwr = attackPwr
    }
    
    //MARK: Functions
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
}