//
//  TodaysSubjects.swift
//  EduApp
//
//  Created by Zafarjon on 28/03/22.
//

import SwiftUI

struct SubjectsGridView: View {
    @State var showDetail = false
    @State var selectedSubject = SubjectsModel(id: 0, image: "", name: "", grade: 0, color: "", books: [])
    
    let columns = [
        GridItem(.adaptive(minimum: 144))
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(scheduleData) { weekday in
                    if weekday.weekDay == Date().dayOfTheWeek() {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(weekday.subjects) { subject in
                                SubjectCardView(subject: .constant(subject))
                                    .onTapGesture {
                                        showDetail.toggle()
                                        selectedSubject = subject
                                    }
                                    .fullScreenCover(isPresented: $showDetail) {
                                        LibraryView(subject: $selectedSubject)
                                    }
                            }
                            
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .padding(.bottom)
        }
    }
}

struct SubjectsGridView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectsGridView()
    }
}
