//
//  BooksView.swift
//  EduApp
//
//  Created by Abdulloh on 09/02/22.
//

import SwiftUI

struct LibraryComponentView: View {
    let bookName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: UIScreen.main.bounds.size.width*0.88, height: 70)
            .foregroundColor(Color("White"))
            .shadow(color: Color("White panel shadow"), radius: 4, x: 0, y: 4)
            .overlay(
                HStack {
                    Text(bookName)
                        .font(.custom("Poppins-Bold", size: 20))
                        .padding()
                    
                    Spacer()
                }
            )
    }
}

struct LibraryComponentView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryComponentView(bookName: "World History")
            .padding()
            .background(Color("Background"))
            .previewLayout(.sizeThatFits)
    }
}
