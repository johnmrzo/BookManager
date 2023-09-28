//
//  BookDetailView.swift
//  BookManager
//
//  Created by Bakhtiyorjon Mirzajonov on 27/09/23.
//

import SwiftUI

struct BookDetailsView: View {
  var book: Book
  var body: some View {
    VStack(alignment: .leading) {
      Text("Title: \(book.title)")
        .font(.title)
        .foregroundColor(.blue)
              
      Text("Author: \(book.author)")
        .font(.headline)
        .foregroundColor(.green)
              
      Text("Author's Gender: \(book.gender)")
        .font(.subheadline)
        .foregroundColor(.gray)
      Spacer()
      
    }
    .padding()
  }
}


