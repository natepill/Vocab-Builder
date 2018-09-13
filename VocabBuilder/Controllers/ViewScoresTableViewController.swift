//
//  ViewScoresTableViewController.swift
//  VocabBuilder
//
//  Created by Tushar  Verma on 7/19/18.
//  Copyright © 2018 Memo. All rights reserved.
//

import Foundation
import UIKit

class ViewScoresTableViewController: UIViewController {
    
    
    var users: [(String, String)] = []
    var scoresDict: [String: String] = [:]
    
    
    @IBOutlet weak var scoresTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getUsers()
        
    }
    
    func getUsers() {
        if UD.scores.count > 0 {
            guard let scores = UD.scores as? [String: Int] else {
                return
            }
            
            let sortedScores = scores.sorted(by: { $0.value > $1.value })
            for user in sortedScores {
                users.append((user.key, String(user.value)))
            }
        }
        
    }
    
    
    
}

extension ViewScoresTableViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScoresTableCell", for: indexPath) as! ScoresTableCell
        
        let user = users[indexPath.row]
        
        cell.standingLabel.text = String(indexPath.row + 1)
        cell.usernameLabel.text = user.0
        cell.userScoreLabel.text = user.1
        
        return cell
    }


}






