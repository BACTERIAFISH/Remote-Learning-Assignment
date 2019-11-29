//
//  ViewController.swift
//  NetWork
//
//  Created by FISH on 2019/11/29.
//  Copyright © 2019 FISH. All rights reserved.
//

import UIKit

struct DataJSON: Codable {
  let stationID: String
  let stationName: String
  let stationAddress: String
}

class ViewController: UIViewController {
  
  @IBOutlet weak var stationIDLabel: UILabel!
  @IBOutlet weak var stationNameLabel: UILabel!
  @IBOutlet weak var stationAddressLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    NSLayoutConstraint.activate([
      
    ])
    
    loadData()
  }
  
  func loadData() {
    
    guard let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json") else {
      return
    }
    
    URLSession.shared.dataTask(with: url) {
      (data, response, error) in
      guard let response = response as? HTTPURLResponse, response.statusCode == 200, let data = data else {
        return
      }
      
      do {
        let decoder = JSONDecoder()
        let result = try decoder.decode(DataJSON.self, from: data)
        OperationQueue.main.addOperation {
          self.stationIDLabel.text = result.stationID
          self.stationNameLabel.text = result.stationName
          self.stationAddressLabel.text = result.stationAddress
        }
      } catch {
        print(error.localizedDescription)
      }
      
    }.resume()
  }
  
}

