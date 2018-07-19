//
//  ViewScoresTableViewController.swift
//  VocabBuilder
//
//  Created by Tushar  Verma on 7/19/18.
//  Copyright © 2018 Memo. All rights reserved.
//

import Foundation
import UIKit

class ViewScoresTableViewController: UIViewController{
    
    
    @IBOutlet weak var tableView: UITableView!
    
}

extension ViewScoresTableViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultTableViewCell", for: indexPath) as! ResultTableViewCell
        cell.wordTitleLabel.text = wordsUsed[indexPath.row]
        cell.typeTitleLabel.text = "Type"
        cell.descriptionTitleLabel.text = "This is word description!"
        return cell
    }
    
}

