//
//  NavigationDetailView.swift
//  EduApp
//
//  Created by Abdulloh Bahromjonov on 14/01/22.
//

import SwiftUI

struct NavigationDetailView: View {
    var body: some View {
        HStack {
            Text("Mathmatics")
                .font(.custom("Poppins-Bold", size: 25))
                .foregroundColor(.white)
                .padding(.leading, 30)
            
            Spacer()
            
            Button (
                action: {},
                label: {
                    Image("Back button")
                        .foregroundColor(.black)
                        .frame(width: 54, height: 54)
                        .padding(.trailing, 30)
                }
            )
        }
        .frame(width: UIScreen.main.bounds.size.width, height: 100)
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 35)
                    .foregroundColor(Color("Red").opacity(50))
                    .offset(x: 0, y: 10)
                    .padding(.horizontal, 10)
                    .blur(radius: 20)
                
                RoundedRectangle(cornerRadius: 35)
                    .foregroundColor(Color("Red"))
            }
        )
    }
}

struct NavigationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDetailView()
            .padding()
            .padding(.bottom, 30)
            .background(Color("Background"))
            .previewLayout(.sizeThatFits)
    }
}
