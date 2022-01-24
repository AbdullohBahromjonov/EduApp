//
//  DetailView.swift
//  EduApp
//
//  Created by Abdulloh Bahromjonov on 14/01/22.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            NavigationDetailView()
                .padding(.bottom)
            ScrollView(.vertical, showsIndicators: false) {
                Image("Math")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.size.width*0.55)
                    .padding()
                
                HStack {
                    Text("Chapters")
                        .font(.custom("Poppins-Bold", size: 23))
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                
            }
            .padding(.horizontal, 30)
            
            Spacer()
        }
    }
}

struct DetailView_Preivews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
