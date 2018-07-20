//
//  WordCheckIfExists.swift
//  VocabBuilder
//
//  Created by Memo on 7/20/18.
//  Copyright © 2018 Memo. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Checker {
    
    static func doesNotExist(wordGiven: String) -> Bool {
        guard let jsonURL = Bundle.main.url(forResource: "dictionary", withExtension: "json")
            else { return false }
        
        let jsonData = try! Data(contentsOf: jsonURL)
        let wordsJSON = try! JSON(data: jsonData)
        
        // Check if word exists
        if wordsJSON[wordGiven] == 1 {
            return true
        } else {
            return false
        }
    }
    
}




