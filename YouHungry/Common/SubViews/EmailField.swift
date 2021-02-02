//
//  EmailField.swift
//  YouHungry
//
//  Created by Kristijan Kralj on 30.01.2021..
//

import SwiftUI

struct EmailField: View {
  @Binding var email: String
  
    var body: some View {
      TextField("Email", text: $email)
        .font(.title3)
        .padding(8)
        .overlay(RoundedRectangle(cornerRadius: 4).strokeBorder(Color.orange, lineWidth: 1))
    }
}

struct EmailField_Previews: PreviewProvider {
    static var previews: some View {
      EmailField(email: .constant("email"))
    }
}
