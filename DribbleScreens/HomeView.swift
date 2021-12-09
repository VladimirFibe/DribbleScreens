//
//  HomeView.swift
//  DribbleScreens
//
//  Created by Vladimir on 08.12.2021.
//

import SwiftUI

struct HomeView: View {
  let horizontalPadding = 30.0
  var body: some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 20.0) {
        WelcomeHeader()
          .padding(.horizontal, horizontalPadding)
        SearchTextField()
          .padding(.horizontal, horizontalPadding)
        CardPicker()
          .padding(.horizontal, horizontalPadding)
          .padding(.vertical)
        Spacer()
        Text("Recommended Products")
          .modifier(Header3())
          .padding(.horizontal, horizontalPadding)

        ScrollView(.horizontal, showsIndicators: false) {
          LazyHStack(spacing: 20) {
            ForEach(Product.products) { product in
              CardView(product: product)
            }
          }
          .padding(.horizontal, horizontalPadding)
        }
        .frame(height: 350)
      }
      .padding(.vertical)
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
      .background(Color.backgroundDribble)
  }
}
