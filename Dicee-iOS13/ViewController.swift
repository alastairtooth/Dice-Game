//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet allows me to reference UI variables
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        /*
        
         - 'randomElement()' is a simplistic way of saying 'choose a random item from an array
        - 'int.random' is a more complex way of specifically stating the randomness of the variable
         
         ... in the middle means it's inclusive of the lower and upper
         ..< or >.. will remove the upper or lower (respectively)
         
         changing the 'Int' to another variable can change the random type (i.e. changing Int to Float will create random numbers in the range to 6 decimal places - double will be to 12)
         
         Bool.random will generate randomised true/false outcomes
         
         */
    }

}


