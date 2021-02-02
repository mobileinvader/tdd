//
//  RegisterViewModel.swift
//  YouHungry
//
//  Created by Kristijan Kralj on 31.01.2021..
//

import Foundation

class RegisterViewModel: ObservableObject {
  @Published var email = ""
  @Published var password = ""
  @Published var confirmPassword = ""
  
  func registerUser() {
    
  }
  
  func isPasswordSecure(_ password: String) -> Bool {
    guard password.count >= 8 else {
      return false
    }
    guard let _ = password.rangeOfCharacter(from: CharacterSet(charactersIn:"ABCDEFGHIJKLMNOPQRSTUVWXYZ")) else {
      return false
    }
    guard let _ = password.rangeOfCharacter(from: CharacterSet(charactersIn:"1234567890")) else {
      return false
    }
    return true
  }
}
