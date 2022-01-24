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
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let subjects = [
        SubjectsModel(id: 1, image: "Math", name: "Algebra", grade: 9, color: "Red"),
        SubjectsModel(id: 2, image: "Biology", name: "Biology", grade: 9, color: "Orange"),
        SubjectsModel(id: 3, image: "Math", name: "Geometry", grade: 9, color: "Green"),
        SubjectsModel(id: 4, image: "Chemistry", name: "Chemistry", grade: 9, color: "Purple"),
        SubjectsModel(id: 5, image: "English", name: "English", grade: 9, color: "Blue"),
        SubjectsModel(id: 6, image: "History", name: "History", grade: 9, color: "Pink"),
        SubjectsModel(id: 7, image: "Russian", name: "Russian", grade: 9, color: "Yellow")
    ]
    
    
    var body: some View {
        VStack {
            NavigationBar()
            
            ScrollView(.vertical, showsIndicators: false) {
                SearchBar(text: $text)
                    .padding(20)
                
                Image("Frame")
                
                HStack {
                    Text("Subjects")
                        .font(.custom("Poppins-bold", size: 23.11))
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                .padding(.horizontal, 30)
                
                VStack {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(subjects) { subject in
                            SubjectCardView(subject: .constant(subject))
                                .onTapGesture {
                                    showDetail.toggle()
                                }
                                .sheet(isPresented: $showDetail) {
                                    DetailView(subject: .constant(subject))
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
    }
}
