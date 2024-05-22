//
//  AspectPopupView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 21/05/24.
//

import SwiftUI

struct AspectPopupView: View {
    @Binding var aspect: Aspects
    @Binding var showAspectPopup: Bool
    
    var body: some View {
        ZStack{
            
            // Popup background
            Color.backGround
                .ignoresSafeArea(.all)
                .opacity(0.8)
            
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
                    
                    // Subtitle
                    HStack{
                        Text(aspect.subtitle)
                            .font(.header6)
                            .foregroundColor(.white)
                    }.padding()
                    
                    // Text
                    HStack{
                        Text(aspect.text)
                            .font(.body1)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }.padding()
                }
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
        }
    }
    
    func close() {
        showAspectPopup = false
    }
}
