//
//  RegistrationViewModelTests.swift
//  PasswordCheckDemoTests
//
//  Created by Kristijan Kralj on 18/08/2019.
//  Copyright © 2019 Kristijan Kralj. All rights reserved.
//

import XCTest
@testable import PasswordCheckDemo

class RegistrationViewModelTests: XCTestCase {

    func test_isPasswordSecure_returns_false_if_password_has_less_than_8_characters() {
        let registrationViewModel = createRegistrationViewModel()
        
        let result = registrationViewModel.isPasswordSecure("1234567")
        
        XCTAssertFalse(result)
    }
    
    func test_isPasswordSecure_returns_false_if_password_does_not_contain_uppercase_character() {
        let registrationViewModel = createRegistrationViewModel()
        
        let result = registrationViewModel.isPasswordSecure("12345678")
        
        XCTAssertFalse(result)
    }
    
    func test_isPasswordSecure_returns_false_if_password_does_not_contain_digit() {
        let registrationViewModel = createRegistrationViewModel()
        
        let result = registrationViewModel.isPasswordSecure("ABCDEFGH")
        
        XCTAssertFalse(result)
    }
    
    fileprivate func createRegistrationViewModel() -> RegistrationViewModel {
        return RegistrationViewModel()
    }
}
