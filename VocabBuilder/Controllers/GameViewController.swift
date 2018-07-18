//
//  GameViewController.swift
//  VocabBuilder
//
//  Created by Memo on 7/16/18.
//  Copyright © 2018 Memo. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, UITextFieldDelegate {
    
    // Variables for timer and array of words used
    
    var randomLetter: String = LetterGenerator.generate()
    var wordsUsed: [String] = []
    var words: String = "Words Used: " // Delete this later
    var gameInt = 11
    var gameTimer = Timer()
    
    @IBOutlet weak var resultLabel: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var letterLabel: UILabel!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var wordInputTextField: UITextField!

    
    @IBOutlet weak var testLabel: UILabel! // To delete label
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.wordInputTextField.delegate = self
        errorLabel.isHidden = true
        letterLabel.text = randomLetter
        
        // Start timer for game screen
        gameTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(GameViewController.game), userInfo: nil, repeats: true)
        
        // Show keyboard when view loads
        wordInputTextField.becomeFirstResponder()
        
    }
    
    // Function that with "Return" button when pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Get word from text field input
        let wordGiven = wordInputTextField.text!.uppercased()
        print(wordsUsed)
        
        handleWordInput(wordGiven: wordGiven)
        return false // Prevents keyboard from hiding
    }

    @IBAction func resultButtonTapped(_ sender: UIButton) {
        segueToResultViewController()
    }
    
}

extension GameViewController{
    @objc func game() {
        // Decrementing the game timer by 1
        gameInt -= 1
        // After decrementing the timer update label to the current value
        timeLabel.text = String(gameInt)
        // Whenever the timer is equal to 0 stop the timer and go to the result screen
        if gameInt == 0 {
            // Stop the timer
            gameTimer.invalidate()
            // Go to the result view controller
            segueToResultViewController()
        }
    }
    
    func segueToResultViewController(){
        // Perform a segue to the next view controller
        self.performSegue(withIdentifier: "resultScreenSegue", sender: self)
    }
}

extension GameViewController {
    
    func handleWordInput(wordGiven: String) {
        
        //word already used
        if wordsUsed.contains(wordGiven)  {
            let errorText: String = "Already used " + wordGiven
            show(errorText: errorText)
            
            //word does not contain the randomLetter
        } else if wordGiven.hasPrefix(randomLetter) == false {
            let errorText: String = "Must begin with " + randomLetter
            show(errorText: errorText)
            
            //word sastifies the requirement
        } else {
            wordsUsed.append(wordGiven)
            hideError()
            newRandomLetter()
        }
        resetTextField()
    }
    
    func show(errorText: String) {
        errorLabel.text = errorText
        errorLabel.isHidden = false
    }
    
    func hideError() {
        errorLabel.isHidden = true
    }
    
    func resetTextField() {
        wordInputTextField.text = ""
    }
    
    func newRandomLetter() {
        randomLetter = LetterGenerator.generate()
        letterLabel.text = randomLetter
    }
    
    
}













