//
//  ViewController.swift
//  TableView
//
//  Created by Amanda Harman on 2/28/18.
//  Copyright © 2018 com.amandaharman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let titles = ["RowOne", "RowTwo", "RowThree"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell()
        cell.textLabel?.text = titles[indexPath.row]
        return cell
    }
}

