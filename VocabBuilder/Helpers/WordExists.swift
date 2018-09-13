//
//  WordCheckIfExists.swift
//  VocabBuilder
//
//  Created by Memo on 7/20/18.
//  Copyright © 2018 Memo. All rights reserved.
//

import Foundation
import SwiftyJSON

struct WordChecker {
    
    static func wordExists(wordGiven: String) -> Bool {
        // Check if word exists
        if UD.dictionary![wordGiven.lowercased()] != nil {
            return true
        } else {
            return false
        }
    }
    
}




