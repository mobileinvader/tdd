//
//  RegisterView.swift
//  YouHungry
//
//  Created by Kristijan Kralj on 30.01.2021..
//

import SwiftUI

struct RegisterView: View {
  @StateObject private var registerViewModel = RegisterViewModel()
  
  var body: some View {
    VStack(spacing: 20) {
      Image("youhungry")
        .resizable()
        .frame(width: 160,height: 160)
        .scaledToFit()
      
      EmailField(email: $registerViewModel.email)
      
      PasswordField(password: $registerViewModel.password)
      
      PasswordField("Confirm Password", password: $registerViewModel.confirmPassword)
      
      Button(action: {}) {
        Text("Sign Up")
          .foregroundColor(.primary)
          .padding()
          .frame(height: 45)
          .frame(maxWidth: .infinity)
          .background(Color.orange)
          .cornerRadius(30, corners: [.bottomLeft, .topRight])
          .padding(.top, 30)
      }
      Spacer()
    }
    .padding()
  }
}

struct RegisterView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView()
  }
}
