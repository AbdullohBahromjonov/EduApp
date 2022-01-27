//
//  ContentView.swift
//  EduApp
//
//  Created by Abdulloh Bahromjonov on 10/01/22.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    @State var showDetail = false
    @State var selectedSubject = SubjectsModel(id: 0, image: "", name: "", grade: 0, color: "")
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let subjects = [
        SubjectsModel(id: 1, image: "Math", name: "Algebra", grade: 9, color: "Red"),
        SubjectsModel(id: 2, image: "Biology", name: "Biology", grade: 9, color: "Green"),
        SubjectsModel(id: 3, image: "Geometry", name: "Geometry", grade: 9, color: "Dark Blue"),
        SubjectsModel(id: 4, image: "Chemistry", name: "Chemistry", grade: 9, color: "Purple"),
        SubjectsModel(id: 5, image: "English", name: "English", grade: 9, color: "Blue"),
        SubjectsModel(id: 6, image: "History", name: "History", grade: 9, color: "Pink"),
        SubjectsModel(id: 7, image: "Russian", name: "Russian", grade: 9, color: "Orange")
    ]
    
    
    var body: some View {
        VStack {
            NavigationBar()
            
            ScrollView(.vertical, showsIndicators: false) {
                SearchBar(text: $text)
                    .padding(20)
                
                Image("Frame")
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.size.width*0.9, height: UIScreen.main.bounds.size.width*0.65)
                    

                
                HStack {
                    Text("Subjects")
                        .font(.custom("Poppins-bold", size: 23.11))
                        .foregroundColor(Color("Black"))
                    
                    Spacer()
                }
                .padding(.horizontal, 30)
                
                VStack {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(subjects.filter({"\($0)".contains(text) || text.isEmpty})) { subject in
                            SubjectCardView(subject: .constant(subject))
                                .onTapGesture {
                                    showDetail.toggle()
                                    selectedSubject = subject
                                }
                                .fullScreenCover(isPresented: $showDetail) {
                                    DetailView(subject: $selectedSubject)
                                        
                                }
                        }
                    }
                    .frame(width: UIScreen.main.bounds.size.width*0.9)
                }
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color("Background"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.preferredColorScheme(.dark)
    }
}
