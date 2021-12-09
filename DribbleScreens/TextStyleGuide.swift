//
//  TextStyleGuide.swift
//  DribbleScreens
//
//  Created by Vladimir on 09.12.2021.
//

import SwiftUI

struct Header1: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.system(.largeTitle, design: .serif))
      .foregroundColor(.primaryDribble)
  }
}


struct Header2: ViewModifier {
  
  func body(content: Content) -> some View {
    content
      .font(.title)
      .foregroundColor(.primaryDribble)
  }
}

struct Header3: ViewModifier {
  
  func body(content: Content) -> some View {
    content
      .font(.headline)
      .foregroundColor(.primaryDribble)
  }
}

struct FootNote: ViewModifier {
  
  func body(content: Content) -> some View {
    content
      .font(.footnote)
      .foregroundColor(.primaryDribble)
  }
}


struct BodyStyle: ViewModifier {
  
  func body(content: Content) -> some View {
    content
      .font(.body)
      .foregroundColor(.primaryDribble)
  }
}

struct GrayBodyStyle: ViewModifier {
  
  func body(content: Content) -> some View {
    content
      .font(.body)
      .foregroundColor(Color.gray)
  }
}

struct TextStyleGuide: View {
  var body: some View {
    VStack(spacing: 20.0) {
      Text("Header 1")
        .modifier(Header1())
      
      Text("Header 2")
        .modifier(Header2())
      
      Text("Header 3")
        .modifier(Header3())
      
      Text("Body style")
        .modifier(BodyStyle())
      
      Text("Gray Body style")
        .modifier(GrayBodyStyle())
      
      Text("FootNote")
        .modifier(FootNote())
    }
  }
}

struct TextStyleGuide_Previews: PreviewProvider {
  static var previews: some View {
    TextStyleGuide()
  }
}
