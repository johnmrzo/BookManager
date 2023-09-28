//
//  ChartsView.swift
//  BookManager
//
//  Created by Bakhtiyorjon Mirzajonov on 27/09/23.
//

import SwiftUI
import Charts

struct ChartsView: View {
  @EnvironmentObject var library: Library
  var body: some View {
    VStack {
      Text("Books by Author Gender")
        .fontWeight(.semibold)
      Chart {
        BarMark(
          x: .value("Mount", "Male"),
          y: .value("Value", library.getMaleAuthoredBooks().count)
        )
        BarMark(
          x: .value("Mount", "Female"),
          y: .value("Value", library.getFemaleAuthoredBooks().count)
        )
      }
      .frame(height: 250)
      .padding(20)
      
      Spacer()
      Text("Books by Popular Authors")
        .fontWeight(.semibold)
      Chart {
        // Add bars for popular authors
        BarMark(
          x: .value("Author", "Shakespeare"),
          y: .value("Count", library.getBooksFor("William Shakespeare").count)
        )
        BarMark(
          x: .value("Author", "Austen"),
          y: .value("Count", library.getBooksFor("Jane Austen").count)
        )
        BarMark(
          x: .value("Author", "Tolkien"),
          y: .value("Count", library.getBooksFor("J.R.R. Tolkien").count)
        )
        BarMark(
          x: .value("Author", "Dickens"),
          y: .value("Count", library.getBooksFor("Charles Dickens").count)
        )
        BarMark(
          x: .value("Author", "Bronte"),
          y: .value("Count", library.getBooksFor("Charlotte Bronte").count)
        )
      }
      .frame(height: 250)
      .padding(20)
      .foregroundColor(Color.green)
    }
  }
}


struct ChartsView_Previews: PreviewProvider {
  static var library = Library()
    static var previews: some View {
      ChartsView().environmentObject(library)
    }
}

