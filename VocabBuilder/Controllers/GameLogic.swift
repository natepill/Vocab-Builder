//
//  GameLogic.swift
//  VocabBuilder
//
//  Created by Memo on 7/17/18.
//  Copyright © 2018 Memo. All rights reserved.
//

import UIKit

extension GameViewController {
    
    func handleWordsUsedBefore(with errorLabel: UILabel, and wordGiven: String, andReset textField: UITextField) -> Void {
        let game = GameViewController()
        
        if wordsUsed.contains(wordGiven) {
            game.show(errorLabel: errorLabel, wordGiven: wordGiven)
        } else {
            wordsUsed.append(wordGiven)
            game.hide(errorLabel: errorLabel)
        }
        game.resetWordInput(of: textField)
    }
    
    func show(errorLabel: UILabel, wordGiven: String) {
        errorLabel.text = "already used " + wordGiven
        errorLabel.isHidden = false
    }
    
    func hide(errorLabel: UILabel) {
        errorLabel.isHidden = true
    }
    
    func resetWordInput(of textField: UITextField) {
        textField.text = ""
    }
    
    
}

