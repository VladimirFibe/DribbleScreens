//
//  CardView.swift
//  DribbleScreens
//
//  Created by Vladimir on 08.12.2021.
//

import SwiftUI

struct CardView: View {
  let product: Product
  let height = 300.0
  let width = 270.0
  var body: some View {
    VStack(alignment: .leading, spacing: 10.0) {
      Image(product.imageName)
        .resizable()
        .scaledToFill()
        .frame(maxWidth: width, maxHeight: height)
      Text(product.title)
        .modifier(Header3())
        .padding(.horizontal)
      Text(product.description)
        .modifier(BodyStyle())
        .padding(.horizontal)
        .padding(.bottom, 30)
    }
    .background(Color.backgroundFieldDribble)
    .frame(maxWidth: width)
    .cornerRadius(50)
  }
}

struct CardView_Previews: PreviewProvider {
  static var previews: some View {
    CardView(product: Product.products[0])
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(Color.backgroundDribble)
  }
}
