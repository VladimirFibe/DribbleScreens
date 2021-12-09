//
//  CardPicker.swift
//  DribbleScreens
//
//  Created by Vladimir on 09.12.2021.
//

import SwiftUI

enum SearchFilter: String, CaseIterable, Identifiable {
  case recent = "Recent"
  case trending = "Trending"
  case popular = "Popular"
  case premium = "Premium"
  
  var id: String {
    self.rawValue
  }
  var image: String {
    switch self {
    case .recent: return "clock"
    case .trending: return "flame"
    case .popular: return "crown"
    case .premium: return "diamond"
    }
  }
}
struct CardPicker: View {
  @State private var selection = SearchFilter.recent
    var body: some View {
      HStack {
        ForEach(SearchFilter.allCases) { filter in
          CardPickerItem(searchFilter: filter, selection: selection)
            .onTapGesture {
              selection = filter
            }
          if filter != .premium {
            Spacer()
          }
        }
      }
    }
}

struct CardPickerItem: View {
  let searchFilter: SearchFilter
  let selection: SearchFilter
  var tintColor: Color {
    searchFilter == selection ? .secondaryDribble : .gray
  }
  var backgroundColor: Color {
    searchFilter == selection ? .secondaryDribble : .backgroundFieldDribble
  }
  var foregroundColor: Color {
    searchFilter == selection ? .white : .gray
  }
  var body: some View {
    VStack {
      Image(systemName: searchFilter.image)
        .foregroundColor(foregroundColor)
        .padding()
        .background(
          RoundedRectangle(cornerRadius: 5)
            .fill(backgroundColor)
        )
      Text(searchFilter.rawValue)
        .foregroundColor(tintColor)
        .modifier(FootNote())
    }
  }
}

struct CardPicker_Previews: PreviewProvider {
    static var previews: some View {
        CardPicker()
      CardPickerItem(searchFilter: .popular, selection: .popular)
        .previewLayout(.fixed(width: 200, height: 200))
      CardPickerItem(searchFilter: .premium, selection: .popular)
        .previewLayout(.fixed(width: 200, height: 200))
    }
}
