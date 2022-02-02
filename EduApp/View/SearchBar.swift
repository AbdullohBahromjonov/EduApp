//
//  SearchBar.swift
//  EduApp
//
//  Created by Abdulloh Bahromjonov on 12/01/22.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        ZStack {
            TextField("Search for subject", text: $text)
                .font(.custom("Poppins-Regular", size: 15))
                .padding(25)
            
        }
        .frame(width: UIScreen.main.bounds.size.width*0.9, height: 54)
        .background(
            Capsule()
                .foregroundColor(Color("White"))
                .shadow(color: Color("White panel shadow"), radius: 20, x: 0, y: 20)
        )
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
            .padding()
            .previewLayout(.sizeThatFits)
            .background(Color("Background"))
    }
}
