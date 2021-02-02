//
//  PasswordField.swift
//  YouHungry
//
//  Created by Kristijan Kralj on 30.01.2021..
//

import SwiftUI

struct PasswordField: View {
  
  init(_ placeholder: String = "Password",
       password: Binding<String>) {
    self.placeholder = placeholder
    self._password = password
  }
  
  let placeholder: String
  @Binding var password: String
  
    var body: some View {
      SecureField(placeholder, text: $password)
        .font(.title3)
        .padding(8)
        .overlay(RoundedRectangle(cornerRadius: 4).strokeBorder(Color.orange, lineWidth: 1))
    }
}

struct PasswordField_Previews: PreviewProvider {
    static var previews: some View {
      PasswordField(password: .constant(""))
    }
}
