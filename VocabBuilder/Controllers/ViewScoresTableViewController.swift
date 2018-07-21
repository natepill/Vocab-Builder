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
    
    
    var users: [String] = []
    
    
    @IBOutlet weak var scoresTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getUsers()
        
    }
    
    func getUsers() {
//        let sortedScores = LocalScores.scores.sort(by: >)
        for user in LocalScores.scores.keys {
            users.append(user)
        }
        
    }
    
    
    
}

extension ViewScoresTableViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScoresTableCell", for: indexPath) as! ScoresTableCell
        
        cell.standingLabel.text = String(indexPath.row + 1)
        cell.usernameLabel.text = users[indexPath.row]
        cell.userScoreLabel.text = LocalScores.scores[users[indexPath.row]]
        
        return cell
    }


}






