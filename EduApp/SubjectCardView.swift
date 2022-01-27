//
//  SubjectCardView.swift
//  EduApp
//
//  Created by Abdulloh Bahromjonov on 12/01/22.
//

import SwiftUI

struct SubjectCardView: View {
    @Binding var subject: SubjectsModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 32)
                .foregroundColor(Color("White"))
                .shadow(color: Color("White panel shadow"), radius: 4, x: 0, y: 4)
            
            VStack {
                Image(subject.image)
                
                Text(subject.name)
                    .font(.custom("Poppins-SemiBold", size: 14))
                    .foregroundColor(Color("Gray"))
                    .padding(.top, 6)
                
                Text("Grade: \(subject.grade)")
                    .font(.custom("Poppins-SemiBold", size: 11))
                    .foregroundColor(Color(red: 0.4588235294117647, green: 0.4588235294117647, blue: 0.4588235294117647))
            }
        }
        .frame(width: 144, height: 173)
    }
}

struct SubjectCardView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectCardView(subject: .constant(SubjectsModel(id: 1, image: "Math", name: "Mathmatics", grade: 4, color: "Red")))
            .padding()
            .previewLayout(.sizeThatFits)
            .background(Color("Background"))
    }
}
