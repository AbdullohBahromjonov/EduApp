//
//  LibraryView.swift
//  EduApp
//
//  Created by Abdulloh on 13/03/22.
//

import SwiftUI

struct LibraryView: View {
    @Binding var subject: SubjectsModel
    @State var showBook = false
    @State var selectedBook = ""
    @State var navBarColor = ""
    
    var body: some View {
        VStack {
            NavigationDetailView(heading: .constant(subject.image), color: .constant(subject.color))
            
            ForEach(subject.books, id: \.self) { book in
                LibraryComponentView(bookName: book)
                    .padding(.top)
                    .onTapGesture {
                        showBook.toggle()
                        selectedBook = book
                        navBarColor = subject.color
                    }
                    .fullScreenCover(isPresented: $showBook) {
                        BookPDF(book: $selectedBook, color: $navBarColor)
                    }
            }
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color("Background"))
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView(subject: .constant(SubjectsModel(id: 1, image: "Math", name: "Algebra", grade: 9, color: "Red", books: ["Algebra", "Geometry"])))
    }
}
