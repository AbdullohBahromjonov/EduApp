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
    @State var selectedSubject = SubjectsModel(id: 0, image: "", name: "", grade: 0, color: "", books: [])
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
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
                                    LibraryView(subject: $selectedSubject)
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
