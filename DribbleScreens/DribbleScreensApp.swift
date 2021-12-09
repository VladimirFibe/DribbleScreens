//
//  DribbleScreensApp.swift
//  DribbleScreens
//
//  Created by Vladimir on 07.12.2021.
//

import SwiftUI

@main
struct DribbleScreensApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}

extension Color {
  static let backgroundDribble = Color("Background")
  static let backgroundFieldDribble = Color("BackgoundField")
  static let primaryDribble = Color("Primary")
  static let secondaryDribble = Color("Secondary")
}
