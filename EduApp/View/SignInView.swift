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
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(Color("White").opacity(0.7))
            VStack {
                Text("Sign In")
                    .font(.custom("Poppins-Bold", size: 25))
                    .foregroundColor(Color("Black"))
                    .padding(.top, 20)
                    .padding()
                
                VStack(spacing: 15) {
                    Capsule()
                        .frame(width: UIScreen.main.bounds.size.width*0.8, height: 50)
                        .foregroundColor(Color("White"))
                        .shadow(color: Color("White panel shadow"), radius: 4, x: 0, y: 4)
                        .overlay(
                            HStack {
                                Image(systemName: "envelope")
                                    .foregroundColor(Color("Gray"))
                                
                                TextField("sample@gmail.com", text: $mailText)
                                    .font(.custom("Poppins-Regular", size: 10))
                                
                            }
                                .padding()
                    )
                    
                    Capsule()
                        .frame(width: UIScreen.main.bounds.size.width*0.8, height: 50)
                        .foregroundColor(Color("White"))
                        .shadow(color: Color("White panel shadow"), radius: 4, x: 0, y: 4)
                        .overlay(
                            HStack {
                                Image(systemName: "person")
                                    .foregroundColor(Color("Gray"))
                                
                                TextField("Abdulloh", text: $nameText)
                                    .font(.custom("Poppins-Regular", size: 10))
                                
                            }
                                .padding()
                        )
                    
                    Capsule()
                        .frame(width: UIScreen.main.bounds.size.width*0.8, height: 50)
                        .foregroundColor(Color("White"))
                        .shadow(color: Color("White panel shadow"), radius: 4, x: 0, y: 4)
                        .overlay(
                            HStack {
                                Image(systemName: "person")
                                    .foregroundColor(Color("Gray"))
                                
                                TextField("Bahromjonov", text: $surnameText)
                                    .font(.custom("Poppins-Regular", size: 10))
                                
                            }
                                .padding()
                        )
                    
                    Capsule()
                        .frame(width: UIScreen.main.bounds.size.width*0.8, height: 50)
                        .foregroundColor(Color("White"))
                        .shadow(color: Color("White panel shadow"), radius: 4, x: 0, y: 4)
                        .overlay(
                            HStack {
                                Image(systemName: "key")
                                    .foregroundColor(Color("Gray"))
                                
                                TextField("password", text: $password)
                                    .font(.custom("Poppins-Regular", size: 10))
                                
                            }
                                .padding()
                        )
                    Capsule()
                        .frame(width: UIScreen.main.bounds.size.width*0.8, height: 50)
                        .foregroundColor(Color("White"))
                        .shadow(color: Color("White panel shadow"), radius: 4, x: 0, y: 4)
                        .overlay(
                            HStack {
                                Text("Grade:")
                                    .foregroundColor(Color("Gray"))
                                
                                PickerTextField(data: ["1", "2", "3", "4", "5", "6", "7", "8", "9"], placeholder: "Grade", font: UIFont(name: "Poppins-Regular", size: 12)!, lastSelectedIndex: $lastSelectedIndex)
                                    .font(.system(.footnote))
                            }
                                .font(.custom("Poppins-Regular", size: 10))
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
            
        }
        .frame(width: UIScreen.main.bounds.size.width*0.9, height: 500)
        .fullScreenCover(isPresented: $showContentView) {
            ContentView()
        }
    }
}

struct SingInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            //.preferredColorScheme(.dark)
            .padding()
            .background(Color("Background"))
            .previewLayout(.sizeThatFits)
            
    }
}
