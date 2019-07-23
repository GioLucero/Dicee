//
//  ViewController.swift
//  Dicee
//
//  Created by Gio Lucero on 2019-07-18.
//  Copyright © 2019 Gio Lucero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // making a connection between the design file and the coding file
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    
    // Image View only has Outlets
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateDiceImages()
    }

    // Buttons have both Outlets and Actions
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
        // This will get executed when the roll button is pressed
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages()  {
        // counting arrays start at 0, thus 0 - 5
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
}

