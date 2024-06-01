//
//  ItFactorPopUp.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 31/05/24.
//

import SwiftUI

struct ItFactorPopUp: View {
    @Binding var itFactor: Aspects
    @Binding var aspectsList: [Aspects]
    @Binding var isActive: Bool
    
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
                        Text(itFactor.name)
                            .font(.header5)
                            .foregroundStyle(.white)
                        
                        itFactor.icon
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                    }
                    
                    HStack(spacing: 16){
                        // Button Has
                        Button(
                            action: {
                                itFactor.rate = 5
                                close()
                            },
                            label: {
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
                        Button(
                            action: {
                                itFactor.rate = 0
                                close()
                            },
                            label: {
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
        .opacity(isActive ? 1 : 0)
    }
    
    // Function to close the pop up window
    func close() {
        isActive = false
        updateAspectsList()
    }
    
    // Function to update the list by inserting the aspect with a new value
    func updateAspectsList(){
        aspectsList = aspectsList.map({
            if $0.name == itFactor.name{
                itFactor
            } else {
                $0
            }
        })
    }
}

