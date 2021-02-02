//
//  RegistrationViewModelTests.swift
//  PasswordCheckDemoTests
//
//  Created by Kristijan Kralj on 31.1.2021.
//  Copyright © 2021 Kristijan Kralj. All rights reserved.
//

import XCTest
@testable import YouHungry

class RegisterViewModelTests: XCTestCase {
  
  func test_isPasswordSecure_returns_false_if_password_has_less_than_8_characters() {
    let registerViewModel = createRegisterViewModel()
    
    let result = registerViewModel.isPasswordSecure("1234567")
    
    XCTAssertFalse(result)
  }
  
  func test_isPasswordSecure_returns_false_if_password_does_not_contain_uppercase_character() {
    let registerViewModel = createRegisterViewModel()
    
    let result = registerViewModel.isPasswordSecure("12345678")
    
    XCTAssertFalse(result)
  }
  
  func test_isPasswordSecure_returns_false_if_password_does_not_contain_digit() {
    let registerViewModel = createRegisterViewModel()
    
    let result = registerViewModel.isPasswordSecure("ABCDEFGH")
    
    XCTAssertFalse(result)
  }
  
  func test_isPaswordSecure_returns_true_when_password_is_secure() {
    let registerViewModel = createRegisterViewModel()
    
    let result = registerViewModel.isPasswordSecure("ABCDEFGH112")
    
    XCTAssertTrue(result)
  }
  
  fileprivate func createRegisterViewModel() -> RegisterViewModel {
    return RegisterViewModel()
  }
}
