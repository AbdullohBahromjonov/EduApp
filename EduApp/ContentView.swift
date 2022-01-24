//
//  ContentView.swift
//  EduApp
//
//  Created by Abdulloh Bahromjonov on 10/01/22.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    
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
                
                SubjectListView()
                
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
