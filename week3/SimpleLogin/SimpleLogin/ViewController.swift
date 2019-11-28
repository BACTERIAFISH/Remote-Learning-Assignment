//
//  ViewController.swift
//  SimpleLogin
//
//  Created by FISH on 2019/11/20.
//  Copyright © 2019 FISH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var segmentedControl: UISegmentedControl!
  @IBOutlet weak var accountTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var checkTextField: UITextField!
  @IBOutlet weak var checkLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    accountTextField.delegate = self
    passwordTextField.delegate = self
    checkTextField.delegate = self
  }

  @IBAction func segmentChange(_ sender: UISegmentedControl) {
    if sender.selectedSegmentIndex == 0 {
      checkTextField.isEnabled = false
      checkLabel.textColor = .darkGray
      checkTextField.backgroundColor = .darkGray
      checkTextField.text = nil
    } else {
      checkTextField.isEnabled = true
      checkLabel.textColor = .label
      checkTextField.backgroundColor = .systemBackground
    }
  }
  
  @IBAction func buttonPress(_ sender: Any) {
    if segmentedControl.selectedSegmentIndex == 0 {
      logIn()
    } else {
      signUp()
    }
  }
  
  func logIn() {
    let account = accountTextField.text ?? ""
    let password = passwordTextField.text ?? ""
    let manager = AccountManager(account: account, password: password)
    let response = manager.logIn()
    showAlert(title: response.title, message: response.message)
  }
  
  func signUp() {
    let account = accountTextField.text ?? ""
    let password = passwordTextField.text ?? ""
    let check = checkTextField.text ?? ""
    let manager = AccountManager(account: account, password: password, check: check)
    let response = manager.signUp()
    showAlert(title: response.title, message: response.message)
  }
  
  func showAlert(title: String, message: String) {
    let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: "OK", style: .default)
    ac.addAction(action)
    present(ac, animated: true)
  }
  
}

extension ViewController: UITextFieldDelegate {
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    if textField.tag == 100 {
      passwordTextField.becomeFirstResponder()
    }
    if textField.tag == 101 {
      if segmentedControl.selectedSegmentIndex == 0 {
        logIn()
      } else if segmentedControl.selectedSegmentIndex == 1 {
        checkTextField.becomeFirstResponder()
      }
    }
    if textField.tag == 102 {
      signUp()
    }
    return true
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    view.endEditing(true)
  }
}
