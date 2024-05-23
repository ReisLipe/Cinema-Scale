//
//  AspectPopupView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 21/05/24.
//

import SwiftUI

struct AspectPopupView: View {
    @Binding var isActive: Bool
    @Binding var aspect: Aspects

    var body: some View {
        ZStack{
            
            // Popup background
            Color.backGround
                .ignoresSafeArea(.all)
                .opacity(0.8)
                .onTapGesture {
                    close()
                }

            // Popup body
            ZStack{
                Color.backGround
                
                VStack{
                    
                    // Title
                    HStack{
                        Text(aspect.name)
                            .font(.header5)
                            .foregroundColor(.white)
                        
                        aspect.icon
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.red)
                            .bold()
                    }
                    .padding(.top)
                    
                    // Subtitle
                    HStack{
                        Text(aspect.subtitle)
                            .font(.subtitle)
                            .bold()
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    
                    // Text
                    ScrollView {
                        VStack{
                            ForEach(Array(aspect.text.keys), id:\.self){ key in
                                    // Sub aspect
                                    Text("\(key):")
                                        .font(.body1)
                                        .bold()
                                        .foregroundStyle(.white)
                                        .multilineTextAlignment(.leading)
                                        .padding()
                                    
                                    // Explanation
                                    Text(aspect.text[key] ?? "")
                                        .font(.body1)
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.leading)
                            }
                        }
                    }
                }.padding()
            }
            .frame(width: 344, height: 374)
            .cornerRadius(20)
            
            // X button
            .overlay{
                HStack{
                    Spacer()
                    VStack{
                        Button(action: {close()}, label: {
                            Image(systemName: "xmark")
                                .font(.header6)
                                .foregroundColor(.letterboxdOrange)
                        }).padding()
                        Spacer()
                    }
                }
            }
        }.opacity(isActive ? 1 : 0)
    }
    
    // Function to close the pop up window
    func close() {
        isActive = false
    }
}
