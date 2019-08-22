//
//  RegistrationViewModel.swift
//  PasswordCheckDemo
//
//  Created by Kristijan Kralj on 18/08/2019.
//  Copyright © 2019 Kristijan Kralj. All rights reserved.
//

import Foundation

struct RegistrationViewModel {
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
