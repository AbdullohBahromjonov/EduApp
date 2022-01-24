//
//  SubjectListView.swift
//  EduApp
//
//  Created by Abdulloh Bahromjonov on 12/01/22.
//

import SwiftUI

struct SubjectListView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let subjects = [
        SubjectsModel(id: 1, image: "Math", name: "Mathmatics", chapters: 4),
        SubjectsModel(id: 2, image: "Biology", name: "Biology", chapters: 5),
        SubjectsModel(id: 3, image: "Chemistry", name: "Chemistry", chapters: 5),
        SubjectsModel(id: 4, image: "English", name: "English", chapters: 3),
        SubjectsModel(id: 5, image: "History", name: "History", chapters: 4),
        SubjectsModel(id: 6, image: "Russian", name: "Russian", chapters: 4)
    ]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(subjects) { subject in
                    SubjectCardView(subject: .constant(subject))
                }
            }
            .frame(width: UIScreen.main.bounds.size.width*0.9)
        }
    }
}

struct SubjectListView_Preview: PreviewProvider {
    static var previews: some View {
        SubjectListView()
    }
}
