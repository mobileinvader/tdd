//
//  OnboardingView.swift
//  YouHungry
//
//  Created by Kristijan Kralj on 13.01.2021..
//

import SwiftUI

struct OnboardingView: View {

  var onboardingData: [OnboardingItem] = [
    OnboardingItem(imageName: "restaurant", title: "FIND RESTAURANTS", description: "Find the best restaurant in your neighborhood."),
    OnboardingItem(imageName: "meals", title: "CHOOSE YOUR MEAL", description: "Easily find the type of meal you're craving for."),
    OnboardingItem(imageName: "delivery", title: "MEAL IS ON THE WAY", description: "Sit back and relax while our biker brings the meal at your door.")
  ]
  
  var body: some View {
    NavigationView {
      ZStack {
        BackgroundImage()
        
        GeometryReader { geometry in
          VStack {
            TabView() {
              ForEach(0..<onboardingData.count) { index in
                let element = onboardingData[index]
                OnboardingCard(element: element)
              }
              .padding(.bottom, 20)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .frame(height: geometry.size.height / 1.5)
            Spacer()
            NavigationLink(destination: LoginView()) {
              Text("Get Started  >>")
                .foregroundColor(.primary)
                .padding()
                .frame(width: 150, height: 45)
                .background(Color.orange)
                .clipShape(RoundedRectangle(cornerRadius: 4))
            }
            Spacer()
          }
        }
      }//zstack
    }//navigation view
  }
}

fileprivate struct OnboardingCard: View {
  let element: OnboardingItem
  
  var body: some View {
    VStack {
      Image(element.imageName)
        .resizable()
        .scaledToFit()
        .frame(height: 200)
        .frame(maxWidth: .infinity)
      Text(element.title)
        .font(.title)
        .fontWeight(.bold)
        .foregroundColor(.white)
        .padding()
      Text(element.description)
        .multilineTextAlignment(.center)
        .font(.body)
        .foregroundColor(.white)
        .padding(.horizontal, 15)
    }
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}

struct BackgroundImage: View {
  var body: some View {
    Image("background")
      .resizable()
      .ignoresSafeArea(.all)
  }
}
