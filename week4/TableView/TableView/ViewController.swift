//
//  ViewController.swift
//  TableView
//
//  Created by FISH on 2019/11/28.
//  Copyright © 2019 FISH. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    tableView.rowHeight = 110
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    10
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    cell.textLabel?.text = "This is section \(indexPath.section), row \(indexPath.row)"
    return cell
  }

}

