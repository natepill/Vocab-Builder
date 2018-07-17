//
//  APIService.swift
//  VocabBuilder
//
//  Created by Memo on 7/17/18.
//  Copyright © 2018 Memo. All rights reserved.
//

import Foundation

struct API {
    
    // Later on we will take word as an input. Delete this variable later
    
    static func checkIfWordExists(word: String) {
        
        let appId = "f3d865c4"
        let appKey = "3eda87c3cade9b19556d0c3eec35f77a"
        
        let language = "en"
        // Fix this issue
        let url = URL(string: "https://od-api.oxforddictionaries.com:443/api/v1/inflections/\(language)/\(word)")!
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue(appId, forHTTPHeaderField: "app_id")
        request.addValue(appKey, forHTTPHeaderField: "app_key")
        
        let session = URLSession.shared
        _ = session.dataTask(with: request, completionHandler: { data, response, error in
            if let response = response,
                let data = data,
                let jsonData = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) {
                print(response)
                print("JSON DATA", jsonData)
                print()
                print()
                print("Word \(word) exists!")
            } else {
                print("Word \(word) does not exist!")
                guard let data = data else{return}
                print(NSString.init(data: data, encoding: String.Encoding.utf8.rawValue)!)
            }
        }).resume()
    }
    
}




    



