//
//  NavigationBar.swift
//  EduApp
//
//  Created by Abdulloh Bahromjonov on 11/01/22.
//

import SwiftUI

struct NavigationBar: View {
    
    var body: some View {
        HStack {
            HStack {
                Circle()
                    .foregroundColor(Color(red: 1.0, green: 0.4549019607843137, blue: 0.6196078431372549))
                    .frame(width: 49, height: 49)
                    .overlay(
                        Text("A")
                            .font(.system(size: 26, weight: .black, design: .default))
                            .fontWeight(.black)
                        
                    )
                .padding(.leading, 30)
                
                VStack(alignment: .leading, spacing: -6) {
                    Text("B.Abdulloh")
                        .font(.custom("Poppins-Black", size: 23))
                    Text("grade: 5th")
                        .font(.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color(red: 0.4588235294117647, green: 0.4588235294117647, blue: 0.4588235294117647))
                }
            }
            
            Spacer()
            
            Button (
                action: {},
                label: {
                    Image("Menu button")
                        .foregroundColor(.black)
                        .frame(width: 54, height: 54)
                        .padding(.trailing, 30)
                }
            )
        }
        .frame(width: UIScreen.main.bounds.size.width, height: 100)
        .background(
            RoundedRectangle(cornerRadius: 35)
                .foregroundColor(.white)
                .shadow(color: Color("White panel shadow"), radius: 20, x: 0, y: 20)
            )
        //.cornerRadius(35)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
            .padding()
            .background(Color("Background"))
            .previewLayout(.sizeThatFits)
    }
}
