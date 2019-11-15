//
//  ViewController.swift
//  SimpleApp
//
//  Created by FISH on 2019/11/14.
//  Copyright © 2019 FISH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let texts = [
    "Loremipsumdolorsitamet,consecteturadipiscingelit.Maecenastempus.",
    "Contrarytopopularbelief,LoremIpsumisnotsimplyrandomtext.",
    "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
    "lookeduponeofthemoreobscureLatinwords,consectetur",
    "from a Lorem Ipsum passage, and going through the cites of the word",
    "Thisbookisatreatiseonthetheoryofethics,verypopularduringthe.",
    "ThefirstlineofLoremIpsum,Loremipsumdolorsitamet.."
  ]
  
  var colors: [UIColor] = []
  
  @IBOutlet weak var factLabel: UILabel!
  @IBOutlet weak var showButton: UIButton!
  

  override func viewDidLoad() {
    super.viewDidLoad()
    
    colors.append(getColor(red: 236, green: 112, blue: 99))
    colors.append(getColor(red: 175, green: 122, blue: 197))
    colors.append(getColor(red: 93, green: 173, blue: 226))
    colors.append(getColor(red: 72, green: 201, blue: 176))
    colors.append(getColor(red: 244, green: 208, blue: 63))
    colors.append(getColor(red: 235, green: 152, blue: 78))
    colors.append(getColor(red: 153, green: 163, blue: 164))
    
    changeFact()
  }

  @IBAction func show(_ sender: UIButton) {
    changeFact()
  }
  
  func changeFact() {
    let randomNumber = Int.random(in: 0...6)
    factLabel.text = texts[randomNumber]
    view.backgroundColor = colors[randomNumber]
    showButton.setTitleColor(colors[randomNumber], for: .normal)
  }
  
  func getColor(red: Float, green: Float, blue: Float, alpha: CGFloat = 1) -> UIColor {
    return UIColor(red: CGFloat(red/255.0), green: CGFloat(green/255.0), blue: CGFloat(blue/255.0), alpha: alpha)
  }
  
}

