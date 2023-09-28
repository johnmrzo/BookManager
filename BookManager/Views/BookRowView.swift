//
//  BookRowView.swift
//  BookManager
//
//  Created by Bakhtiyorjon Mirzajonov on 27/09/23.
//

import SwiftUI

struct BookRowView: View {
  var book: Book
  var body: some View {
      NavigationLink(
        destination: BookDetailsView(book: book),
        label: {
          Text(book.title)
            .fontWeight(.bold)
            .font(.body)
       })
  }
}
