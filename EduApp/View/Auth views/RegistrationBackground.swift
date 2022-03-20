//
//  RegistrationBackground.swift
//  EduApp
//
//  Created by Zafarjon on 02/02/22.
//

import SwiftUI

struct RegistrationBackground: View {
    let title: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color("Light Blue"))
                .offset(x: -55, y: -350)
                .frame(width: 500, height: 500)
            
            Circle()
                .stroke(lineWidth: 2)
                .foregroundColor(.blue)
                .frame(width: 280, height: 280)
                .offset(x: 150, y: 350)
            Circle()
                .stroke(lineWidth: 2)
                .foregroundColor(Color("White"))
                .frame(width: 280, height: 280)
                .offset(x: 80, y: 250)
            
            VStack {
                Text(title)
                    .font(.custom("Poppins-Bold", size: 46))
                    .foregroundColor(Color("Black"))
                    .padding(.top, 52)
                
                Spacer()
            }
        }
        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        .edgesIgnoringSafeArea(.all)
        .background(
            Color("Background")
        )
    }
}

struct RegistrationBackground_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationBackground(title: "Sign In")
            
    }
}
