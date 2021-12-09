//
//  ContentView.swift
//  DribbleScreens
//
//  Created by Vladimir on 07.12.2021.
//

import SwiftUI

struct ContentView: View {
  init() {
    UITabBar.appearance().barTintColor = UIColor(named: "Secondary")
    UITabBar.appearance().unselectedItemTintColor = UIColor.white
    UITabBar.appearance().isTranslucent = false
  }
  @State private var selection = 1
  var body: some View {
    TabView(selection: $selection) {
      HomeView()
        .background(Color.backgroundDribble.ignoresSafeArea())
        .tabItem {
          Image(systemName: "house")
          if selection == 1 { Text("o")}
        }
        .tag(1)
      Text("Heart")
        .tabItem {
          Image(systemName: "heart")
          if selection == 2 { Text("o")}
        }
        .tag(2)
      Text("Cubic")
        .tabItem {
          Image(systemName: "cube")
          if selection == 3 { Text("o")}
        }
        .tag(3)
      Text("Person")
        .tabItem {
          Image(systemName: "person")
          if selection == 4 { Text("o")}
        }
        .tag(4)
    }
    .accentColor(.white)
    .background(Color.backgroundDribble.ignoresSafeArea())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
