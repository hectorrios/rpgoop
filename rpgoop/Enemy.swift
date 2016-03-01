//
//  Enemy.swift
//  rpgoop
//
//  Created by Hector Rios on 01/03/16.
//  Copyright © 2016 mosby. All rights reserved.
//

import Foundation

class Enemy : Character {
    
    var loot : [String] {
        //get shorthand, just specify a return
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    var type : String {
        //get shorthand, just specify a return
        return "Grunt"
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        } else {
            return nil
        }
    }
}
