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
        let cell = tableView.dequeueReusableCell(withIdentifier: "ViewScoresTableViewCell", for: indexPath) as! ViewScoresTableViewCell
        cell.nameTitle.text = "Name"
        cell.scoreTitle.text = "Score:"
        cell.dateTitle.text = "Date"
        
        return cell
    }
}

