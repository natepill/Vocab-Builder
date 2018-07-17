//
//  GameViewController.swift
//  VocabBuilder
//
//  Created by Memo on 7/16/18.
//  Copyright © 2018 Memo. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, UITextFieldDelegate {
    
    var wordsUsed: [String] = []
    var words: String = "Words Used: " // Delete this later
    
    @IBOutlet weak var letterLabel: UILabel!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var wordInputTextField: UITextField!

    
    @IBOutlet weak var testLabel: UILabel! // To delete label
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.wordInputTextField.delegate = self
        errorLabel.isHidden = true
        
    }
    
    // Function that deals with pressing "Return" on keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // Get word from text field input
        let wordGiven = wordInputTextField.text!.lowercased()
        print(wordsUsed)
        
        handleWordsUsedBefore(with: errorLabel, and: wordGiven, andReset: wordInputTextField)
        

        return false // Prevents keyboard from hiding
        
    }


    
}














