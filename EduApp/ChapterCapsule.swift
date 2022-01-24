//
//  ChapterCapsule.swift
//  EduApp
//
//  Created by Abdulloh Bahromjonov on 19/01/22.
//

import SwiftUI

struct ChapterCapsule: View {
    var body: some View {
        ZStack {
            Capsule()
                .foregroundColor(.white)
                .shadow(color: Color("White panel shadow"), radius: 4, x: 0, y: 4)
            HStack {
                Text("Chapter 1:")
                    .font(.custom("Poppins-Bold", size: 14))
                    .padding()
                Text("Equalation and Inequalations functions")
                    .font(.custom("Poppins-Bold", size: 14))
            }
            .frame(width: UIScreen.main.bounds.size.width*0.8, height: 40)
        }
        .frame(width: UIScreen.main.bounds.size.width*0.9, height: 65)
    }
}

struct ChapterCapsule_Previews: PreviewProvider {
    static var previews: some View {
        ChapterCapsule()
            .padding()
            .previewLayout(.sizeThatFits)
            .background(Color("Background"))
    }
}
