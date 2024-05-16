//
//  ResultPopUpView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct ResultPopUpView: View {
    @Binding var isActive: Bool
    @Binding var aspectsList: [Aspects]
    @Binding var result: Float
    
    var body: some View {
        let formatedResult: String = String(format: "%.1f", result)
        
        ZStack {
            // Popup background
            Color(.backGround)
            
            // Popup body
            VStack{
                
                // Popup title and total score
                Text("Total Score: \(formatedResult)")
                    .font(.header3)
                    .foregroundStyle(.white)
                    .padding()
                
                Spacer()
                
                // Popup buttons
                HStack{
                    
                    // Reset button
                    Button(
                        action: {
                            aspectsList = aspectsList.map{ aspect in
                                Aspects(aspectName: aspect.name, icon: aspect.icon)
                            }
                            result = 0
                            isActive = false
                        },
                        label: {
                            ResultButtonView(
                                    title: "Reset",
                                    color: Color.letterboxdOrange)
                    })
                    
                    // Close button
                    Button(
                        action: {
                            isActive = false
                        },
                        label: {
                            ResultButtonView(
                                title: "Close",
                                color: Color.letterboxdGreen)
                        })
                }.padding(.bottom, 64)
            }
        }.frame(width: .infinity, height: 228)
    }
}
