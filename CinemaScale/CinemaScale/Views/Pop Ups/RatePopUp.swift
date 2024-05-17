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
    
    var body: some View {
        // Formated rate
        let formatedRate: String = String(format: "%.1f", aspect.rate)
        
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
                            .foregroundColor(.white)
                            .bold()
                            .frame(width: 25, height: 25)
                    }
                    
                    // SLIDER
                    Slider(
                        value: $aspect.rate.animation(),
                        in: 0...5,
                        step: 0.5
                    )
                    .padding(.horizontal, 20)
                    .tint(.starYellow)
                    
                    HStack{
                        Text("Rate:")
                            .font(.header6)
                            .foregroundStyle(aspect.rate > 0 ? .white : .backGround)
                        Text("\(formatedRate)")
                            .font(.header6)
                            .foregroundStyle(aspect.rate > 0 ? .starYellow : .backGround)
                            .contentTransition(.numericText())
                    }
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

#Preview {
    RatePopUpView(isActive: .constant(true), aspect: .constant(Aspects(aspectName: "Aspect", icon: Image(systemName: "popcorn"))), aspectsList: .constant([]))
}
