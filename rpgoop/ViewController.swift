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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //MARK: IBActions
    @IBAction func onChestTapped(sender: UIButton) {
    }
}

