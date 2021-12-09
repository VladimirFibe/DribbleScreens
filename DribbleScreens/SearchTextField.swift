//
//  SearchTextField.swift
//  DribbleScreens
//
//  Created by Vladimir on 09.12.2021.
//

import SwiftUI

struct SearchTextField: View {
  @State private var text = ""
  var body: some View {
    HStack {
      TextField("Search for 3D products", text: $text)
        .modifier(GrayBodyStyle())
      Image(systemName: "magnifyingglass")
        .foregroundColor(.accentColor)
    }
    .padding()
    .background(
      RoundedRectangle(cornerRadius: 10)
        .fill(Color.backgroundFieldDribble))
  }
}

struct SearchTextField_Previews: PreviewProvider {
  static var previews: some View {
    SearchTextField()
      .background(Color.red)
  }
}
