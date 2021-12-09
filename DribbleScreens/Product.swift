//
//  Product.swift
//  DribbleScreens
//
//  Created by Vladimir on 08.12.2021.
//

import Foundation

struct Product: Identifiable {
  let id = UUID()
  let imageName: String
  let title: String
  let description: String
  
  static let products = [
  Product(imageName: "1", title: "Geometry 3D Elements", description: "Hold up a rectangular piece of papr and sk all the favourite students."),
  Product(imageName: "2", title: "Abstract 3D Elements", description: "An abstract may act as stand-alone entity the instead of a full paper.")
  ]
}
