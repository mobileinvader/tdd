//
//  LoginView.swift
//  YouHungry
//
//  Created by Kristijan Kralj on 13.01.2021..
//

import SwiftUI

struct LoginView: View {
  @State private var email = ""
  @State private var password = ""
  @State private var opacityAnimation = false
  @State private var animateEmail = false
  @State private var animatePassword = false
  @State private var signUp = false
  
  private let initialDelay: Double = 0.2

  fileprivate func forgotPasswordButton() -> some View {
    HStack {
      Spacer()
      Text("Forgot Password?")
        .foregroundColor(.gray)
        .font(.title3)
    }
  }
  
  fileprivate func loginButton() -> some View {
    Button(action: {}) {
      Text("Log in")
        .foregroundColor(.primary)
        .padding()
        .frame(height: 45)
        .frame(maxWidth: .infinity)
        .background(Color.orange)
        .cornerRadius(30, corners: [.bottomLeft, .topRight])
        .padding(.horizontal, 20)
    }
  }
  
  fileprivate func signUpButton() -> some View {
    Button("Not a member yet? Sign Up") {
      signUp.toggle()
    }
    .padding()
    .foregroundColor(.orange)
  }
  
  private func animateViews() {
    withAnimation(Animation
                    .easeOut(duration: 1)
                    .delay(initialDelay)) {
      animateEmail.toggle()
    }
    
    withAnimation(Animation
                    .easeInOut(duration: 0.9)
                    .delay(initialDelay + 0.1)) {
      animatePassword.toggle()
    }
    
    withAnimation(Animation
                    .linear(duration: 0.4)
                    .delay(initialDelay + 1.1)) {
      opacityAnimation.toggle()
    }
  }
    
  var body: some View {
    ZStack {
      BackgroundImage()
        .onAppear {
          animateViews()
        }
      
      VStack {
        Image("youhungry")
          .resizable()
          .frame(width: 240,height: 200)
          .scaledToFit()
        Spacer()
      }
      
      Group {
        Color.white
          .cornerRadius(30, corners: [.topLeft, .topRight])
          .edgesIgnoringSafeArea(.bottom)
        
        VStack {
          VStack(alignment: .leading, spacing: 24) {

            EmailField(email: $email)
              .offset(y: animateEmail ? 0 : 1000)

            PasswordField(password: $password)
              .offset(y: animatePassword ? 0 : 1000)

            forgotPasswordButton()
              .opacity(opacityAnimation ? 1 : 0)
          }
          .padding(.horizontal, 20)
          .padding(.top, 40)
          Spacer()
          Spacer()
          Spacer()
          
          Group {
          loginButton()
          
          signUpButton()
          }
          .opacity(opacityAnimation ? 1 : 0)
          Spacer()
        }
      }
      .padding(.top, 240)
    }//zstack
    .navigationBarHidden(true)
    .sheet(isPresented: $signUp) {
      RegisterView()
    }
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
