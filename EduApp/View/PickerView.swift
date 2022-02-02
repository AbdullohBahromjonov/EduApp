//
//  PickerView.swift
//  EduApp
//
//  Created by Zafarjon on 02/02/22.
//

import SwiftUI

struct PickerView: View {
    @State var currentTab = "RUS"
    @Namespace var animation
    
    var body: some View {
        HStack {
            Text("RUS")
                .fontWeight(.bold)
                .padding(.vertical, 12)
                .padding(.horizontal, 25)
                .background(
                    ZStack {
                        if currentTab == "RUS" {
                            Color.blue
                                .cornerRadius(10)
                                .shadow(color: Color.blue.opacity(0.5), radius: 2, x: 0, y: 2)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                )
                .foregroundColor(currentTab == "RUS" ? Color("White"): Color("Black"))
                .onTapGesture {
                    withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
                        currentTab = "RUS"
                    }
                }
            
            Text("UZB")
                .fontWeight(.bold)
                .padding(.vertical, 12)
                .padding(.horizontal, 25)
                .background(
                    ZStack {
                        if currentTab == "UZB" {
                            Color.blue
                                .cornerRadius(10)
                                .shadow(color: Color.blue.opacity(0.5), radius: 2, x: 0, y: 2)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                )
                .foregroundColor(currentTab == "UZB" ? Color("White"): Color("Black"))
                .onTapGesture {
                    withAnimation(.interactiveSpring(response: 0.3, dampingFraction: 0.6, blendDuration: 0.6)) {
                        currentTab = "UZB"
                    }
                }
        }
        .padding(.vertical, 7)
        .padding(.horizontal, 10)
        .background(Color("White"))
        .cornerRadius(10)
        .shadow(color: Color("White panel shadow"), radius: 4, x: 0, y: 4)
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
            .padding()
            .previewLayout(.sizeThatFits)
            .background(Color("Background"))
    }
}
