//
//  ResultViewController.swift
//  VocabBuilder
//
//  Created by Tushar  Verma on 7/18/18.
//  Copyright © 2018 Memo. All rights reserved.
//

import UIKit

class ResultTableViewController: UIViewController {
    
    var score: Int = 0
    var wordsUsed: [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var nameInputTextField: UITextField!
    @IBOutlet weak var resetButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated:true)
        self.navigationController?.isNavigationBarHidden = true
        scoreLabel.text = String(score)
        
    
        func synonyms(for word: String) {
                print()
        }
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // To hide Navigation bar
//        self.navigationItem.setHidesBackButton(true, animated:true)
//        self.navigationController?.isNavigationBarHidden = true
        //self.navigationController?.popViewController(animated: true)
    }
    
}


extension ResultTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wordsUsed.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultTableViewCell", for: indexPath) as! ResultTableViewCell
        cell.wordTitleLabel.text = wordsUsed[indexPath.row]
        cell.descriptionTitleLabel.text = "[Synonyms]"
        return cell
    }
}
