//
//  DetailView.swift
//  EduApp
//
//  Created by Abdulloh Bahromjonov on 14/01/22.
//

import SwiftUI

struct BookPDF: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var book: String
    @Binding var color: String
    
    var body: some View {
        VStack {
            Button(
                action: {
                    presentationMode.wrappedValue.dismiss()
                },
                label: {
                    HStack {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 25, weight: .medium))
                            .padding(.leading)
                            .padding(.trailing, -9)
                        Text("Done")
                        
                        Spacer()
                    }
                }
            )
            
            PDFReader(book: .constant(book))
                .padding(.top, 10)
            
            Spacer()
        }
    }
}

struct DetailView_Preivews: PreviewProvider {
    static var previews: some View {
        BookPDF(book: .constant("Algebra"), color: .constant("Red"))
    }
}
