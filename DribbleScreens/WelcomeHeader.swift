//
//  WelcomeHeader.swift
//  DribbleScreens
//
//  Created by Vladimir on 09.12.2021.
//

import SwiftUI

struct WelcomeHeader: View {
  var body: some View {
    HStack {
      VStack(alignment: .leading, spacing: 5.0) {
        Text("Good morning,")
          .modifier(Header2())
        Text("Anastasiya!")
          .modifier(Header1())
      }
      Spacer()
      Image("profile")
        .resizable()
        .scaledToFill()
        .frame(width: 70, height: 70)
        .clipShape(Circle())
    }
  }
}

struct WelcomeHeader_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeHeader()
  }
}
