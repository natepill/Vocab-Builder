//
//  Constants.swift
//  VocabBuilder
//
//  Created by Memo on 9/7/18.
//  Copyright © 2018 Memo. All rights reserved.
//

import Foundation
import UIKit

struct UD {
    
    static let defaults = UserDefaults.standard
    
    static var dictionary = defaults.dictionary(forKey: "dictionary")
    static var thesaurus = defaults.dictionary(forKey: "thesaurus")
    
    static var scores = defaults.dictionary(forKey: "localscores") ?? [:]
    
}

