//
//  InterfaceController.swift
//  WatchKitDemo WatchKit Extension
//
//  Created by 賴 彥瑾 on 2016/9/30.
//  Copyright © 2016年 賴 彥瑾. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var guessSlider: WKInterfaceSlider!         // the slider
    @IBOutlet var guessLabel: WKInterfaceLabel!     // the label displaying the guess number
    @IBOutlet var resultLabel: WKInterfaceLabel!    // Wrong/Correct Label

    var guessNumber = 3
    
    @IBAction func updateGuess(value: Float) {
        guessNumber = Int(value * 5)
        guessLabel.setText("Your guess: \(guessNumber)")
    }
    @IBAction func startGuess() {
        var randomNumber = Int(arc4random_uniform(6))
        
        if(guessNumber == randomNumber) {
            resultLabel.setText("Correct. You win!")
            
        } else {
            resultLabel.setText("Wrong. The number is \(randomNumber)")
        }        
    }
     func awakeWithContext(context: AnyObject?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
