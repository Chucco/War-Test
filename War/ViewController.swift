//
//  ViewController.swift
//  War
//
//  Created by Chucco on 1/21/15.
//  Copyright (c) 2015 Chucco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var PlayRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    var cardNamesArray:[String] = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13"]
    
    var playerScoreTotal:Int = 0
    var enemyScoreTotal:Int = 0
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var enemyScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        //generate random number for the first card
        var firstRandomNumber:Int = Int(arc4random_uniform(13))
        var firstCardString:String = self.cardNamesArray[firstRandomNumber]
        
        //generate random number for the second card
        var secondRandomNumber:Int = Int(arc4random_uniform(13))
        var secondCardString:String = self.cardNamesArray[secondRandomNumber]
        
        //display approprate card from random numbers generated
        //set UIImage object into the image property of firstCardImageView
        self.firstCardImageView.image = UIImage(named: firstCardString)
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        //Determine the higher card
        if firstRandomNumber > secondRandomNumber {
            playerScoreTotal += 1
            self.playerScore.text = String(playerScoreTotal)
        }
        else if firstRandomNumber == secondRandomNumber {
            
        }
        else {
            enemyScoreTotal += 1
            self.enemyScore.text = String(enemyScoreTotal)
        }
    }
}

