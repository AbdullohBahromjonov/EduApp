//
//  SignInView.swift
//  EduApp
//
//  Created by Abdulloh on 29/01/22.
//

import SwiftUI

struct SignInView: View {
    @State var mailText = ""
    @State var nameText = ""
    @State var surnameText = ""
    @State var password = ""
    @State private var lastSelectedIndex: Int?
    @State var showContentView = false
    @State private var selectedLanguage: String = "Rus"
    @State var grades = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    @State private var selectedGrade = 1
    
    var languages = ["Rus", "Uz"]
    
    var body: some View {
        ZStack {
           
            
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(Color("White").opacity(0.7))
                .frame(width: UIScreen.main.bounds.size.width*0.9, height: 517)
            VStack {
                PickerView()
                    .padding(.top, 20)
                    .padding()
                
                VStack(spacing: 15) {
                    RegistrationTextField(text: $mailText, image: "envelope", titleKey: "Email")
                    
                    RegistrationTextField(text: $nameText, image: "person", titleKey: "Name")
                    
                    RegistrationTextField(text: $surnameText, image: "person", titleKey: "Surname")
                    
                    RegistrationTextField(text: $password, image: "key", titleKey: "Password")
                    
                    Capsule()
                        .frame(width: UIScreen.main.bounds.size.width*0.8, height: 50)
                        .foregroundColor(Color("White"))
                        .shadow(color: Color("White panel shadow"), radius: 4, x: 0, y: 4)
                        .overlay(
                            HStack {
                                Text("Grade:")
                                    .foregroundColor(Color("Gray"))
                                
                                Picker("Color Scheme", selection: $selectedGrade) {
                                    ForEach(grades, id: \.self) { grade in
                                        Text("\(grade)").tag(grade)
                                            
                                    }
                                }
                                .font(.custom("Poppins-Bold", size: 10))

                                Spacer()
                            }
                                
                                .padding()
                        )

                    
                    HStack {
                        Spacer()
                        
                        Button(
                            action: {
                                showContentView.toggle()
                                print(lastSelectedIndex!)
                            },
                            label: {
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .overlay(
                                        Image(systemName: "chevron.right")
                                            .font(.system(size: 20, weight: .bold))
                                            .foregroundColor(Color("White"))
                                    )
                            }
                        )
                            
                            .padding()
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.size.width*0.9, height: 500)
        }
        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        .edgesIgnoringSafeArea(.all)
        .background(
            RegistrationBackground(title: "Sign In")
        )
        
        .fullScreenCover(isPresented: $showContentView) {
            ContentView()
        }
        
    }
}

struct SingInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            //.preferredColorScheme(.dark)
    }
}
