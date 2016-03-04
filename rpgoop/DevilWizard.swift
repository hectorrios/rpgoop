//
//  DevilWizard.swift
//  rpgoop
//
//  Created by Hector Rios on 01/03/16.
//  Copyright © 2016 mosby. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var loot : [String] {
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type : String {
        return "Devil Wizard"
    }
}