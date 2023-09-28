//
//  LibraryView.swift
//  BookManager
//
//  Created by Bakhtiyorjon Mirzajonov on 27/09/23.
//

import SwiftUI

struct LibraryView: View {
  @EnvironmentObject var library: Library
  var body: some View {
    NavigationView {
         List{
           ForEach(library.books) { book in
             BookRowView(book: book)
           }.onDelete(perform: removeRows)
         }.navigationBarTitle("Library")
       }
    }
  private func removeRows(at offsets: IndexSet) {
          library.books.remove(atOffsets: offsets)
      }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
      LibraryView()
    }
}

