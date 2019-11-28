//
//  AccountManager.swift
//  SimpleLogin
//
//  Created by FISH on 2019/11/28.
//  Copyright © 2019 FISH. All rights reserved.
//

class AccountManager {
  let account: String
  let password: String
  let check: String
  
  init(account: String, password: String, check: String = "") {
    self.account = account
    self.password = password
    self.check = check
  }
  
  func checkLogIn() -> Bool {
    return account == "appworks_school@gmail.com" && password == "1234"
  }
  
  func checkAccountEmpty() -> Bool {
    return account.isEmpty
  }
  
  func checkPasswordEmpty() -> Bool {
    return password.isEmpty
  }
  
  func checkCheckEmpty() -> Bool {
    return check.isEmpty
  }
  
  func checkNotEqual() -> Bool {
    return password != check
  }
  
  func logIn() -> Response {
    if checkLogIn() {
      return Response(title: "Success", message: "Login success")
    }
    return Response(title: "Error", message: "Login fail")
  }
  
  func signUp() -> Response {
    if checkAccountEmpty()  {
      return Response(title: "Error", message: "Account should not be empty.")
    }
    if checkPasswordEmpty() {
      return Response(title: "Error", message: "Password should not be empty.")
    }
    if checkCheckEmpty() {
      return Response(title: "Error", message: "Check password should not be empty.")
    }
    if checkNotEqual() {
      return Response(title: "Error", message: "Signup fail")
    }
    return Response(title: "Success", message: "Signup success")
  }

}

struct Response {
  var title: String
  var message: String
}
