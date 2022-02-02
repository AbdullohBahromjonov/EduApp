//
//  DetailView.swift
//  EduApp
//
//  Created by Abdulloh Bahromjonov on 14/01/22.
//

import SwiftUI

struct DetailView: View {
    @Binding var subject: SubjectsModel
    
    var body: some View {
        VStack {
            NavigationDetailView(heading: .constant(subject.name), color: .constant(subject.color))
                .padding(.bottom)

            PDFReader(book: .constant(subject.name))
            
            Spacer()
        }
    }
}

struct DetailView_Preivews: PreviewProvider {
    static var previews: some View {
        DetailView(subject: .constant(SubjectsModel(id: 1, image: "Math", name: "Algebra", grade: 9, color: "Red")))
    }
}
