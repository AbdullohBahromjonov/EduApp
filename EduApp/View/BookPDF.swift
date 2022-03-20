//
//  DetailView.swift
//  EduApp
//
//  Created by Abdulloh Bahromjonov on 14/01/22.
//

import SwiftUI

struct BookPDF: View {
    @Binding var book: String
    @Binding var color: String
    
    var body: some View {
        VStack {
            NavigationDetailView(heading: .constant(book), color: .constant(color))
                .padding(.bottom)
            
            PDFReader(book: .constant(book))
            
            Spacer()
        }
    }
}

struct DetailView_Preivews: PreviewProvider {
    static var previews: some View {
        BookPDF(book: .constant("Algebra"), color: .constant("Red"))
    }
}
