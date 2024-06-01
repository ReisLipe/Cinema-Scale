//
//  ItFactorPopUp.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 31/05/24.
//

import SwiftUI

struct ItFactorPopUp: View {
    @Binding var isActive: Bool
    @Binding var itFactor: Bool?
    
    var body: some View {
        ZStack {
            
            // Popup backgorund
            Color(.backGround)
                .ignoresSafeArea(.all)
                .opacity(0.8)
                .onTapGesture {
                    close()
                }
            
            // Popup body
            ZStack{
                Color.backGround
                
                VStack(spacing: 32){
                    HStack{
                        Text("It Factor")
                            .font(.header5)
                            .foregroundStyle(.white)
                        
                        Image(systemName: "medal.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                    }
                    
                    HStack(spacing: 16){
                        // Button Has
                        Button(action: {self.itFactor = true}, label: {
                            ZStack{
                                Color.letterboxdGreen
                                Text("Has It")
                                    .font(.subtitle)
                                    .bold()
                                    .foregroundStyle(.white)
                            }
                            .frame(width: 132, height: 40)
                            .cornerRadius(15)
                        })
                        
                        // Button Hasn`t
                        Button(action: {self.itFactor = false}, label: {
                            ZStack{
                                Color.letterboxdOrange
                                Text("Doesn't Have It")
                                    .font(.subtitle)
                                    .bold()
                                    .foregroundStyle(.white)
                            }
                            .frame(width: 132, height: 40)
                            .cornerRadius(15)
                        })
                    }
                }
            }
            .frame(width: 344, height: 180)
            .cornerRadius(20)
        }
    }
    
    func close() {
        self.isActive = false
    }
}

#Preview {
    struct ItFactorPopUpPreviewContainer: View {
        @State private var isActive: Bool = true
        @State private var itFactor: Bool? = nil
        
        var body: some View {
            ItFactorPopUp(
                isActive: self.$isActive,
                itFactor: self.$itFactor
            )
        }
    }
    
    return ItFactorPopUpPreviewContainer()
}
