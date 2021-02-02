//
//  RoundedCorner.swift
//  YouHungry
//
//  Created by Kristijan Kralj on 19.01.2021..
//

import SwiftUI

extension View {
  func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
    clipShape(RoundedCorner(radius: radius, corners: corners))
  }
}

struct RoundedCorner: Shape {
  
  var radius: CGFloat = .infinity
  var corners: UIRectCorner = .allCorners
  
  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect,
                            byRoundingCorners: corners,
                            cornerRadii: CGSize(width: radius, height: radius))
    
    return Path(path.cgPath)
  }
  

}

struct RoundedCorner_Previews: PreviewProvider {
    static var previews: some View {
      RoundedCorner(radius: 200, corners: [.bottomLeft, .topRight])
          .padding()
          .frame(width: 400, height: 200)
    }
}
