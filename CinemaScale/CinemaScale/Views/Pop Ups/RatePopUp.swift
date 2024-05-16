//
//  RatePopUp.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct RatePopUpView: View {
    @Binding var isActive: Bool
    @Binding var aspect: Aspects
    @Binding var aspectsList: [Aspects]
    // let icon: Image
    // Implement later
    
    
    var body: some View {
        ZStack {
            
            // Popup backgorund
            Color(.backGround)
                .ignoresSafeArea(.all)
                .opacity(0.8)
                .onTapGesture {
                    close()
                    updateAspectsList()
                }
            
            // Popup body
            ZStack{
                
                // Popup body color
                Color(.backGround)
                
                // Popup content
                VStack{
                    HStack{
                        Text("\(aspect.name)")
                            .font(.header5)
                            .foregroundStyle(.white)
                        
                        aspect.icon
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    
                    TextField("\(aspect.rate)", value: $aspect.rate, format: .number)
                        .frame(width: 80, height: 44)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.starYellow)
                        .background(.aspect)
                        .cornerRadius(20)
                        .font(.header6)
                }
            }
            .frame(width: 344, height: 160)
            .cornerRadius(20)
            .overlay {
                HStack {
                    Spacer()
                    VStack{
                        Button (
                            action: {
                                close()
                                updateAspectsList()
                            },
                            label: {
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

    // Function to close the pop up window
    func close() {
        isActive = false
    }
    
    // Function to update the list by inserting the aspect with a new value
    func updateAspectsList(){
        aspectsList = aspectsList.map({
            if $0.name == aspect.name{
                aspect
            } else {
                $0
            }
        })
    }
}
