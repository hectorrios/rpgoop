//
//  ViewController.swift
//  rpgoop
//
//  Created by Hector Rios on 19/02/16.
//  Copyright © 2016 mosby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    @IBOutlet weak var playerHPLbl: UILabel!
    @IBOutlet weak var enemyHPLbl: UILabel!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var chestBtn: UIButton!
    
    //MARK: variables
    
    var player : Player!
    var enemy : Enemy!
    var chestMessage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        player = Player(name: "Dirty Laundry 21", hp: 110, attackPwr: 20)
        playerHPLbl.text = "\(player.hp) HP"
        
        self.generateRandomEnemy()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //MARK: IBActions
    @IBAction func onChestTapped(sender: UIButton) {
        chestBtn.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
    }
    
    @IBAction func attackTapped(sender: UIButton) {
        if enemy.attemptAttack(player.attackPwr) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
            self.enemyHPLbl.text = "\(enemy.hp) HP"
        } else {
            printLbl.text = "Attack was unsuccessful!"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHPLbl.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImage.hidden = true
        }
    }
    
    //MARK: function
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPwr: 12)
            enemyImage.image = UIImage(named: "enem1")
        } else {
            enemy = DevilWizard(startingHp: 60, attackPwr: 15)
            print("Devil Wizard was built!")
            enemyImage.image = UIImage(named: "enem2")
        }
        
        self.enemyHPLbl.text = "\(self.enemy.hp)"
        
        if enemyImage.hidden {
            enemyImage.hidden = false
        }
    }
}

