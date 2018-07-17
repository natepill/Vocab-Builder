//
//  ViewController.swift
//  VocabBuilder
//
//  Created by Memo on 7/16/18.
//  Copyright © 2018 Memo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var startButton: UIButton!
    
    var startInt = 3
    @objc var startTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        API.checkIfWordExists(word: "deez nuutaz")
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        // Set the start time variable
        startInt = 3
        // Changing the title of of Button to the variable we created before
        startButton.setTitle(String(startInt), for: .normal)
        // Equating the startTimer variable to Create a timer and schedules it on the current run loop in the default
        startTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.startGameTimer), userInfo: nil, repeats: true)
        
    }
    
    

}

extension ViewController{
    // Function to start the timer for Home Screen
    @objc func startGameTimer(){
        // Decrementing the value of Timer by 1 everytime the function is called
        startInt -= 1
        // After decrementing the value of variable update the label with new value
        startButton.setTitle(String(startInt), for: .normal)
        // Whenever the loop ends stop the time timer and go to the next view controller segue way
        if startInt == 0 {
            // Stopping the timer
            startTimer.invalidate()
            // Performing segue for going to next view controller
            self.performSegue(withIdentifier:"startGameSegue", sender: self)
        }
    }
}

