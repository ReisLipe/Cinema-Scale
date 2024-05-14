//
//  ResultPopUpView.swift
//  CinemaScale
//
//  Created by Joao Filipe Reis Justo da Silva on 11/05/24.
//

import SwiftUI

struct ResultPopUpView: View {
    @Binding var aspectsList: [Aspects]
    @Binding var close: Bool
    let result: Float
    
    var body: some View {
        let formatedResult: String = String(format: "%.1f", result)
        
        ZStack {
            Color(red: 32/255, green: 40/255, blue: 48/255)
            VStack{
                Text("Total Score: \(formatedResult)")
                    .font(.system(size: 35, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
                    .padding()
                // todo: need to move this text to the top of rectangle
                Spacer()
                HStack{
                    // reset button
                    Button(action: {
                        aspectsList = aspectsList.map { aspect in
                            Aspects(aspectName: aspect.aspectName)
                        }
                    }, label: {
                        RateButtonView(
                        title: "Reset",
                        color: Color.letterboxdOrange)
                    })
                    Button(action: {close = true}, label: {
                        RateButtonView(
                            title: "Close",
                            color: Color.letterboxdGreen)
                    })
                }.padding(.bottom, 64)
            }
        }.frame(width: 393, height: 228)
    }
}
