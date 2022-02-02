//
//  RegistrationTextField.swift
//  EduApp
//
//  Created by Zafarjon on 02/02/22.
//

import SwiftUI

struct RegistrationTextField: View {
    @Binding var text: String
    let image: String
    let titleKey: String
    
    var body: some View {
        Capsule()
            .frame(width: UIScreen.main.bounds.size.width*0.8, height: 50)
            .foregroundColor(Color("White"))
            .shadow(color: Color("White panel shadow"), radius: 4, x: 0, y: 4)
            .overlay(
                HStack {
                    Image(systemName: image)
                        .foregroundColor(Color("Gray"))
                    
                    TextField(titleKey, text: $text)
                        .font(.custom("Poppins-Regular", size: 10))
                }
                    .padding()
            )
    }
}

struct RegistrationTextField_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationTextField(text: .constant(""), image: "person", titleKey: "Name")
    }
}
