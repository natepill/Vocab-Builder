//
//  ResultTableControleer.swift
//  VocabBuilder
//
//  Created by Tushar  Verma on 7/17/18.
//  Copyright © 2018 Memo. All rights reserved.
//
import UIKit

class ResultTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
}


extension ResultTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultTableViewCell", for: indexPath) as! ResultTableViewCell
        cell.wordTitleLabel.text = "Word Title"
        cell.typeTitleLabel.text = "Type Title"
        cell.descriptionTitleLabel.text = "Description Title"
        return cell
    }
}
