//
//  AppView.swift
//  BookManager
//
//  Created by Bakhtiyorjon Mirzajonov on 27/09/23.
//

import SwiftUI

struct AppView: View {
  var library = Library()
  var body: some View {
    TabView {
      LibraryView()
        .tabItem {
          Image(systemName: "books.vertical")
          Text("Library")
        }
          
      NewBookView()
        .tabItem {
          Image(systemName: "rectangle.stack.badge.plus")
          Text("New Book")
        }
              
      ChartsView()
        .tabItem {
          Image(systemName: "chart.bar.xaxis")
          Text("Charts")
        }
    }
    .environmentObject(library)
  }
}


struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView()
  }
}

