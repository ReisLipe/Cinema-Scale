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
            Color(.backGround)
            VStack{
                Text("Total Score: \(formatedResult)")
                    .font(.header3)
                    .foregroundStyle(.white)
                    .padding()
                // todo: need to move this text to the top of rectangle
                Spacer()
                HStack{
                    // reset button
                    Button(action: {
                        aspectsList = aspectsList.map { aspect in
                            Aspects(aspectName: aspect.name)
                        }
                    }, label: {
                        ResultButtonView(
                        title: "Reset",
                        color: Color.letterboxdOrange)
                    })
                    Button(action: {close = true}, label: {
                        ResultButtonView(
                            title: "Close",
                            color: Color.letterboxdGreen)
                    })
                }.padding(.bottom, 64)
            }
        }.frame(width: 393, height: 228)
    }
}
